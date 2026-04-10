# Andes X — Índice de componentes

> Leé este archivo para saber qué existe. Luego grep `~/.claude/andes-x-catalog.md` para obtener las keys exactas.
> **Nunca leas el catálogo completo.** Este índice es tu punto de entrada.

---

## ⚠️ COMPONENTES QUE EXISTEN — verificar SIEMPRE antes de usar primitivos

Estos son los más frecuentemente reemplazados por error con frames/primitivos:

- **Header** — barra superior · variantes con back, close, actions · `Nav. level`: Section / Subsection / Flow
- **Money amount** — precio formateado con símbolo, enteros y decimales · nunca texto suelto
- **Thumbnail** — imagen cuadrada/redonda estandarizada · variantes de tamaño tiny → xlarge
- **Skeleton card / Skeleton list row** — placeholders de carga · nunca `createRectangle` para esto
- **Snackbar mobile / desktop** — mensajes de feedback temporales · nunca frame custom
- **Message** — banner informativo/warning/error · Loud y Quiet · nunca frame custom con borde
- **Divider** — separador horizontal/vertical · nunca `createRectangle` de 1px de alto
- **Card** — contenedor con borde y sombra · nunca frame con `cornerRadius` manual

**Regla:** si el elemento tiene nombre semántico (header, precio, imagen, separador, alerta), buscarlo en este índice antes de construir nada.

---

## Acciones y CTAs
- **Button** — Loud / Quiet / Transparent · Large / Medium / Small · con o sin icono · FullWidth disponible
- **Button group** — grupo de 2 botones
- **Button split** — botón con dropdown
- **Icon button** — solo icono, sin texto
- **FAB / FAB Grouped / FAB Nested** — botón flotante
- **Dismiss button** — botón de cierre (×)

## Navegación
- **Header** — barra superior de app · variantes con back, close, actions
- **Header Slot** — versión con slot para contenido custom
- **Tabs desktop / Tabs mobile** — navegación por pestañas
- **Breadcrumb** — ruta de navegación
- **Pagination** — navegación de páginas
- **Segmented control** — selector tipo pill/tab

## Listas y filas
- **List row** — fila estándar · Left content: None / Icon / Thumbnail · con o sin descripción · slots derecho arriba/abajo
- **List row chevron** — fila con flecha de navegación
- **List row checkbox** — fila con checkbox
- **List row radiobutton** — fila con radio button
- **List row pick / List row pick slot** — fila de selección
- **List row slot / slot checkbox / slot chevron / slot radio** — versiones con slot izquierdo libre
- **Shortcuts Row / Shortcuts Grid** — accesos directos en fila o grilla

## Contenedores y layout
- **Card** — contenedor con borde sutil (NO shadow) · Default / Highlight · padding Large default · key: `93f643b3c393b08fae85014412b32eb9f9363e8d` · ver foundation completa: `grep -A 30 "## 16. CARD" ~/.claude/andes-x-foundations.md`
- **Accordion / Accordion Slot** — sección expandible
- **Expandable section** — sección que se expande/colapsa
- **Bottom sheet no modal** — hoja inferior fija
- **Fixed footer mobile** — footer fijo en mobile
- **Form Footer** — pie de formulario con botones

## Feedback y estados
- **Message** — banner/alerta informativo · Loud / Quiet · Positive / Warning / Error / Info
- **Snackbar desktop / Snackbar mobile** — notificación temporal
- **Popover / Popover slot** — tooltip enriquecido
- **Tooltip** — texto emergente simple
- **Feedback screen** — pantalla de resultado (éxito/error)
- **Empty state with illustration / with icon** — estado vacío

## Selección y formularios
- **Textfield / Textfield password / Textfield code / Textfield split** — campos de texto
- **Amount field** — campo de monto numérico
- **Checkbox / Checkbox group** — casilla de selección
- **Radio button / Radio button group** — selección única
- **Switch** — toggle on/off
- **Dropdown / Dropdown multiple / Dropdown standalone** — selector desplegable
- **Box selector** — selector estilo card clickeable
- **Searchbox / Searchbox split** — campo de búsqueda
- **Slider / Slider range** — control deslizante
- **Date picker field simple / multiple** — selector de fecha
- **Time picker granular / intervals** — selector de hora
- **Tag input** — input con tags
- **Segmented control** — selector de opciones tipo botón

## Indicadores y etiquetas
- **Tag / Tag choice** — etiqueta · Positive / Warning / Error / Info / Neutral · Loud / Quiet
- **Badge pill / Badge dot / Badge icon** — indicador numérico o de estado
- **Money amount / mask / discount / crypto** — monto formateado con estilo Andes
- **Progress indicator circular / linear / comparison / segments** — barras y círculos de progreso
- **View indicator** — puntos de carrusel

## Imágenes y thumbnails
- **Thumbnail / on grid / stacked / addon** — imagen con forma y tamaño estandarizado
- **Carousel** — carrusel de contenido

## Skeletons (loading)
- **Skeleton card** — placeholder de card
- **Skeleton list row** — placeholder de fila de lista
- **Skeleton shortcuts grid / row / thumbnail** — placeholders varios

## Otros
- **Divider** — separador · Horizontal / Vertical (solo para separar grandes secciones, no headers)
- **Textlink** — link de texto
- **Input stepper** — contador numérico +/−
- **Menu / Menu autosuggest / single / multiple** — menú contextual
- **File uploader Desktop / Mobile** — subida de archivos

---

## Text Styles disponibles
```
display/medium                          ← solo para hero/landing, nunca para UI de producto
heading/mega · xhuge · huge · xlarge · large · medium · small · xsmall
body/medium · small · xsmall (default y emphasis)
label/large · medium · small (verificar en catálogo)
```

## Color Variables disponibles (roles semánticos)
```
color/background/primary                ← blanco — fondo principal de pantalla
color/background/secondary              ← gris/lavanda claro — fondo alternativo (NO usar para pantalla entera)
color/surface/primary/idle              ← blanco — superficie de cards y contenedores
color/border/primary                    ← borde estándar de cards
color/text/primary · secondary          ← texto principal / secundario
color/feedback/fill/positive-loud · quiet · warning-loud · error-loud · informative-quiet
color/feedback/text/positive-loud · warning · error · informative
```

---

## Reglas de uso
- **Sombras:** no aplican a todo — usar con criterio. En cards sobre fondo blanco → preferir `color/border/primary`
- **Divider:** solo entre grandes secciones, nunca para separar header del contenido
- **Card:** existe en Andes X — siempre buscarlo antes de construir un contenedor custom
- **Header:** existe en Andes X — buscarlo antes de construir uno con primitivos
- **Buttons:** siempre linkear, nunca construir con primitivos (los primitivos no respetan pesos tipográficos)
