# Andes Designer — Instalación y Actualización

> **Para Claude:** cuando alguien te pida leer este archivo, ejecuta el flujo completo de forma autónoma siguiendo exactamente este orden. No saltees fases. No preguntes qué camino tomar — el diagnóstico de la Fase 1 te lo indica. Informa el progreso de cada fase. Solo detente si necesitas confirmación del usuario (ej: instalación del plugin). Al finalizar, muestra siempre el reporte de la Fase 6.

---

## FASE 1 — Diagnóstico del estado actual

Antes de hacer cualquier cambio, ejecuta **todos** estos checks y registra los resultados. No modifiques nada todavía.

> Detecta la ubicación real de esta carpeta como `SOURCE_DIR` (la carpeta donde está este README) antes de ejecutar cualquier comando.

### 1.1 — Versión instalada vs versión disponible

```bash
# Versión disponible (archivo fuente, en la misma carpeta que este README)
grep "^### v" "$SOURCE_DIR/andes-designer.md" | head -1

# Versión instalada (en destino ~/.claude/commands/)
grep "^### v" ~/.claude/commands/andes-designer.md 2>/dev/null | head -1 || echo "NO_INSTALADO"
```

### 1.2 — Archivos de skill

```bash
ls ~/.claude/commands/andes-designer.md 2>/dev/null    || echo "FALTANTE: andes-designer.md"
ls ~/.claude/andes-x-index.md 2>/dev/null              || echo "FALTANTE: andes-x-index.md"
ls ~/.claude/andes-x-catalog.md 2>/dev/null            || echo "FALTANTE: andes-x-catalog.md"
ls ~/.claude/andes-x-foundations.md 2>/dev/null        || echo "FALTANTE: andes-x-foundations.md"
ls ~/.claude/andes-legacy-index.md 2>/dev/null         || echo "FALTANTE: andes-legacy-index.md"
ls ~/.claude/andes-legacy-catalog.md 2>/dev/null       || echo "FALTANTE: andes-legacy-catalog.md"
```

### 1.3 — MCPs de Figma

```bash
# Detectar TODOS los MCPs que contengan "figma" en cualquier archivo de configuración
echo "--- ~/.claude/settings.json ---"
grep -i "figma" ~/.claude/settings.json 2>/dev/null || echo "ninguno"

echo "--- ~/.claude/settings.local.json ---"
grep -i "figma" ~/.claude/settings.local.json 2>/dev/null || echo "ninguno"

echo "--- ~/.claude.json (global) ---"
grep -i "figma" ~/.claude.json 2>/dev/null || echo "ninguno"
```

> **Nota:** este check detecta cualquier MCP con "figma" en el nombre (incluidos `figma-developer-mcp`, `@figma/mcp`, `figma-writer` u otros personalizados). No se toca ningún MCP existente — solo se instala `figma-developer-mcp` si no está presente.

### 1.4 — Plugin oficial de Figma (use_figma)

```bash
grep "figma@claude-plugins-official" ~/.claude/settings.json 2>/dev/null \
  && echo "OK: plugin figma@claude-plugins-official activo" \
  || echo "FALTANTE: enabledPlugins no configurado — use_figma no estará disponible"
```

> `use_figma` es **independiente** del MCP `figma-developer-mcp`. Es la herramienta que permite importar componentes Andes X, vincular tokens y crear auto-layout desde Claude Code.

### 1.5 — Python (afecta MCPs Meli)

```bash
python3 --version 2>/dev/null || echo "python3 no encontrado"
```

---

## FASE 2 — Decisión basada en pre-flight

Con los resultados del diagnóstico anterior, determina el estado exacto y elige el camino. Muestra el estado detectado **antes** de proceder.

```
🔍 Diagnóstico previo
   ─────────────────────────────────────────────
   Versión instalada : vX.X  (o "no instalado")
   Versión disponible: vY.Y
   Archivos          : X/6 presentes
   MCP Figma         : [configurado / faltante]
   Plugin use_figma  : [activo / faltante]
   Conflictos MCP    : [ninguno / lista]
   ─────────────────────────────────────────────
   Estado: [ver tabla abajo]
   Acción: [descripción de lo que se hará]
```

| Estado | Condición detectada | Fases a ejecutar |
|--------|---------------------|-----------------|
| **A — Sin instalación** | Ningún archivo presente | 3 → 4 → 5 → 6 |
| **B — Al día** | Todos los archivos + versión igual + MCP OK + plugin OK + sin conflictos | Solo 6 (informar) |
| **C — Actualización disponible** | Todos los archivos + versión nueva + MCP OK + plugin OK + sin conflictos | 4 → 6 |
| **D — Instalación parcial** | Archivos faltantes (cualquier versión) | 3 → 4 (solo faltantes) → 6 |
| **E — Conflictos detectados** | Archivos OK + MCP faltante, plugin faltante o conflictos en `.claude.json` | 3 → 6 |
| **F — Roto y desactualizado** | Archivos faltantes + versión vieja + conflictos | 3 → 4 → 5 → 6 |

> Si el estado es B, informar al usuario y no ejecutar ningún cambio. Mostrar igualmente el reporte de la Fase 6.

---

## FASE 3 — Reparación de configuración

_Ejecutar en estados: A, D, E, F — y como verificación post-copia en todos los demás_

### MCP de Figma — diagnóstico y reparación

> **Importante:** esta sección instala `figma-developer-mcp` si no está presente. Los MCPs existentes (`@figma/mcp`, `figma-writer` u otros) **no se tocan**.

Buscar en todos los archivos de configuración posibles:

```bash
echo "--- settings.json (global) ---"
grep "figma-developer-mcp" ~/.claude/settings.json 2>/dev/null || echo "no encontrado"
echo "--- settings.local.json ---"
grep "figma-developer-mcp" ~/.claude/settings.local.json 2>/dev/null || echo "no encontrado"
echo "--- .claude.json (global) ---"
grep "figma-developer-mcp" ~/.claude.json 2>/dev/null || echo "no encontrado"
```

Con el resultado, actuar según el caso:

**Caso 1 — Ya está en `settings.json` o `settings.local.json`:** no hacer nada. El MCP está correctamente configurado.

**Caso 2 — Está en `.claude.json`:** moverlo a `settings.json` sin modificar el token ni los args existentes:

```python
import json, os

claude_json = os.path.expanduser("~/.claude.json")
settings_json = os.path.expanduser("~/.claude/settings.json")

with open(claude_json) as f:
    source = json.load(f)

# Extraer la entrada (puede llamarse "figma" o "figma-developer-mcp")
figma_entry = source.get("mcpServers", {}).get("figma") or \
              source.get("mcpServers", {}).get("figma-developer-mcp")

if figma_entry:
    try:
        with open(settings_json) as f:
            dest = json.load(f)
    except FileNotFoundError:
        dest = {}

    dest.setdefault("mcpServers", {})["figma"] = figma_entry

    with open(settings_json, "w") as f:
        json.dump(dest, f, indent=2)

    # Eliminar del .claude.json
    for key in ["figma", "figma-developer-mcp"]:
        source.get("mcpServers", {}).pop(key, None)

    with open(claude_json, "w") as f:
        json.dump(source, f, indent=2)

    print("✅ MCP de Figma movido a settings.json (token preservado)")
```

**Caso 3 — No está en ningún lado:** pedir el token al usuario (Figma → Account Settings → Personal access tokens → crear uno nuevo) y agregarlo en `settings.json`:

```python
import json, os

token = "PEGAR_TOKEN_AQUÍ"  # reemplazar con el token real del usuario
settings_json = os.path.expanduser("~/.claude/settings.json")

try:
    with open(settings_json) as f:
        d = json.load(f)
except FileNotFoundError:
    d = {}

d.setdefault("mcpServers", {})["figma"] = {
    "command": "npx",
    "args": ["-y", "figma-developer-mcp", "--figma-api-key", token]
}

with open(settings_json, "w") as f:
    json.dump(d, f, indent=2)

print("✅ MCP de Figma configurado en settings.json")
```

En todos los casos donde se modifique la configuración, pedir al usuario que reinicie Claude Code.

### Plugin oficial de Figma (use_figma)

Este plugin es **independiente** del MCP `figma-developer-mcp`. Es lo que activa la herramienta `use_figma`, requerida para importar componentes Andes, crear auto-layout y vincular tokens desde Claude Code.

Verificar y reparar en un solo paso:

```python
import json, os

settings_json = os.path.expanduser("~/.claude/settings.json")

try:
    with open(settings_json) as f:
        d = json.load(f)
except FileNotFoundError:
    d = {}

if d.get("enabledPlugins", {}).get("figma@claude-plugins-official"):
    print("✅ Plugin figma@claude-plugins-official ya está activo — sin cambios")
else:
    d.setdefault("enabledPlugins", {})["figma@claude-plugins-official"] = True
    with open(settings_json, "w") as f:
        json.dump(d, f, indent=2)
    print("✅ Plugin figma@claude-plugins-official activado en settings.json")
    print("⚠️  Reinicia Claude Code para que tome efecto")
```

### Skills en lugar incorrecto

Verificar que los `.md` están en `~/.claude/commands/` y `~/.claude/`. Si aparecen referenciados en `~/.claude.json` u otro archivo de configuración, removerlos de ahí.

### Python incompatible (afecta MCPs Meli)

```bash
python3 --version
```

Si la versión es 3.14.0a o 3.14.0b (alpha/beta), los MCPs Meli pueden fallar. Informar:

```bash
brew install python@3.13
```

---

## FASE 4 — Copiar archivos de skill

_Ejecutar en estados: A, C, D, F_

```bash
mkdir -p ~/.claude/commands

cp "$SOURCE_DIR/andes-designer.md"       ~/.claude/commands/
cp "$SOURCE_DIR/andes-x-index.md"        ~/.claude/
cp "$SOURCE_DIR/andes-x-catalog.md"      ~/.claude/
cp "$SOURCE_DIR/andes-x-foundations.md"  ~/.claude/
cp "$SOURCE_DIR/andes-legacy-index.md"   ~/.claude/
cp "$SOURCE_DIR/andes-legacy-catalog.md" ~/.claude/
```

Después de copiar, sincronizar la versión del branding con el changelog (evita inconsistencias si el archivo fue editado sin actualizar el banner):

```bash
VERSION=$(grep -m1 "^### v" ~/.claude/commands/andes-designer.md | grep -oE 'v[0-9]+\.[0-9]+(\.[0-9]+)?')
sed -i '' "s/ANDES DESIGNER  *v[0-9][0-9.]*/ANDES DESIGNER  $VERSION/" ~/.claude/commands/andes-designer.md
echo "✅ Branding sincronizado → $VERSION"
```

Verifica que los 6 archivos existen en destino antes de continuar a la siguiente fase.

---

## FASE 5 — MCPs oficiales Meli

_Ejecutar en estados: A, F (primera instalación o reinstalación completa)_

```bash
bash "$SOURCE_DIR/mcp-config-installer.sh" claude
```

Configura `genai_code_review`, `ApplicationSecurityMCP` y `backend` en `~/.claude.json`.

> Si el usuario no tiene acceso al registry privado de Meli (requiere VPN + acceso interno), los MCPs quedarán configurados pero inactivos. Informar y continuar — no bloquea el resto de la instalación.

---

## FASE 6 — Verificación final y reporte

Siempre ejecutar al terminar, sin excepción. Re-corre los checks del pre-flight para confirmar el estado final y muestra el reporte comparando antes vs después.

### 6.1 — Checks de configuración

Re-ejecutar checks 1.1 a 1.5 del diagnóstico y comparar con los resultados iniciales.

### 6.2 — Prueba funcional

Verifica que el skill puede iniciarse correctamente corriendo:

```
/andes-designer
```

Resultado esperado:
- Claude imprime el banner de Andes Designer con la versión correcta
- Línea `✅ Conectado a Figma vía plugin_figma_figma`
- Se presenta el menú de opciones (1 a 5)

> Si la conexión falla con "El MCP de Figma no está conectado", reiniciar Claude Code y volver a intentar antes de reportar el error.

### 6.3 — Reporte

```
╔══════════════════════════════════════════════════════════╗
║   🎨  Andes Designer — [Instalado / Actualizado /        ║
║        Reparado / Sin cambios]                           ║
╚══════════════════════════════════════════════════════════╝

Versión       : vX.X → vY.Y   (o "vX.X — sin cambios")

Skills
  andes-designer.md       ✅  ~/.claude/commands/
  andes-x-index.md        ✅  ~/.claude/
  andes-x-catalog.md      ✅  ~/.claude/
  andes-x-foundations.md  ✅  ~/.claude/
  andes-legacy-index.md   ✅  ~/.claude/
  andes-legacy-catalog.md ✅  ~/.claude/

Figma
  MCP figma-developer-mcp              ✅  configurado en ~/.claude/settings.json
  Plugin figma@claude-plugins-official ✅  enabledPlugins activo (use_figma disponible)

Prueba funcional
  /andes-designer → banner + conexión  ✅  OK

MCPs Meli
  genai_code_review       ✅  /  ⚠️ requiere acceso al registry interno Meli
  ApplicationSecurityMCP  ✅  /  ⚠️ requiere acceso al registry interno Meli
  backend                 ✅  /  ⚠️ requiere acceso al registry interno Meli

Cambios aplicados
  • [lista de acciones realizadas, ej:]
  • Actualizado andes-designer.md v1.2 → v1.3
  • Configurado MCP figma-developer-mcp en settings.json
  • Activado plugin figma@claude-plugins-official
  • (vacío si Estado B)

Pendientes
  ⚠️ [solo si algo quedó sin resolver — con instrucción clara de cómo resolverlo]

──────────────────────────────────────────────────────────
Para empezar: escribe /andes-designer
```

---

## Archivos en esta carpeta

| Archivo | Destino | Descripción |
|---|---|---|
| `INSTALL.md` | — | Este archivo |
| `mcp-config-installer.sh` | ejecutar una vez | Instalador MCPs corporativos Meli |
| `andes-designer.md` | `~/.claude/commands/` | Skill principal `/andes-designer` |
| `andes-x-index.md` | `~/.claude/` | Índice de componentes Andes X |
| `andes-x-catalog.md` | `~/.claude/` | Catálogo completo Andes X |
| `andes-x-foundations.md` | `~/.claude/` | Tokens y reglas de diseño Andes X |
| `andes-legacy-index.md` | `~/.claude/` | Índice de componentes Andes Legacy |
| `andes-legacy-catalog.md` | `~/.claude/` | Catálogo Andes Legacy |
