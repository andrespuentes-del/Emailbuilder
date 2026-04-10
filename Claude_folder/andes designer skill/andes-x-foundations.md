# Andes X — Foundations & Design Rules

> **NO leer completo.** Consultá el índice, identificá la sección que necesitás, y grep solo esa.
> `grep -A 30 "## 4. SPACING" ~/.claude/andes-x-foundations.md`

## ÍNDICE RÁPIDO — buscá por pregunta

| Si necesitás saber... | Sección | Grep |
|---|---|---|
| ¿Qué son los tokens / cómo funcionan? | §1 DESIGN TOKENS | `"## 1. DESIGN"` |
| ¿Qué color de fondo / superficie / texto usar? | §2 COLOR | `"## 2. COLOR"` |
| ¿Qué heading / body usar? ¿Cuándo usar display? | §3 TIPOGRAFÍA | `"## 3. TIPOGRAFÍA"` |
| → Para la tabla de decisión tipográfica (cuándo usar cada nivel) | andes-designer.md | `grep -A 25 "GUÍA DE DECISIÓN TIPOGRÁFICA" ~/.claude/commands/andes-designer.md` |
| ¿Cuánto padding / gap entre elementos? | §4 SPACING | `"## 4. SPACING"` |
| ¿Qué tamaño usar para botones / inputs? | §5 TAMAÑO | `"## 5. TAMAÑO"` |
| ¿Cuánto border radius en un card / botón? | §6 BORDER RADIUS | `"## 6. BORDER"` |
| ¿Cuándo usar borde y de qué grosor? | §7 BORDER WIDTH | `"## 7. BORDER WIDTH"` |
| ¿Cuándo aplicar sombra? ¿Low vs High? | §8 SHADOWS | `"## 8. SHADOWS"` |
| ¿Cuándo usar glass / translúcido? | §9 GLASS | `"## 9. GLASS"` |
| ¿Cómo usar íconos? ¿Qué tamaños? | §10 ICONOGRAFÍA | `"## 10. ICON"` |
| ¿Cómo armar la grilla / layout? | §11 LAYOUT | `"## 11. LAYOUT"` |
| ¿Cómo combinar colores secundarios? | §12 PALETA SECUNDARIA | `"## 12. PALETA"` |
| Reglas fundamentales de diseño (resumen) | §14 REGLAS | `"## 14. REGLAS"` |
| Anti-patrones a evitar | §15 ANTI-PATRONES | `"## 15. ANTI"` |

---

---

## 1. DESIGN TOKENS — Estructura y uso correcto

### Qué son
Los design tokens representan decisiones de diseño mediante nombres asociados a valores. Son agnósticos a plataforma y permiten consistencia entre productos, marcas y modos (light/dark).

### Tres niveles en Andes
1. **Core tokens** — Valores crudos (ej: `andes-color-blue-500` = `#4850E5`). **Nunca se aplican directamente** a la interfaz.
2. **Semantic tokens** — Definen rol sin exponer valor (ej: `andes-color-text-primary`). **Estos son los que se usan en diseño e implementación.**
3. **Component tokens** — Específicos de un componente (ej: color de línea de Button Split). Uso muy restringido.

### Taxonomía de nombres
`{sistema}.{elemento}.{categoría}.{propósito}.{atributo}.{apariencia}.{estado}.{escala}.{contexto}`

Ejemplo: `andes-color-interactive-fill-loud-idle`

### Regla fundamental
✓ Siempre usar tokens semánticos — nunca valores hex directos ni tokens core.
✗ No cruzar semántica: cada token expresa una intención específica.

---

## 2. COLOR

### Paleta primaria (semántica)
El color se aplica mediante tokens semánticos, no valores hex. Permite cambio de tema (light/dark) sin tocar componentes.

#### Roles semánticos principales:

| Rol | Descripción | Ejemplos de tokens |
|-----|-------------|-------------------|
| **Background** | Fondos estructurales de la interfaz | `andes-color-background-primary`, `andes-color-overlay` |
| **Surface** | Contenedores sobre el fondo (cards, bottom sheets) | `andes-color-surface-primary-hover`, `andes-color-surface-secondary-idle` |
| **Fill** | Relleno de componentes pequeños | `andes-color-fill-primary`, `andes-color-fill-inverse`, `andes-color-fill-accent-loud` |
| **Interactive** | Componentes con estados (loud/quiet/mute) | `andes-color-interactive-fill-loud-idle`, `andes-color-interactive-fill-mute-hover` |
| **Feedback** | Estados del sistema | `andes-color-feedback-fill-informative-loud`, `andes-color-feedback-text-positive-loud-on-fill` |
| **Selected** | Elementos seleccionados | `andes-color-selected-fill-idle`, `andes-color-selected-text-active` |
| **Border** | Bordes de contenedores | `andes-color-border-primary`, `andes-color-border-accent`, `andes-color-border-inverse` |
| **Text** | Texto e hipervínculos | `andes-color-text-primary`, `andes-color-text-disabled`, `andes-color-text-link` |
| **Icon** | Iconos (tokens específicos para íconos) | Usar exclusivamente tokens de icon, no de text ni fill |

#### Principios de color:
- **Familiaridad semántica**: verde = éxito, rojo = error/urgencia, amarillo = identidad de marca
- **Menos es más**: fondos neutros dominantes, el color guía la atención a lo importante
- **Contraste accesible**: mínimo 4.5:1 (AA) entre fondo y texto

### Paleta secundaria (sin semántica)
8 colores base: **Lemon, Mint, Bluebell, Lavender, Violet, Rose, Sunflower, Peach**
5 escalas por color: 100 (muy claro) → 300 → 500 → 700 → 900 (muy oscuro)

Tokens: `andes-color-secondary-{color}-{nivel}` (ej: `andes-color-secondary-bluebell-subtle`)

#### Uso correcto de paleta secundaria:
✓ Visualización de datos, gráficos, badges, tags, thumbnails, banners (diferenciación sin semántica)
✗ Nunca en botones, elementos de selección, feedback de estados (error/éxito/advertencia)
✗ No reemplaza colores semánticos de feedback

#### Para accesibilidad en paleta secundaria:
- Texto claro sobre escalas oscuras (700/900) o texto oscuro sobre escalas claras (100/300)
- La escala 500 NO es óptima para texto/icono (bajo contraste)

#### Paletas divergentes recomendadas:
- Bluebell ↔ Peach
- Mint ↔ Rose
- Lemon ↔ Violet
- Sunflower ↔ Lavender

---

## 3. TIPOGRAFÍA

### Familia tipográfica
**Inter** — sans-serif moderna y open source, alta legibilidad en minúsculas.
3 pesos: **Regular (400)**, **Semi Bold (600)**, **Bold (700)**

⚠️ En Figma el peso Semi Bold se escribe `"Semi Bold"` (con espacio), NO `"SemiBold"`.

### Roles semánticos

| Rol | Uso | Nota |
|-----|-----|------|
| **Display** | Mayor jerarquía, expresivo, composiciones con imágenes. Textos breves (máx. 3 líneas) | Solo para casos muy expresivos |
| **Headings** | Títulos de página, sección, modal, bottom sheet | Primer nivel de lectura |
| **Body** | Contenido principal, componentes, párrafos | Por defecto en mobile: Body Medium |

### Escala de body:
- **Body Large** — párrafos extensos, lectura fluida
- **Body Medium** — default mobile
- **Body Small** — textos breves, puntuales (ej: texto legal)
- **Body XSmall** — no accesible, solo casos específicos (ej: timestamp en chat)

### Text styles verificados en Andes X (para `setTextStyleIdAsync`):
```javascript
const TEXT_STYLES_ANDES_X = {
  // Keys confirmados via API Figma
  // (consultar andes-designer.md para lista completa actualizada)
};
```

### Reglas tipográficas:
- Las listas siempre alineadas a izquierda (aunque el componente esté centrado)
- Espacio vertical entre párrafos = mismo que el tamaño de fuente del estilo
- Espacio entre elementos de lista = 4px menos que el tamaño de fuente
- ✓ Usar Body Medium o Large para párrafos con varias líneas
- ✗ Evitar Body Small para párrafos extensos
- ✗ Nunca valores de fuente fuera de la escala de tokens

---

## 4. SPACING

### Base: 4px
Todos los valores de spacing son múltiplos de 4px.

### Escala — 15 tallas:
| Token | px approx. |
|-------|-----------|
| xnano | 4px |
| nano | 8px |
| micro | 12px |
| mini | 16px |
| xsmall | 20px |
| small | 24px |
| medium | 32px |
| large | 40px |
| xlarge | 48px |
| mega | 56px |
| xmega | 64px |

### Roles semánticos:
- **Padding** — espacio interno entre borde y contenido. Puede ser uniforme o asimétrico
- **Gap** — distancia entre elementos. Crea ritmo visual limpio

### Valores negativos:
Disponibles (mismos incrementos de 4px). Se usan para superposición entre elementos.

### Para formularios:
Tokens específicos de gap horizontal/vertical: **near, mid, wide, related** (solo horizontal).

### Reglas de spacing:
✓ Respetar tokens de spacing internos de los componentes — no modificarlos
✓ Agrupar elementos relacionados con spacing consistente
✓ Solo usar valores del sistema de tokens, no valores arbitrarios
✗ No editar/reemplazar tokens de spacing de componentes existentes
✗ No usar spacing desigual en grupos de elementos relacionados

✅ Las variables de `spacing/padding/*` y `spacing/gap/*` de Andes X **SÍ están publicadas** en la colección `Theme` y se pueden importar cross-file con `importVariableByKeyAsync`. Usar `setBoundVariable` para vincularlas a propiedades de layout. Ver keys completos en el skill `andes-designer.md`.

---

## 5. TAMAÑO (SIZE)

### Base: 4px
15 tallas: xnano → xmega (misma escala que spacing).

### Roles semánticos por componente:

| Rol | Escala | Componentes |
|-----|--------|-------------|
| **Actions** | Small, Medium, Large | Button y componentes con morfología de botón |
| **Inputs** | Small, Medium, Large | Textfield, Dropdown, Searchbox (altura fija, ancho flexible) |
| **Selection controls** | Escala propia | Checkbox, Radio button, Switch (área tapeable mínima: 24px) |
| **Icons** | Escala de iconos | En Button, Progress indicator, Tag |
| **Media** | Escala media | Elementos gráficos expresivos |

### Reglas de tamaño:
✓ Mismo tamaño para componentes de un mismo grupo visual
✓ Usar tamaños Large para destacar elementos clave
✓ Inputs y botones siempre del mismo tamaño cuando se usan juntos
✗ No combinar tamaños diferentes de un mismo componente en un grupo
✗ No usar tamaños muy chicos en elementos interactivos

---

## 6. BORDER RADIUS

### Base: 4px — 7 tallas (None → Full)
Escala: **None → Xsmall → Small → Medium → Large → Xlarge → Full**

### Roles semánticos:

| Rol | Componentes |
|-----|-------------|
| **Actions & Inputs** | Botones e inputs de formulario |
| **Containers** | Cards, modals, bottom sheets, mensajes, snackbars |

Containers default = valor estándar para la mayoría de superficies.

### Reglas de border radius:
✓ En elementos anidados: el hijo NO debe tener radio mayor que su contenedor (progresión)
✓ Mismo valor en las 4 esquinas salvo intención visual clara
✗ No radios distintos en cada esquina sin justificación
✗ No usar valores fuera de la escala de tokens
✗ No romper progresión padre-hijo

---

## 7. BORDER WIDTH

### 5 tallas: None → Xsmall → Small → Medium → Large → Xlarge

### Principios:
- Bordes más delgados: separar sin distraer
- Bordes más gruesos: contenedores o estados activos (active, error)
- Estados como active o error aumentan temporalmente el grosor para dar feedback

### Reglas:
✓ Combinar con color semántico para estados (error, éxito)
✗ No aplicar grosores arbitrarios fuera de la escala

---

## 8. SHADOWS (ELEVACIÓN)

### 3 tipos:

| Tipo | Descripción | Cuándo usar |
|------|-------------|-------------|
| **Low** | Separación sutil del fondo | Contenedores secundarios, elementos de apoyo |
| **High** | Elemento flotante, demanda atención | Modales, menús desplegables, elementos focales |
| **Highlight** | Halo de color (NO elevación, sino énfasis) | Selección, error, confirmación — hereda color del estado |

### Reglas:
✓ Aplicar SOLO cuando la elevación contribuye a diferenciar jerarquía
✓ Componentes de una misma familia deben compartir la misma sombra
✓ Highlight: solo cuando el componente comunica un estado — nunca decorativo
✗ No usar sombra en componentes planos: botones de texto, íconos simples, divisores

---

## 9. GLASS (SUPERFICIES TRANSLÚCIDAS)

**Uso**: Combina color + opacidad + desenfoque de fondo para separar un elemento de su fondo sin romper la continuidad visual.

**Cuándo**: Solo en elementos sobre imágenes, videos o fondos no estándar del sistema.

**Componentes que lo usan**: Button, Dismiss button, Header, Segmented control, View indicator.

---

## 10. ICONOGRAFÍA

### Librería: MyIcons (externa, alineada con principios Andes)

### Tamaños disponibles:
| Nombre | px |
|--------|-----|
| Micro | 12px |
| Xtiny | 16px |
| Tiny | 20px |
| Xsmall | 24px |
| Small | 32px |
| Medium | 40px |
| Large | 48px |

### Principios de íconos:
1. **Universales** — comprensibles sin depender del idioma o cultura
2. **Sintéticos** — precisos y reducidos a lo esencial, legibles en tamaños pequeños
3. **Atemporales** — neutrales, sin modas ni recursos decorativos
4. **Funcionales** — solo cuando aportan valor (guiar, informar, reforzar acción). Nunca ornamentales.

### Reglas:
- Large y Medium: usos expresivos
- ✗ No modificar el tamaño manualmente — siempre usar valores definidos
- ✗ No cambiar el tamaño de un ícono cuando forma parte de un componente
- Usar tokens semánticos de color para íconos (no tokens core ni valores crudos)

---

## 11. LAYOUT & GRIDS

### Partes de la grid:
- **Columns** — áreas de alineación del contenido (ancho variable según breakpoint)
- **Gutter** — espacio fijo entre columnas
- **Margin** — espacio fijo en extremos externos del contenedor

### Tipos de grid:

| Tipo | Descripción | Cuándo usar |
|------|-------------|-------------|
| **Fluid** | Se extiende al 100% del contenedor | Dashboards, páginas con mucha información |
| **Fixed** | Ancho máximo, centrado en pantallas grandes | Desktop, cuando hay que centrar el contenido |

### Breakpoints:
Los breakpoints definen número de columnas, margin y gutter para cada rango de tamaño.
Los componentes **no se transforman** automáticamente entre breakpoints — el sistema elige qué componente mostrar en cada rango.

### Propiedades de layout:
- **Content** — alinear al grid de columnas
- **Span** — cuántas columnas ocupa una celda
- **Hide** — span=0 oculta la celda del flujo
- **Skip** — omitir columnas (desplazamiento)

### Reglas:
✓ Usar columnas como referencia para alinear contenido
✓ Mantener el mismo gutter definido en el layout para scrolls horizontales
✗ No usar gutters ni margins como espacio de alineación
✗ No estirar componentes para llenar columnas si su tamaño depende del contenido

---

## 12. PALETA SECUNDARIA — Combinaciones recomendadas

### Para datos/visualizaciones:
- **Categórica** (distinguir grupos sin jerarquía): colores distintos, diferenciación clara
- **Secuencial** (progresión/escala): distintas saturaciones del mismo color, orden tonal consistente claro→oscuro
- **Divergente** (oposición): Bluebell↔Peach, Mint↔Rose, Lemon↔Violet, Sunflower↔Lavender

### Accesibilidad:
- WCAG 2.0 AA: 4.5:1 para texto normal, 3:1 para textos grandes e íconos
- Escala 500 = NO usar para texto/ícono (bajo contraste)
- Texto claro sobre 700/900, texto oscuro sobre 100/300

---

## 13. TOKENS VERIFICADOS EN API (Andes X — `ksPpKcDXCSni1iK9azu7GX`)

### Text styles confirmados:
```javascript
const TEXT_STYLES_ANDES_X = {
  // Nota: usar setTextStyleIdAsync(style.id) para vincular
  // Buscar con: figma.importStyleByKeyAsync(styleKey)
};
```

### Variables de color confirmadas:
```javascript
// Importar con: figma.variables.importVariableByKeyAsync(key)
// Vincular con: boundVariables: { color: { type: "VARIABLE_ALIAS", id: variable.id } }
const COLOR_VARS_ANDES_X = {
  // Ver andes-designer.md para lista actualizada de keys verificadas
};
```

### Componentes confirmados (keys para `importComponentByKeyAsync`):
```javascript
const COMPONENTS_ANDES_X = {
  DIVIDER_HORIZONTAL: 'c9273619cc20c6d51835ca47c4d01d4d8df5681b',
  DIVIDER_VERTICAL:   'f7c6d4e7fbce5d7dfd7df533ed5a807b9f9dabd3',
  // Ver andes-designer.md para más componentes
};
```

---

## 14. REGLAS DE DISEÑO FUNDAMENTALES (aplicar siempre)

1. **Tokens siempre** — nunca valores crudos (hex, px arbitrarios). Tokens semánticos, no core.
2. **Grilla de 4px** — todos los valores de spacing, size, radius son múltiplos de 4.
3. **Accesibilidad** — contraste mínimo 4.5:1. Áreas tapeables ≥ 24px.
4. **Jerarquía por tamaño y color** — Large/Loud para CTAs primarias, Small/Quiet para secundarias.
5. **Menos es más en color** — fondos neutros dominantes, color para guiar atención.
6. **Sombras solo para elevación real** — no decorativo, no en elementos planos.
7. **Íconos siempre funcionales** — si no tiene función, no va.
8. **Progresión de radio** — hijo nunca con mayor radius que su contenedor.
9. **Consistencia en tamaños** — inputs y botones del mismo tamaño en el mismo grupo.
10. **Paleta secundaria ≠ feedback** — nunca reemplazar success/error/warning con colores secundarios.

---

## 16. CARD — Cuándo y cómo usar

**Qué es:** contenedor que agrupa y organiza elementos dentro de una superficie delimitada. Estructura o destaca información sin romper la continuidad del layout.

### Cuándo usar
- Destacar un bloque clave de información en pantallas extensas
- Cuando varios elementos vinculados comparten un mismo objetivo y conviene presentarlos como una unidad

### Cuándo NO usar
- **Mensajes de feedback** → usar Message
- **Accesos rápidos con ícono y texto** → usar Shortcut
- **Listas de ítems seleccionables o accionables** → usar List
- **Opciones comparables y seleccionables** → usar Box selector
- No usar como contenedor general del layout
- No anidar Cards dentro de Cards

### Appearance
| Valor | Descripción | Cuándo usar |
|---|---|---|
| **Default** | Fondo blanco + borde sutil | Predeterminado en la mayoría de casos |
| **Highlight** | Fondo gris | Situaciones puntuales para reforzar una sección |

⚠️ **NO usa drop shadow** — usa borde sutil. Las sombras son para elementos flotantes (modales, menús).
⚠️ **No colocar botones Quiet dentro de Card highlight** (contraste insuficiente).

### Padding disponible
None / **Large (default)** / Huge / Xhuge

### Reglas de uso
✓ Usar solo cuando sea necesario agrupar un bloque específico con intención clara
✓ Aprovechar layout, espaciado y tipografía para estructurar sin depender de Cards
✓ Estilo highlight solo en situaciones puntuales, con buen contraste interno
✗ No usar Card como contenedor general para toda la pantalla
✗ No distribuir todo el contenido en múltiples Cards highlight — puede saturar
✗ No usar para radio rows, checkboxes ni cualquier lista seleccionable

**Componente Andes X:** key default (Card Default Idle Large): `93f643b3c393b08fae85014412b32eb9f9363e8d` — 32 variantes totales

> Para consultar: `grep -A 30 "## 16. CARD" ~/.claude/andes-x-foundations.md`

---

## 15. ANTI-PATRONES COMUNES A EVITAR

| ❌ Anti-patrón | ✅ Corrección |
|----------------|--------------|
| Usar `#4850E5` directo | Usar `andes-color-interactive-fill-loud-idle` |
| `padding: 13px` | Usar múltiplo de 4: `padding: 12px` o `16px` |
| Importar con `figma.importVariableByKeyAsync` | Usar `figma.variables.importVariableByKeyAsync` |
| Font style `"SemiBold"` | Usar `"Semi Bold"` (con espacio) |
| Hardcodear padding/gap ignorando tokens | Usar `importVariableByKeyAsync` + `setBoundVariable` con `spacing/padding/*` o `spacing/gap/*` |
| Posicionamiento absoluto | Usar auto-layout con `layoutMode`, `itemSpacing`, `padding*` |
| Shadow decorativa en botón de texto | Sombras solo en elementos con elevación real |
| Color secundario para badge de éxito | Usar `andes-color-feedback-fill-positive-loud` |
| Radio del hijo mayor que el padre | Progresión descendente: padre ≥ hijo |

---

*Última actualización: 2025 — Basado en documentación oficial Andes X + tokens verificados via API Figma*
