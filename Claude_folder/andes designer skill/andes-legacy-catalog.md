# Andes Legacy — Catálogo de keys verificados

> File key: `HeuuomAnuRV0MyLM5MmYF0`
> Importar con: `figma.importComponentByKeyAsync(key)`
> **Si no encontrás lo que necesitás aquí:** grep este archivo primero, luego consultá la REST API como último recurso.

---

## Button

```javascript
const BUTTON_LEGACY = {
  // Full-width (para pantallas mobile)
  'Large/Loud/FullWidth/Idle/MercadoLibre':     '8e5fa3e78ea4fc8cfc36ff15dc1e913d4ce36c4a',
  'Large/Quiet/FullWidth/Idle/MercadoLibre':    '2edafe9d05f252094f301d19566cb8ad8d2b147a',
  'Large/Transparent/FullWidth/Idle/MercadoLibre': '6eb3c342e72b1b0976d059fb3b866b3ad8eeeb77',
  // Sin full-width
  'Large/Loud/NoFullWidth/Idle/MercadoLibre':   'f657c129973244966aa6579c00076e29444a9237',
};
// ⚠️ Hay múltiples keys para el mismo estado — verificar con grep si el resultado no es el esperado
// grep -i "State=Idle, Size=Large, Hierarchy=Loud, Full-width=True" ~/.claude/andes-legacy-catalog.md
```

## List row

```javascript
const LIST_LEGACY = {
  // Sin columna izquierda
  'Base/None/None/DescOff':        '46b73e47b2b178fb52ba89e00f7f169e51931720',
  'Base/None/Text/DescOff':        '5625b61b616c75a3564dd00d32318e1402d454c7',
  // Con ícono izquierdo
  'Base/Icon/None/DescOff':        '86b7f5d11803d4850a3902e260546eb4f41bd5d5',
  // Con thumbnail izquierdo
  'Base/Thumbnail/None/DescOff':   'ae8b2a39034357d11d2a5b07da17820abb83cd07',
};
// Para variantes con Description=On, Switch, Badge, etc. → grep:
// grep -i "Left column=Icon, Right column=none, Description=On" ~/.claude/andes-legacy-catalog.md
```

## Card

```javascript
const CARD_LEGACY = {
  // Style=Light (fondo blanco claro), sin acciones — más neutral
  'Light/Padding24/TitleOn/NoLink/All':  '002b4a9796153b009c687299f644a40e83f7ecfc',
};
// Para Elevated (default mobile) o Outline → grep:
// grep -i "Style=Elevated" ~/.claude/andes-legacy-catalog.md
// grep -i "Style=Outline" ~/.claude/andes-legacy-catalog.md
```

## Tag

```javascript
const TAG_LEGACY = {
  'Large/Off/Default':             '077e7a7cf9e493a748aca7bc5e12553bdc0ed66a',
  'Small/Off/Default':             '80312dc8cd2b62231060c64ef33420fdba6c540e',
};
// Para tags con color, icono, thumbnail o dismissible → grep:
// grep -i "Color=Green\|Color=Red" ~/.claude/andes-legacy-catalog.md
```

## Badge Pill

```javascript
const BADGE_LEGACY = {
  // Por tipo (sin jerarquía/color específico)
  'TextOnly/Large':                '3f686c34f7a2836db4c602fb4eb1d317ba44b85b',
  'TextOnly/Small':                '448da8c5b48128ddefdfa3a179c28985c1375a84',
  // Loud con color
  'Loud/Large/Green':              'e43ae7bdc83425e4d00d86e83ca326377ff29466',
  'Loud/Large/Red':                '43e57e453f71122bcb18c09b1b8a5bdfb784564a',
  'Loud/Large/Accent/MercadoLibre':'31422e9583662ef4649c440735ef4c40acce4b29',
  // Quiet
  'Quiet/Large/Green':             '464cf74a9f1d7bdefb2d98e12794a98fd585b093',
};
```

## Message (Banner)

```javascript
const MESSAGE_LEGACY = {
  'Loud/Green/NoThumb/NoTitle/NoDismiss/All':   'd9236e51b6c7ad9865eddce0eeb861451754df38',
  'Loud/Red/NoThumb/NoTitle/NoDismiss/All':     '7eace7f620cfdc128119febebccad606c7940bf6',
  'Quiet/Green/NoThumb/NoTitle/NoDismiss/All':  '7f6b7e498496705e9a768fa41f2fcc22327018af',
  'Quiet/Red/NoThumb/NoTitle/NoDismiss/All':    '45caf2ea9f418491563b1b796b44849163d57642',
};
// Para Yellow/Blue/Orange o con Thumbnail/Title → grep:
// grep -i "Color=Yellow\|Color=Blue\|Color=Orange" ~/.claude/andes-legacy-catalog.md
```

## Mobile Header

```javascript
const HEADER_LEGACY = {
  'Flow/RightIconOff/MercadoLibre':  '87101b8cdc717ae2172757b68acbc33ff172b97a',
  'Flow/RightIconOn/MercadoLibre':   '3827ced1643d9c58fa44bcaad65fdcaa15e8971b',
};
// Para Flow transparent, Section, Subsection → grep:
// grep -i "Flow transparent\|Section\|Subsection" ~/.claude/andes-legacy-catalog.md
```

## Textfield

```javascript
const TEXTFIELD_LEGACY = {
  'Simple/Idle/TextOnly/NoPlaceholder/All': '10564fc4d3642005e8cd797aea19afa1e6a7b6e5',
};
// Para otros estados (Focus, Error, Disabled) o tipos (Password, Icon, Clear) → grep:
// grep -i "State=Focus\|State=Error\|Content type=Password" ~/.claude/andes-legacy-catalog.md
```

## Searchbox

```javascript
const SEARCHBOX_LEGACY = {
  'Simple/Idle/PlaceholderOn/All':      '5e95452ad118f5128249daabd61aca0ef3e3bbb8',
  'Simple/Idle/TextOnly/PlaceholderOn': '184bb8fdbbae4d665f4c4020d8746527c6c99a4f',
};
```

## Dropdown

```javascript
const DROPDOWN_LEGACY = {
  'Large/Idle/LabelOn/HelperOff/MercadoLibre': '04944750b157a0e712b1c47c2660b51ce222021c',
};
// Para Medium, Small, Multiple → grep:
// grep -i "State=Idle" ~/.claude/andes-legacy-catalog.md | grep -i dropdown
```

## Snackbar

```javascript
const SNACKBAR_LEGACY = {
  'Dark/NoAction':   'dfcf9fd07c9f3fad2a1e07fbbb4da88c4968b40b',
  'Green/NoAction':  '01380cc5263372ddcd639dec11b52feac14c667d',
  'Red/NoAction':    '37b337a63022d1a2e6afd1900464b4e3357f7d3c',
};
```

## Tabs

```javascript
const TABS_LEGACY = {
  'Mobile/LeftAligned/3tabs/NoOverflow/MercadoLibre': 'fedad7171d5eea374bc6888dbcaede71fa29621a',
};
// Para 4, 5, 6+ tabs o Desktop → grep:
// grep -i "Type=Left aligned" ~/.claude/andes-legacy-catalog.md
```

## Money Amount

```javascript
const MONEY_LEGACY = {
  'Size24/Neutral/NoLogo':   'c6b388dba0d3becd21896ff986458e6d7c27b5e0',
  'Size24/Negative/NoLogo':  '0b831d22e400d6ff1a98d2ddc63c8483c36b73ec',
  'Size24/Positive/NoLogo':  '15abdf8d78c63da5f49dc827e14c0fd088f419e9',
  'Size32/Neutral/NoLogo':   '4fcd0dd6dc47d010877a3200a50c40c60ee3f3c1',
};
// Para otros tamaños (16, 18, 40, 44, 60) o con Logo → grep:
// grep -i "Flavor=Neutral" ~/.claude/andes-legacy-catalog.md | grep "Size="
```

## FAB

```javascript
const FAB_LEGACY = {
  'Large/Loud/Collapsed/MercadoLibre': '4236c36d8dde6e67aab3280c5773ac5fd42f991b',
};
```

## Accordion

```javascript
const ACCORDION_LEGACY = {
  'Simple/Collapsed': '9a887dc8fc8ab01d58859e244fbf1f363b2a969f',
};
// Para expandido → grep -i "Expanded=On" ~/.claude/andes-legacy-catalog.md
```

## Segmented Control

```javascript
const SEGMENTED_LEGACY = {
  'Proportional/TextOnly/Light': '5b31270136b5c7aabe728401a1d1130c6b7bf419',
};
```

---

## Text Styles (Andes Legacy)

```javascript
const TEXT_STYLES_LEGACY = {
  'Title/XL': 'f9b3ded2fbdbf52f2911c611a6ba7695fced5589',
  'Title/L':  '1bf513e7a35f5362ea1981c4c2c999e57593b5f8',
  'Title/M':  '8689921b5ad266b29994d6a74b3dc6f33f50d6dd',
  'Title/S':  '41a419251e18fb92378917307fa47eee475a0ebb',
  'Title/XS': '59ab550e8d01dff3e91c6eaa13a4fb94d8d30fdf',
  'Body/L':            '01abbb9806494739dba4bff2563728b55692d361',
  'Body/L-semibold':   'bca28973b8fb9c721404480cf8814dcb0f4a42e6',
  'Body/M':            'ce9c577a5ab26ef44eca9d65f76ba22fb0fc568f',
  'Body/M-semibold':   'f5924fa6af298b661a956e3bd6e5803907234eee',
  'Body/S':            '3758f865868d9dc8c6216ced0b8ee7739c81b78d',
  'Body/S-semibold':   '4ff75161132fcabb6110f03b25b77705b3003f80',
  'Body/XS':           '223eb8de09c2256c9a32aede903855428bf29175',
};

// Función de decisión tipográfica:
function inferTextStyle(fontSize, isBold) {
  if (fontSize >= 32) return 'Title/L';
  if (fontSize >= 24) return 'Title/M';
  if (fontSize >= 20) return 'Title/S';
  if (fontSize >= 16) return isBold ? 'Body/L-semibold' : 'Body/L';
  if (fontSize >= 14) return isBold ? 'Body/M-semibold' : 'Body/M';
  if (fontSize >= 12) return isBold ? 'Body/S-semibold' : 'Body/S';
  return 'Body/XS';
}
```

---

## Buscar variantes no cubiertas en este catálogo

Si necesitás una variante específica que no está aquí, grep por los parámetros del componente:
```bash
# Ejemplo: buscar Button Quiet, tamaño Medium, sin full-width, estado Idle
grep -i "Hierarchy=Quiet, Full-width=False, Business unit=Mercado Libre" ~/.claude/andes-legacy-catalog.md

# Si no está en el catálogo, usar la REST API:
curl -s -H "X-Figma-Token: $FIGMA_ACCESS_TOKEN" \
  "https://api.figma.com/v1/files/HeuuomAnuRV0MyLM5MmYF0/components" | \
  python3 -c "
import json,sys
data=json.load(sys.stdin)
comps=data.get('meta',{}).get('components',[])
results=[c for c in comps if 'TÉRMINO' in c.get('name','').lower()]
for r in results[:10]: print(r.get('key'), r.get('name'))
"
```
