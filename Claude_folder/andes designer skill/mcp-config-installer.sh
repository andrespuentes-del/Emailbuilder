#!/bin/bash
set -euo pipefail

# =============================================================================
# DEPENDENCIES
# - bash (macOS default)
# - Homebrew (for automatic jq install when missing)
# - jq (installed or auto-installed via brew)
# - python3 (3.10–3.13) — required for Codex TOML parsing
# - pip (bundled with python3)
# - mcp-remote-proxy (auto-installed if missing from https://pypi.artifacts.furycloud.io)
# - claude CLI (only for Claude Code flow)
# =============================================================================

VERSION="1.0.0"

LOG_TAG="mcp-config-installer"

log() {
    local level="$1"
    local message="$2"
    local timestamp
    timestamp=$(date "+%H:%M:%S")
    echo "[$LOG_TAG] [$timestamp] [$level] $message"
    logger -t "$LOG_TAG" "[$level] $message" 2>/dev/null || true
}

log_info()   { log "INFO" "$1"; }
log_ok()     { log "OK" "$1"; }
log_error()  { log "ERROR" "$1"; }
log_warn()   { log "WARN" "$1"; }
log_report() { log "REPORT" "$1"; }

SUPPORTED_TOOLS=("cursor" "windsurf" "claude" "codex" "vscode" "copilot")

readonly EXIT_OK=0
readonly EXIT_PARTIAL_FAIL=3

if [[ $EUID -eq 0 ]]; then
    CURRENT_USER=$(stat -f "%Su" /dev/console 2>/dev/null || whoami)
    RESOLVED_HOME=$(eval echo ~"$CURRENT_USER" 2>/dev/null || echo "")
    if [[ -n "${HOME:-}" && "$HOME" != "$RESOLVED_HOME" && -d "$HOME" ]]; then
        USER_HOME="$HOME"
    else
        USER_HOME="${RESOLVED_HOME:-$HOME}"
    fi
else
    CURRENT_USER=$(whoami)
    USER_HOME="$HOME"
fi

run_privileged() {
    if [[ $EUID -eq 0 ]]; then "$@"; else sudo "$@"; fi
}

print_help() {
    cat <<EOF
MCP Config Installer — installs default MCP servers into IDE configurations
Usage:
  $(basename "$0") [ia_tool]
Arguments:
  ia_tool    One of: ${SUPPORTED_TOOLS[*]}
             When omitted, all supported IDEs will be configured sequentially.
Options:
  -h, --help    Show this help and exit
Example:
  $(basename "$0") claude
EOF
}

if [[ ${1:-} == "--help" || ${1:-} == "-h" ]]; then
    print_help
    exit 0
fi

DEFAULT_MCPS_JSON=$(cat <<'DEFAULT_MCPS_EOF'
{
  "mcpServers": {
    "genai_code_review": {
      "command": "mcp-remote-proxy",
      "args": [
        "https://genai-code-review-mcp.melioffice.com/mcp",
        "--transport",
        "http"
      ]
    },
    "ApplicationSecurityMCP": {
      "command": "mcp-remote-proxy",
      "args": [
        "https://codeguard-mcp.melioffice.com/mcp",
        "--transport",
        "http"
      ]
    },
    "backend": {
      "command": "mcp-remote-proxy",
      "args": [
        "https://mcp.melioffice.com/namespaces/backend/mcp",
        "--transport",
        "http"
      ]
    }
  }
}
DEFAULT_MCPS_EOF
)

MCPS_ADDED=()
MCPS_SKIPPED=()
CONFIG_FILE_PATH=""

RUN_ALL=false
IA_TOOL=""

if [[ -z "${1:-}" ]]; then
    RUN_ALL=true
else
    IA_TOOL="$1"
fi

validate_ia_tool() {
    local tool="$1"
    for supported in "${SUPPORTED_TOOLS[@]}"; do
        if [[ "$tool" == "$supported" ]]; then return 0; fi
    done
    log_error "Unsupported IA tool '$tool'. Supported: ${SUPPORTED_TOOLS[*]}"
    exit 1
}

if [[ "$RUN_ALL" == false ]]; then validate_ia_tool "$IA_TOOL"; fi

normalize_url() { echo "$1" | sed 's:/*$::'; }

safe_jq_write() {
    local target_file="$1"; shift
    local tmp_file="${target_file}.tmp.$$"
    if jq "$@" > "$tmp_file"; then
        if jq empty "$tmp_file" 2>/dev/null; then
            mv "$tmp_file" "$target_file"; return 0
        else
            log_error "jq produced invalid JSON for $target_file — original preserved"
            rm -f "$tmp_file"; return 1
        fi
    else
        log_error "jq command failed for $target_file — original preserved"
        rm -f "$tmp_file"; return 1
    fi
}

strip_bom() {
    local file="$1"
    if [[ -f "$file" ]] && [[ -s "$file" ]]; then
        local first_bytes
        first_bytes=$(head -c 3 "$file" | xxd -p 2>/dev/null || true)
        if [[ "$first_bytes" == "efbbbf" ]]; then
            tail -c +4 "$file" > "${file}.nobom.$$" && mv "${file}.nobom.$$" "$file"
            log_warn "Stripped UTF-8 BOM from $file"
        fi
    fi
}

check_writable() {
    local file="$1"
    if [[ -f "$file" ]]; then
        if [[ ! -w "$file" ]]; then log_error "Config file is not writable: $file"; exit 1; fi
    else
        local dir; dir=$(dirname "$file")
        if [[ -d "$dir" ]] && [[ ! -w "$dir" ]]; then
            log_error "Directory is not writable: $dir"; exit 1
        fi
    fi
}

ensure_jq() {
    if command -v jq &>/dev/null; then return; fi
    log_warn "jq is required but not installed. Attempting auto-install via Homebrew..."
    if command -v brew &>/dev/null; then
        if brew install jq 2>&1 | while IFS= read -r line; do log_info "$line"; done; then
            log_ok "Successfully installed jq"; return
        fi
    fi
    log_error "Failed to install jq automatically. Install with: brew install jq"
    exit 1
}

ensure_python3() {
    if ! command -v python3 &>/dev/null; then
        log_error "python3 is required for Codex CLI flow but not installed"; exit 1
    fi
}

MCP_REMOTE_PROXY_PATH="mcp-remote-proxy"

ensure_mcp_remote_proxy() {
    if command -v mcp-remote-proxy &>/dev/null; then
        log_info "mcp-remote-proxy already installed"; return
    fi
    log_info "mcp-remote-proxy not found in PATH. Installing via pipx..."
    if ! command -v pipx &>/dev/null; then
        if command -v brew &>/dev/null; then
            log_info "Installing pipx via Homebrew..."
            if brew install pipx 2>&1 | while IFS= read -r line; do log_info "$line"; done; then
                pipx ensurepath 2>/dev/null || true
                log_ok "Successfully installed pipx"
            else
                log_error "Failed to install pipx via Homebrew"; return 1
            fi
        else
            log_error "pipx is not installed and Homebrew is not available"; return 1
        fi
    fi
    if pipx install mcp-remote-proxy \
        --pip-args="--index-url https://pypi.artifacts.furycloud.io/simple/" 2>&1 | while IFS= read -r line; do log_info "$line"; done; then
        pipx ensurepath 2>/dev/null || true
        log_ok "Successfully installed mcp-remote-proxy via pipx"
    else
        log_error "Failed to install mcp-remote-proxy via pipx"; return 1
    fi
    if command -v mcp-remote-proxy &>/dev/null; then
        log_ok "mcp-remote-proxy is available in PATH"
    else
        log_warn "mcp-remote-proxy installed but not yet in PATH. Restart your shell or run: pipx ensurepath"
    fi
}

get_existing_urls_json() {
    local config_file="$1"
    jq -r '
        .mcpServers // {} | to_entries[] |
        if .value.url then .value.url
        elif ((.value.command == "mcp-remote-proxy") or (.value.command | test("mcp-remote-proxy$"))) and (.value.args | length > 0) then .value.args[0]
        else empty
        end
    ' "$config_file" | while IFS= read -r url; do normalize_url "$url"; done
}

url_exists_in_set() {
    local needle="$1"; local haystack="$2"
    local normalized_needle; normalized_needle=$(normalize_url "$needle")
    echo "$haystack" | grep -qxF "$normalized_needle"
}

get_default_url() {
    local key="$1"
    local url
    url=$(echo "$DEFAULT_MCPS_JSON" | jq -r ".mcpServers[\"$key\"].url // empty")
    if [[ -n "$url" ]]; then echo "$url"; return; fi
    url=$(echo "$DEFAULT_MCPS_JSON" | jq -r ".mcpServers[\"$key\"].args[0] // empty")
    echo "$url"
}

strip_jsonc_comments() {
    local file="$1"
    sed -e 's|\([^:]\)//.*$|\1|g' -e 's|/\*.*\*/||g' "$file"
}

install_vscode() {
    ensure_jq; ensure_mcp_remote_proxy
    local vscode_dir="${USER_HOME}/Library/Application Support/Code/User"
    local config_file="${vscode_dir}/mcp.json"
    if [[ ! -d "${USER_HOME}/Library/Application Support/Code" ]] && ! command -v code &>/dev/null; then
        log_info "Skipping vscode: VS Code not detected"; return 0
    fi
    CONFIG_FILE_PATH="$config_file"; mkdir -p "$vscode_dir"
    if [[ -f "$config_file" ]]; then cp "$config_file" "${config_file}.backup"; fi
    if [[ ! -f "$config_file" ]] || [[ ! -s "$config_file" ]]; then echo '{"servers":{}}' > "$config_file"; fi
    strip_bom "$config_file"
    local json_content; json_content=$(strip_jsonc_comments "$config_file")
    if ! echo "$json_content" | jq empty &>/dev/null; then
        log_error "Invalid JSON in VS Code settings.json"; return 1
    fi
    if ! echo "$json_content" | jq -e '.servers' &>/dev/null; then
        json_content=$(echo "$json_content" | jq '. + {"servers":{}}')
    fi
    local existing_urls
    existing_urls=$(echo "$json_content" | jq -r '
        .servers // {} | to_entries[] |
        if ((.value.command == "mcp-remote-proxy") or (.value.command | test("mcp-remote-proxy$"))) and (.value.args | length > 0) then .value.args[0]
        else empty end
    ' | while IFS= read -r url; do normalize_url "$url"; done || true)
    local keys; keys=$(echo "$DEFAULT_MCPS_JSON" | jq -r '.mcpServers | keys[]')
    local modified=false
    for key in $keys; do
        local url; url=$(get_default_url "$key")
        if [[ -z "$url" ]]; then continue; fi
        if url_exists_in_set "$url" "$existing_urls"; then
            log_info "Already present, skipping: $key"; MCPS_SKIPPED+=("$key"); continue
        fi
        json_content=$(echo "$json_content" | jq --arg k "$key" --arg cmd "$MCP_REMOTE_PROXY_PATH" --arg u "$url" \
            '.servers[$k] = {"command": $cmd, "args": [$u, "--transport", "http"]}')
        log_ok "Added: $key ($url)"; MCPS_ADDED+=("$key"); modified=true
    done
    if [[ "$modified" == true ]]; then
        echo "$json_content" | jq --indent 2 '.' > "${config_file}.tmp.$$" && mv "${config_file}.tmp.$$" "$config_file"
    fi
    chown -R "$CURRENT_USER" "${USER_HOME}/Library/Application Support/Code" 2>/dev/null || true
}

install_cursor() {
    ensure_jq; ensure_mcp_remote_proxy
    local base_path="$USER_HOME/.cursor"; local config_file="$base_path/mcp.json"
    if [[ ! -f "$config_file" ]]; then
        for candidate in "$base_path/mcp_config.json" "$base_path/mcp/config.json" "$base_path/mcp/servers.json"; do
            if [[ -f "$candidate" ]]; then config_file="$candidate"; break; fi
        done
    fi
    CONFIG_FILE_PATH="$config_file"; check_writable "$config_file"
    if [[ ! -f "$config_file" ]] || [[ ! -s "$config_file" ]] || ! jq empty "$config_file" &>/dev/null; then
        mkdir -p "$(dirname "$config_file")"; echo '{"mcpServers":{}}' > "$config_file"
    fi
    strip_bom "$config_file"
    if ! jq -e '.mcpServers' "$config_file" &>/dev/null; then
        safe_jq_write "$config_file" '. + {"mcpServers":{}}' "$config_file"
    fi
    local existing_urls; existing_urls=$(get_existing_urls_json "$config_file" || true)
    local keys; keys=$(echo "$DEFAULT_MCPS_JSON" | jq -r '.mcpServers | keys[]')
    for key in $keys; do
        local url; url=$(get_default_url "$key")
        if [[ -z "$url" ]]; then continue; fi
        if url_exists_in_set "$url" "$existing_urls"; then
            log_info "Already present, skipping: $key"; MCPS_SKIPPED+=("$key"); continue
        fi
        local has_url; has_url=$(echo "$DEFAULT_MCPS_JSON" | jq -r ".mcpServers[\"$key\"].url // empty")
        if [[ -n "$has_url" ]]; then
            safe_jq_write "$config_file" --arg k "$key" --arg u "$has_url" '.mcpServers[$k] = {"url": $u}' "$config_file"
        else
            safe_jq_write "$config_file" --arg k "$key" --arg cmd "$MCP_REMOTE_PROXY_PATH" --arg u "$url" \
                '.mcpServers[$k] = ({} | .command = $cmd | .args = [$u, "--transport", "http"])' "$config_file"
        fi
        log_ok "Added: $key ($url)"; MCPS_ADDED+=("$key")
    done
    safe_jq_write "$config_file" --indent 2 '.' "$config_file"
    chown -R "$CURRENT_USER" "$USER_HOME/.cursor" 2>/dev/null || true
}

install_windsurf() {
    ensure_jq; ensure_mcp_remote_proxy
    local base_path="$USER_HOME/.codeium/windsurf"; local config_file="$base_path/mcp_config.json"
    if [[ ! -f "$config_file" ]]; then
        for candidate in "$base_path/mcp.json" "$base_path/mcp/config.json" "$base_path/mcp/servers.json"; do
            if [[ -f "$candidate" ]]; then config_file="$candidate"; break; fi
        done
    fi
    CONFIG_FILE_PATH="$config_file"; check_writable "$config_file"
    if [[ ! -f "$config_file" ]] || [[ ! -s "$config_file" ]] || ! jq empty "$config_file" &>/dev/null; then
        mkdir -p "$(dirname "$config_file")"; echo '{"mcpServers":{}}' > "$config_file"
    fi
    strip_bom "$config_file"
    if ! jq -e '.mcpServers' "$config_file" &>/dev/null; then
        safe_jq_write "$config_file" '. + {"mcpServers":{}}' "$config_file"
    fi
    local existing_urls; existing_urls=$(get_existing_urls_json "$config_file" || true)
    local keys; keys=$(echo "$DEFAULT_MCPS_JSON" | jq -r '.mcpServers | keys[]')
    for key in $keys; do
        local url; url=$(get_default_url "$key")
        if [[ -z "$url" ]]; then continue; fi
        if url_exists_in_set "$url" "$existing_urls"; then
            log_info "Already present, skipping: $key"; MCPS_SKIPPED+=("$key"); continue
        fi
        safe_jq_write "$config_file" --arg k "$key" --arg cmd "$MCP_REMOTE_PROXY_PATH" --arg u "$url" \
            '.mcpServers[$k] = ({} | .command = $cmd | .args = [$u, "--transport", "http"])' "$config_file"
        log_ok "Added: $key ($url)"; MCPS_ADDED+=("$key")
    done
    safe_jq_write "$config_file" --indent 2 '.' "$config_file"
    chown -R "$CURRENT_USER" "$USER_HOME/.codeium" 2>/dev/null || true
    local codeium_config="$USER_HOME/.codeium/mcp_config.json"
    if [[ -f "$codeium_config" ]]; then
        strip_bom "$codeium_config"
        local merged; merged=$(jq -s '.[0] as $base | .[1] as $new |
            $base | .mcpServers = (($base.mcpServers // {}) + ($new.mcpServers // {}))' "$codeium_config" "$config_file")
        echo "$merged" | jq --indent 2 '.' > "${codeium_config}.tmp.$$" && mv "${codeium_config}.tmp.$$" "$codeium_config"
    else
        mkdir -p "$(dirname "$codeium_config")"; cp "$config_file" "$codeium_config"
    fi
}

install_copilot() {
    ensure_jq; ensure_mcp_remote_proxy
    local base_path="$USER_HOME/.copilot"; local config_file="$base_path/mcp-config.json"
    if [[ ! -f "$config_file" ]]; then
        for candidate in "$base_path/mcp.json" "$base_path/mcp_config.json"; do
            if [[ -f "$candidate" ]]; then config_file="$candidate"; break; fi
        done
    fi
    CONFIG_FILE_PATH="$config_file"; check_writable "$config_file"
    if [[ ! -f "$config_file" ]] || [[ ! -s "$config_file" ]] || ! jq empty "$config_file" &>/dev/null; then
        mkdir -p "$(dirname "$config_file")"; echo '{"mcpServers":{}}' > "$config_file"
    fi
    strip_bom "$config_file"
    if ! jq -e '.mcpServers' "$config_file" &>/dev/null; then
        safe_jq_write "$config_file" '. + {"mcpServers":{}}' "$config_file"
    fi
    local existing_urls; existing_urls=$(get_existing_urls_json "$config_file" || true)
    local keys; keys=$(echo "$DEFAULT_MCPS_JSON" | jq -r '.mcpServers | keys[]')
    for key in $keys; do
        local url; url=$(get_default_url "$key")
        if [[ -z "$url" ]]; then continue; fi
        if url_exists_in_set "$url" "$existing_urls"; then
            log_info "Already present, skipping: $key"; MCPS_SKIPPED+=("$key"); continue
        fi
        local has_url; has_url=$(echo "$DEFAULT_MCPS_JSON" | jq -r ".mcpServers[\"$key\"].url // empty")
        if [[ -n "$has_url" ]]; then
            safe_jq_write "$config_file" --arg k "$key" --arg u "$has_url" \
                '.mcpServers[$k] = {"type": "http", "url": $u}' "$config_file"
        else
            safe_jq_write "$config_file" --arg k "$key" --arg cmd "$MCP_REMOTE_PROXY_PATH" --arg u "$url" \
                '.mcpServers[$k] = {"type": "stdio", "command": $cmd, "tools": ["*"], "args": [$u, "--transport", "http"], "env": {}}' "$config_file"
        fi
        log_ok "Added: $key ($url)"; MCPS_ADDED+=("$key")
    done
    safe_jq_write "$config_file" --indent 2 '.' "$config_file"
    chown -R "$CURRENT_USER" "$USER_HOME/.copilot" 2>/dev/null || true
    local jetbrains_config="$USER_HOME/.config/github-copilot/intellij/mcp.json"
    local jetbrains_dir; jetbrains_dir=$(dirname "$jetbrains_config"); mkdir -p "$jetbrains_dir"
    local jb_json='{"servers":{}}'
    local jb_keys; jb_keys=$(echo "$DEFAULT_MCPS_JSON" | jq -r '.mcpServers | keys[]')
    for jb_key in $jb_keys; do
        local jb_url; jb_url=$(get_default_url "$jb_key"); [[ -z "$jb_url" ]] && continue
        jb_json=$(echo "$jb_json" | jq --arg k "$jb_key" --arg cmd "$MCP_REMOTE_PROXY_PATH" --arg u "$jb_url" \
            '.servers[$k] = {"command": $cmd, "args": [$u, "--transport", "http"]}')
    done
    if [[ -f "$jetbrains_config" ]]; then
        strip_bom "$jetbrains_config"
        if jq empty "$jetbrains_config" &>/dev/null; then
            local jb_merged; jb_merged=$(jq -s '.[0] as $base | .[1] as $new |
                $base | .servers = (($base.servers // {}) + ($new.servers // {}))' "$jetbrains_config" <(echo "$jb_json"))
            echo "$jb_merged" | jq --indent 2 '.' > "${jetbrains_config}.tmp.$$" && mv "${jetbrains_config}.tmp.$$" "$jetbrains_config"
        else
            echo "$jb_json" | jq --indent 2 '.' > "$jetbrains_config"
        fi
    else
        echo "$jb_json" | jq --indent 2 '.' > "$jetbrains_config"
    fi
    chown -R "$CURRENT_USER" "$USER_HOME/.config/github-copilot" 2>/dev/null || true
}

install_claude() {
    ensure_jq; ensure_mcp_remote_proxy
    local config_file="$USER_HOME/.claude.json"
    CONFIG_FILE_PATH="$config_file"; check_writable "$config_file"
    if [[ ! -f "$config_file" ]] || [[ ! -s "$config_file" ]] || ! jq empty "$config_file" &>/dev/null; then
        echo '{"mcpServers":{}}' > "$config_file"
    fi
    strip_bom "$config_file"
    if ! jq -e '.mcpServers' "$config_file" &>/dev/null; then
        safe_jq_write "$config_file" '. + {"mcpServers":{}}' "$config_file"
    fi
    local existing_urls
    existing_urls=$(jq -r '
        .mcpServers // {} | to_entries[] |
        if .value.url then .value.url
        elif ((.value.command == "mcp-remote-proxy") or (.value.command | test("mcp-remote-proxy$"))) and (.value.args | length > 0) then .value.args[0]
        else empty end
    ' "$config_file" | while IFS= read -r url; do normalize_url "$url"; done || true)
    local keys; keys=$(echo "$DEFAULT_MCPS_JSON" | jq -r '.mcpServers | keys[]')
    for key in $keys; do
        local url; url=$(get_default_url "$key")
        if [[ -z "$url" ]]; then continue; fi
        if url_exists_in_set "$url" "$existing_urls"; then
            log_info "Already present, skipping: $key"; MCPS_SKIPPED+=("$key"); continue
        fi
        local has_url; has_url=$(echo "$DEFAULT_MCPS_JSON" | jq -r ".mcpServers[\"$key\"].url // empty")
        if [[ -n "$has_url" ]]; then
            safe_jq_write "$config_file" --arg k "$key" --arg u "$has_url" \
                '.mcpServers[$k] = {"type": "http", "url": $u}' "$config_file"
        else
            safe_jq_write "$config_file" --arg k "$key" --arg cmd "$MCP_REMOTE_PROXY_PATH" --arg u "$url" \
                '.mcpServers[$k] = {"type": "stdio", "command": $cmd, "args": [$u, "--transport", "http"]}' "$config_file"
        fi
        log_ok "Added: $key ($url)"; MCPS_ADDED+=("$key")
    done
    safe_jq_write "$config_file" --indent 2 '.' "$config_file"
    chown "$CURRENT_USER" "$config_file" 2>/dev/null || true
}

install_codex() {
    ensure_python3; ensure_mcp_remote_proxy
    local base_path="$USER_HOME/.codex"; local config_file="$base_path/config.toml"
    CONFIG_FILE_PATH="$config_file"
    if [[ ! -f "$config_file" ]]; then mkdir -p "$base_path"; printf '[mcp_servers]\n' > "$config_file"; fi
    if ! grep -q '^\[mcp_servers\]' "$config_file" 2>/dev/null; then printf '\n[mcp_servers]\n' >> "$config_file"; fi
    local existing_urls
    existing_urls=$(MCP_CONFIG_FILE="$config_file" python3 -c "
import sys, os
config_path = os.environ.get('MCP_CONFIG_FILE', '')
if not config_path: sys.exit(0)
try:
    import tomllib
except ImportError:
    try: import tomli as tomllib
    except ImportError:
        import re
        with open(config_path, 'r') as f: content = f.read()
        for m in re.finditer(r'args\s*=\s*\[\s*\"(https?://[^\"]+)\"', content):
            print(m.group(1).rstrip('/'))
        sys.exit(0)
try:
    with open(config_path, 'rb') as f: config = tomllib.load(f)
except Exception: sys.exit(0)
servers = config.get('mcp_servers', {})
for name, entry in servers.items():
    if isinstance(entry, dict):
        args = entry.get('args', [])
        if args and isinstance(args, list): print(args[0].rstrip('/'))
" 2>/dev/null || true)
    local keys; keys=$(echo "$DEFAULT_MCPS_JSON" | jq -r '.mcpServers | keys[]')
    for key in $keys; do
        local url; url=$(get_default_url "$key")
        if [[ -z "$url" ]]; then continue; fi
        if url_exists_in_set "$url" "$existing_urls"; then
            log_info "Already present, skipping: $key"; MCPS_SKIPPED+=("$key"); continue
        fi
        local toml_key; toml_key=$(echo "$key" | tr '-' '_' | tr ' ' '_')
        printf '\n[mcp_servers.%s]\ncommand = "%s"\nargs = ["%s", "--transport", "http"]\n' \
            "$toml_key" "$MCP_REMOTE_PROXY_PATH" "$url" >> "$config_file"
        log_ok "Added: $toml_key ($url)"; MCPS_ADDED+=("$key")
    done
}

run_install_for() {
    local tool="$1"; MCPS_ADDED=(); MCPS_SKIPPED=(); CONFIG_FILE_PATH=""
    log_info "Starting MCP config installation for $tool"
    set +e
    case "$tool" in
        cursor)   install_cursor   ;;
        windsurf) install_windsurf ;;
        claude)   install_claude   ;;
        codex)    install_codex    ;;
        vscode)   install_vscode   ;;
        copilot)  install_copilot  ;;
        *) log_error "Unsupported IA tool '$tool'"; set -e; return 1 ;;
    esac
    local status=$?; set -e
    log_report "----------------------------------------"
    log_report "IDE: $tool | Config: ${CONFIG_FILE_PATH:-unknown}"
    if [[ ${#MCPS_ADDED[@]} -gt 0 ]]; then
        log_report "MCPs added (${#MCPS_ADDED[@]}):"; for name in "${MCPS_ADDED[@]}"; do log_report "  + $name"; done
    else log_report "MCPs added: none (all already present)"; fi
    if [[ ${#MCPS_SKIPPED[@]} -gt 0 ]]; then
        log_report "MCPs skipped (${#MCPS_SKIPPED[@]}):"; for name in "${MCPS_SKIPPED[@]}"; do log_report "  - $name"; done
    fi
    log_report "----------------------------------------"
    if [[ $status -eq 0 ]]; then log_ok "Done for $tool"; else log_error "Failed for $tool"; fi
    return $status
}

overall_status=$EXIT_OK
if [[ "$RUN_ALL" == true ]]; then
    for tool in "${SUPPORTED_TOOLS[@]}"; do
        if ! run_install_for "$tool"; then overall_status=$EXIT_PARTIAL_FAIL; fi
    done
else
    if ! run_install_for "$IA_TOOL"; then overall_status=$EXIT_PARTIAL_FAIL; fi
fi

VERSION_LOG_DIR="${USER_HOME}/agentic/scripts"
VERSION_LOG_FILE="${VERSION_LOG_DIR}/mdm-mcp-config-installer-version.log"
mkdir -p "$VERSION_LOG_DIR"
echo "${VERSION}" > "$VERSION_LOG_FILE"
chown "$CURRENT_USER" "$VERSION_LOG_FILE" 2>/dev/null || true
log_info "Version log written: $VERSION_LOG_FILE"

exit $overall_status
