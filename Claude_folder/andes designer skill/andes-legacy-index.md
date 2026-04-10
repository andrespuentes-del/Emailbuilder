# Andes Legacy — Índice de componentes

> Leé este archivo para saber qué existe. Luego grep `~/.claude/andes-legacy-catalog.md` para obtener las keys exactas.
> **Nunca uses la REST API si el componente ya está en el catálogo.**

---

## Acciones y CTAs
- **Button** — Loud / Quiet / Transparent · Large / Medium / Small · Full-width=True/False · con o sin icono
- **Button Split** — botón con dropdown adjunto
- **Full-width / 2 buttons** — par de botones full-width (horizontal, vertical, optimized)
- **Full-width / 3 buttons** — tres botones full-width
- **FAB** (Floating Action Button) — Expanded On/Off · Large/Small · Loud/Quiet

## Navegación
- **Mobile headers** — Flow / Flow transparent / Section / Subsection · Right icon On/Off · con/sin task detail
- **Tabs** — Mobile / Desktop · Left aligned / Centered · 2–10 tabs · Overflow On/Off
- **Breadcrumb** — Current level + Father level
- **Pagination** — Mobile / Desktop · 2–6+ páginas · Style Light/Dark
- **Segmented control** — Text / Icon / Text+Icon · Light/Dark · Proportional/Variable

## Listas y filas
- **List (Base)** — Left column: none / Icon / Thumbnail / Checkbox / Radio / Switch · Right column: none / Text / Badge / Switch / Text link · Description On/Off
- **List Chevron** — fila con flecha de navegación
- **List Checkbox** — fila con checkbox integrado
- **Shortcuts (Grid / Row)** — accesos directos en grilla o fila

## Contenedores
- **Card** — Style: Elevated (📱 default) / Outline (white bg) / Light · Padding: 16/24/32/40px · con/sin título, pipe, link
- **Accordion Simple** — sección expandible · Expanded On/Off
- **Expandable section** — Text only / Text+icon / Icon only · Plain / Link · Expanded On/Off
- **Modal / Dialogue** — Dismissible On/Off · Simple / Fixed title / Large / Small / Card

## Feedback y estados
- **Message** — Hierarchy: Loud / Quiet · Color: Green / Red / Yellow / Blue / Orange · Thumbnail On/Off · Title On/Off · Dismissible On/Off
- **Snackbar** — Mobile / Desktop · Color: Dark / Green / Red · Action On/Off
- **Feedback screens** — Mobile · Feedback only / Short content / Long content
- **Technical errors** — Mobile / Desktop · Error 404 / Generic / No internet
- **Empty states** — Large / Small · Asset: Icon / Illustration · Buttons horizontal/vertical
- **Coach marks** — Dimmer Hint / Walkthrough · Tooltip walkthrough · Trigger

## Selección y formularios
- **Textfield Simple** — State: Idle / Focus / Error / Disabled · Content type: Text only / Clear / Password / Icon · Label On/Off · Helper On/Off
- **Textarea / Multiline** — campo de texto largo
- **Code input** — campo de código PIN
- **Textfield Split** — campo dividido (ej: código de área + número)
- **Amount field / Converter** — campo numérico para montos con conversión
- **Checkbox** — State: Idle / Disabled / Error · Check: Selected / Unselected / Indeterminated · con/sin label
- **Checkbox Highlight** — checkbox con background destacado
- **Radio button** — State: Idle / Disabled / Error · Check On/Off · con/sin label
- **Switch** — State: Idle / Disabled · Alignment Left/Right · Switch On/Off · con/sin label
- **Dropdown** — Large / Medium / Small · Multiple On/Off · Label On/Off · Helper On/Off
- **Box selector** — Border / Group · Icon+Text / Text / Text complex
- **Searchbox Simple / Split** — States: Idle / Focus / Pressed · Placeholder On/Off
- **Slider** — Single / Range · con Track
- **Input stepper** — contador numérico +/− · Large/Medium · con/sin complementary text
- **Tag input** — Simple / Multiline / Textarea · con tags editables
- **Date picker** — Day/Month/Extended · Standalone · Trigger · con/sin time picker
- **Time picker** — Granular / Intervals / Columns

## Indicadores y etiquetas
- **Tag Simple** — State: On/Off · Size: Large/Small · Left asset: None/Icon/Thumbnail · Dismissible On/Off · Color: Default/Green/Red/Yellow/Orange/Blue
- **Tag Choice** — selección múltiple tipo chip
- **Badge Pill** — Hierarchy: Loud/Quiet · Size: Large/Small/XSmall · Color: Green/Red/Accent/Gray/Yellow · Darker value On/Off · Icon: None/Left/Right
- **Badge Dot** — punto indicador · con/sin label
- **Badge Icon** — ícono indicador · con/sin label
- **Money amount** — Size: 16–60px · Flavor: Neutral/Positive/Negative · Logo On/Off
- **Money amount Discount** — precio con descuento
- **Cripto amount** — monto de criptomoneda
- **Progress indicator Circular** — Size: Large/Small · Counter: Loud/Quiet · State: Loading/Error/Done
- **Progress indicator Linear** — con/sin label · con/sin counter · con/sin comparison
- **Discount** — badge de descuento

## Imágenes y thumbnails
- **Thumbnail** — sizes: 24/32/40/48/56/64/72/80px · Content: Icon/Text/Image · Shape: Circle/Square · Hierarchy: Loud/Quiet
- **Thumbnail On grid** — 56/64/72/80px · para grillas
- **Thumbnail Stacked** — todos los tamaños · apilado
- **Carousel** — Card / Card+title · con Thumbnail

## Otros
- **Separadores (📐 Base)** — divisores de sección
- **Text link** — link de texto (en Foundations)
- **Tooltip** — Text only / With actions / With link · Color: Dark/Light/Accent
- **Table** — Simple / Editable / Expandible · con/sin Group header
- **File uploader** — con/sin previsualización · Gallery / Carousel
- **Segmented control** — selector tipo tabs compacto
- **Page viewer** — indicador de página tipo dots
- **Inline edit** — edición inline en tabla/lista

---

## Text Styles disponibles (Andes Legacy)
```
Title/XL · Title/L · Title/M · Title/S · Title/XS
Body/L · Body/L-semibold
Body/M · Body/M-semibold
Body/S · Body/S-semibold
Body/XS
```
→ Usá `inferTextStyle(fontSize, isBold)` para mapear tamaño visual al estilo correcto.

## Notas importantes
- **Business unit**: preferir `All` > `Mercado Libre` > `Mercado Pago` salvo que el usuario especifique
- **State default**: siempre `Idle` salvo que necesites otro estado
- **Hierarchy**: `Loud` = primario/énfasis, `Quiet` = secundario
- **Size default**: `Large` para mobile
- **Darker value**: `False` / `Off` es el default más común para badges
