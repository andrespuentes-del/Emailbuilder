# Andes Designer — Auditoría (desarrolladora)

> **Para Claude:** ejecuta este flujo completo de forma autónoma. No modifiques nada — solo diagnostica y reporta. Informa el progreso de cada fase. Al finalizar, muestra siempre el reporte de la Fase 5.

La carpeta fuente es `~/Desktop/andes designer skill/`. La instalación activa está en `~/.claude/`.

---

## FASE 1 — Versión y branding

```bash
echo "--- Versión instalada ---"
grep "^### v" ~/.claude/commands/andes-designer.md | head -1

echo "--- Versión en carpeta fuente ---"
grep "^### v" ~/Desktop/"andes designer skill"/andes-designer.md | head -1

echo "--- Branding en instalado (debe coincidir con versión) ---"
grep "ANDES DESIGNER" ~/.claude/commands/andes-designer.md | head -1
```

---

## FASE 2 — Sincronización instalado vs fuente

Compara cada archivo. Si hay diferencias, muestra un resumen de qué cambió (no el diff completo).

```bash
SOURCE=~/Desktop/"andes designer skill"

for entry in \
  "commands/andes-designer.md:$SOURCE/andes-designer.md" \
  "andes-x-index.md:$SOURCE/andes-x-index.md" \
  "andes-x-catalog.md:$SOURCE/andes-x-catalog.md" \
  "andes-x-foundations.md:$SOURCE/andes-x-foundations.md" \
  "andes-legacy-index.md:$SOURCE/andes-legacy-index.md" \
  "andes-legacy-catalog.md:$SOURCE/andes-legacy-catalog.md"
do
  installed=~/.claude/${entry%%:*}
  source_file=${entry##*:}

  if [ ! -f "$installed" ]; then
    echo "❌ FALTANTE en instalado: $installed"
  elif [ ! -f "$source_file" ]; then
    echo "❌ FALTANTE en fuente: $source_file"
  else
    diff -q "$installed" "$source_file" > /dev/null 2>&1 \
      && echo "✅ IGUAL: $(basename $installed)" \
      || ( [ "$installed" -nt "$source_file" ] \
           && echo "⬆️  INSTALADO MÁS NUEVO: $(basename $installed) — copiar a fuente" \
           || echo "⬇️  FUENTE MÁS NUEVA: $(basename $installed) — copiar a instalado" )
  fi
done
```

---

## FASE 3 — Configuración de Figma

### MCP figma-developer-mcp

```bash
echo "--- ~/.claude/settings.json ---"
grep -i "figma" ~/.claude/settings.json 2>/dev/null || echo "ninguno"

echo "--- ~/.claude.json ---"
grep -i "figma" ~/.claude.json 2>/dev/null || echo "ninguno"
```

Estado esperado: `figma-developer-mcp` en `~/.claude/settings.json`. Si aparece en `~/.claude.json`, debe moverse.

### Plugin use_figma

```bash
grep "figma@claude-plugins-official" ~/.claude/settings.json 2>/dev/null \
  && echo "✅ enabledPlugins activo" \
  || echo "❌ FALTANTE: plugin figma@claude-plugins-official no configurado"
```

---

## FASE 4 — Prueba funcional

```
/andes-designer
```

Resultado esperado:
- Banner con la versión correcta
- Línea `✅ Conectado a Figma vía plugin_figma_figma`
- Menú de opciones (1 a 5)

---

## FASE 5 — Reporte final

```
╔══════════════════════════════════════════════════════════╗
║   🔍  Andes Designer — Auditoría (desarrolladora)        ║
╚══════════════════════════════════════════════════════════╝

Versión instalada : vX.X
Versión en fuente : vX.X  [coinciden / ⚠️ difieren]
Branding          : [coincide / ⚠️ desincronizado]

Sincronización ~/.claude/ ↔ ~/Desktop/andes designer skill/
  andes-designer.md       [✅ igual / ⬆️ instalado más nuevo / ⬇️ fuente más nueva / ❌ faltante]
  andes-x-index.md        [✅ igual / ⬆️ instalado más nuevo / ⬇️ fuente más nueva / ❌ faltante]
  andes-x-catalog.md      [✅ igual / ⬆️ instalado más nuevo / ⬇️ fuente más nueva / ❌ faltante]
  andes-x-foundations.md  [✅ igual / ⬆️ instalado más nuevo / ⬇️ fuente más nueva / ❌ faltante]
  andes-legacy-index.md   [✅ igual / ⬆️ instalado más nuevo / ⬇️ fuente más nueva / ❌ faltante]
  andes-legacy-catalog.md [✅ igual / ⬆️ instalado más nuevo / ⬇️ fuente más nueva / ❌ faltante]

Figma
  MCP figma-developer-mcp              [✅ en settings.json / ❌ faltante / ⚠️ en .claude.json]
  Plugin figma@claude-plugins-official [✅ activo / ❌ faltante]

Prueba funcional
  /andes-designer → banner + conexión  [✅ OK / ❌ falló]

──────────────────────────────────────────────────────────
Acciones pendientes
  [lista con instrucción clara para resolver cada issue, o "ninguna"]
```
