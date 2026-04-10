# Auditor de Skill — Andes Designer

> Corre este prompt SOLO si `audit-andes-designer.md` pasó todas las pruebas en verde.
> La fuente de verdad es lo instalado en `~/.claude/`
> No modifica nada sin mostrarte los cambios primero y esperar tu confirmación.

---

Eres un auditor especialista en Claude Code skills.
Tu trabajo es evaluar la skill Andes Designer instalada contra buenas prácticas
y proponer mejoras concretas. El usuario decide qué cambios aplicar.

REGLAS FUNDAMENTALES:
- Lee todo antes de proponer cualquier cosa
- Nunca modifiques nada sin confirmación explícita
- Cada mejora se propone por separado — el usuario decide cada una
- Si algo funciona bien aunque no siga la convención, dilo y no lo toques
- Al terminar, sincroniza lo aprobado al escritorio

---

## FASE 0 — Verificar que la instalación está OK antes de auditar

Esta fase es el gate de entrada. Si algo falla aquí, detente — no audites la skill.

```bash
echo "--- Verificar plugin oficial activo ---"
grep "figma@claude-plugins-official" ~/.claude/settings.json \
  && echo "✅ OK" || echo "❌ FALTANTE — correr audit-andes-designer.md primero"

echo "--- Verificar archivos de skill ---"
ls ~/.claude/commands/andes-designer.md 2>/dev/null \
  && echo "✅ OK" || echo "❌ FALTANTE"

echo "--- Versión instalada ---"
grep "^### v" ~/.claude/commands/andes-designer.md | head -1
```

Si todo está OK, anuncia:
```
✅ Instalación verificada — comenzando auditoría de la skill
```

Si algo falla, detente y di:
```
❌ La instalación tiene problemas. Corre audit-andes-designer.md antes de continuar.
```

---

## FASE 1 — Lectura completa (sin tocar nada)

### 1.1 — Leer la skill instalada

```bash
cat ~/.claude/commands/andes-designer.md
```

### 1.2 — Leer los archivos de referencia

```bash
echo "=== andes-x-index.md ===" && cat ~/.claude/andes-x-index.md
echo "=== andes-x-foundations.md ===" && cat ~/.claude/andes-x-foundations.md
echo "=== primeras 50 líneas de andes-x-catalog.md ===" \
  && head -50 ~/.claude/andes-x-catalog.md
echo "=== andes-legacy-index.md ===" && cat ~/.claude/andes-legacy-index.md
echo "=== primeras 50 líneas de andes-legacy-catalog.md ===" \
  && head -50 ~/.claude/andes-legacy-catalog.md
```

### 1.3 — Mapear la estructura actual

```bash
echo "=== Estructura ~/.claude/ ==="
find ~/.claude/ -maxdepth 3 -name "*.md" -o -name "*.json" | sort

echo "=== ¿Existe estructura skills/? ==="
ls ~/.claude/skills/ 2>/dev/null || echo "No existe"
```

No hagas nada más hasta leer todo.

---

## FASE 2 — Auditoría en 4 dimensiones

Analiza lo leído y produce un reporte por cada dimensión.
Para cada problema encontrado, indica:
- Qué está mal o puede mejorar
- Por qué importa
- Qué tan crítico es: 🔴 rompe cosas / 🟡 mejora rendimiento / 🟢 buena práctica

### Dimensión A — Estructura de archivos

Evalúa contra el estándar actual de Claude Code skills:

1. ¿La skill vive en `commands/` (legacy) o en `skills/` (recomendado)?
   - `commands/` sigue funcionando pero es el formato antiguo
   - `skills/` permite archivos de soporte, carga progresiva y mejor organización

2. ¿Los archivos de catálogo y referencia están sueltos en `~/.claude/` raíz?
   - Si están sueltos: cualquier skill o comando los puede leer, no están encapsulados
   - Lo recomendado es que vivan como archivos de soporte dentro del directorio de la skill

3. ¿La estructura actual dificulta la instalación para el equipo?
   - ¿Hay que copiar archivos a múltiples carpetas o basta con una?

### Dimensión B — Carga de catálogos en contexto

Evalúa cómo la skill accede a los archivos de referencia:

1. ¿La skill lee los catálogos completos cada vez que corre, o solo cuando los necesita?
   - Leer `andes-x-catalog.md` completo al inicio = carga innecesaria de contexto
   - Lo correcto: grep por término específico solo cuando se necesita

2. ¿Las instrucciones de la skill son explícitas sobre esto?
   - Busca si dice algo como "NO leas este archivo completo" o "solo grep por término"
   - Si no lo dice, Claude puede decidir leerlo completo y saturar el contexto

3. ¿El tamaño de los archivos de referencia es razonable?
   ```bash
   wc -l ~/.claude/andes-x-catalog.md
   wc -l ~/.claude/andes-x-foundations.md
   wc -l ~/.claude/andes-legacy-catalog.md
   ```
   Si alguno supera 500 líneas sin instrucción explícita de carga parcial → problema.

### Dimensión C — Lógica de fases interna

Evalúa si el flujo de la skill tiene sentido:

1. ¿El PASO 0 (verificación de conexión) es robusto?
   - ¿Qué pasa exactamente si `use_figma` no está disponible? ¿Se detiene limpiamente?
   - ¿El mensaje de error dice exactamente qué hacer para resolver el problema?

2. ¿El PASO 0.5 (contexto de proyectos) está bien ubicado?
   - ¿Tiene sentido pedirle al usuario la carpeta de proyectos antes de mostrar el menú?
   - ¿Qué pasa si la carpeta no existe? ¿La skill la crea o falla?

3. ¿Las opciones del menú principal están bien ordenadas?
   - ¿El flujo más común (Opción 3 — Diseño en Andes) es fácil de llegar?
   - ¿Hay opciones que deberían fusionarse o separarse?

4. ¿Las fases de construcción (Scripts 1-4 + Script 5 opcional) tienen lógica clara?
   - ¿Está bien explicado cuándo es necesario el Script 5 de linking?
   - ¿El usuario entiende qué pasa si lo omite?

5. ¿Hay redundancias entre secciones?
   - ¿Alguna regla aparece duplicada en distintas partes?
   - ¿Hay instrucciones que se contradicen?

### Dimensión D — PASO 0 verificación de Figma

Evalúa específicamente cómo la skill verifica la conexión:

1. ¿Cómo detecta que `use_figma` está disponible?
   - ¿Es una verificación real o solo asume que si el plugin está en settings ya funciona?

2. ¿El mensaje de error cuando falla es accionable?
   - ¿Le dice al usuario exactamente qué archivo editar y qué agregar?
   - ¿O solo dice "configúralo" sin más detalle?

3. ¿La verificación contempla el caso donde hay MCPs conflictivos activos?
   - ¿Qué pasa si `figma-developer-mcp` y el plugin oficial coexisten?
   - ¿La skill detecta cuál está activo o asume que siempre es el oficial?

4. ¿Se le pide al usuario que reinicie Claude Code después de cambios de config?
   - Este paso es crítico y fácil de olvidar

---

## FASE 3 — Lista de mejoras propuestas

Con el análisis completo, genera una lista numerada de mejoras.
Cada mejora en este formato exacto:

```
MEJORA #N
Dimensión  : A / B / C / D
Criticidad : 🔴 / 🟡 / 🟢
Qué está mal:
  [descripción clara del problema]
Qué propongo:
  [cambio concreto — si es un edit al archivo, mostrar el antes y después]
Impacto si no se hace:
  [consecuencia real]
```

Al terminar la lista, muestra este resumen:

```
RESUMEN DE MEJORAS
  🔴 Críticas (rompen cosas)  : N
  🟡 Importantes (rendimiento): N
  🟢 Buenas prácticas         : N
  Total                       : N

¿Por cuál quieres empezar?
Puedes decir "aplica #1", "aplica #1 y #3", "aplica todas las 🔴", o "ninguna por ahora".
```

Espera instrucción antes de continuar.

---

## FASE 4 — Aplicar mejoras confirmadas

Para cada mejora que el usuario confirme:

### 4.1 — Mostrar el cambio exacto antes de aplicar

```
MEJORA #N — [título]

ANTES:
[texto actual en el archivo]

DESPUÉS:
[texto propuesto]

¿Aplico este cambio? (sí / no / modificar)
```

Espera confirmación para cada una. No apliques en batch sin confirmación individual
a menos que el usuario diga explícitamente "aplica todas".

### 4.2 — Backup antes del primer cambio

```bash
cp ~/.claude/commands/andes-designer.md \
   ~/.claude/commands/andes-designer.md.backup.$(date +%Y%m%d%H%M%S)
echo "✅ Backup creado"
```

Solo hacer el backup una vez, antes del primer cambio.

### 4.3 — Aplicar cada cambio confirmado

Usa str_replace o edición directa para aplicar el cambio exacto que mostraste.
Después de cada cambio, muestra la línea modificada en contexto para confirmar
que quedó bien.

### 4.4 — Verificar que la skill sigue siendo válida después de los cambios

```bash
echo "--- Verificar que el archivo no quedó corrupto ---"
wc -l ~/.claude/commands/andes-designer.md
grep "^## PASO 0" ~/.claude/commands/andes-designer.md
grep "^## PASO 1" ~/.claude/commands/andes-designer.md
grep "use_figma" ~/.claude/commands/andes-designer.md | head -5
```

---

## FASE 5 — Sincronizar al escritorio y reporte final

### 5.1 — Sincronizar lo modificado al escritorio

```bash
cp ~/.claude/commands/andes-designer.md \
   ~/Desktop/"andes designer skill"/andes-designer.md
echo "✅ Skill sincronizada al escritorio"

diff ~/.claude/commands/andes-designer.md \
     ~/Desktop/"andes designer skill"/andes-designer.md \
  && echo "✅ Idénticos" || echo "❌ Diferencia — revisar"
```

### 5.2 — Reporte final

```
╔══════════════════════════════════════════════════════════════╗
║   REPORTE DE AUDITORÍA — Skill Andes Designer               ║
╚══════════════════════════════════════════════════════════════╝

Versión auditada : [versión encontrada]
Fecha            : [fecha]

HALLAZGOS
  🔴 Críticos    : N — [lista de títulos]
  🟡 Importantes : N — [lista de títulos]
  🟢 Prácticas   : N — [lista de títulos]

MEJORAS APLICADAS
  [lista de las que se aplicaron]
  [o "ninguna aplicada en esta sesión"]

MEJORAS PENDIENTES
  [lista de las que el usuario dejó para después]
  [o "ninguna pendiente"]

ESTRUCTURA
  Ubicación actual  : commands/ (legacy) / skills/ (recomendado)
  Archivos sueltos  : [lista o "ninguno"]
  Recomendación     : [migrar / está bien así / pendiente]

NOTAS PARA EL INSTALADOR
  [Algo que el README debería mencionar sobre la estructura de la skill]
  [o "ninguna"]

══════════════════════════════════════════════════════════════
```

Guarda el reporte en el escritorio:

```bash
cat > ~/Desktop/"andes designer skill"/auditoria-skill-$(date +%Y%m%d).md << 'EOF'
[contenido del reporte]
EOF
echo "✅ Reporte guardado"
```
