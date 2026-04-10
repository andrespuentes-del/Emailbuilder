# Andes X — Catálogo completo de componentes y estilos

> Generado desde la librería Andes X (`ksPpKcDXCSni1iK9azu7GX`).
> 5.217 componentes · 34 text styles · 300 variables de color semánticas.
> Usar estas keys para construir y vincular diseños sin búsquedas en la API.

---

## Cómo usar

```javascript
// Importar text style
const style = await figma.importStyleByKeyAsync(TEXT_STYLES["heading/medium/default"]);
await textNode.setTextStyleIdAsync(style.id);

// Importar color variable
const variable = await figma.variables.importVariableByKeyAsync(COLOR["color/text/primary"]);
node.fills = [{ type: "SOLID", color: {r,g,b}, boundVariables: { color: { type: "VARIABLE_ALIAS", id: variable.id } } }];

// Importar componente
const comp = await figma.importComponentByKeyAsync(COMPONENTS.Button.Loud_Large);
const instance = comp.createInstance();
```

---

## Text Styles

```javascript
const TEXT_STYLES = {
  'body/large/default': '253755e27afc71ec16e17b261c45ec1e92f2e58f',
  'body/large/emphasis': '284b06220e4317ddb1dfbe422af27559168c5724',
  'body/large/textlink': 'f662a39223661162bf5c01af176ffa8a711e8601',
  'body/medium/default': 'ae3d51f608e942d6a9c022361c40596d341aeead',
  'body/medium/emphasis': '4ff93693bdf3191f6462fe777b24af2482f4f01a',
  'body/medium/textlink': '7cae918bbdb6214cb317e68d04a23be7dfce69d2',
  'body/small/default': '3e1e1b1b6ee6072c93c419c652fcf9f5b3b6eb5a',
  'body/small/emphasis': 'fe665395234647dc3df5705bfd7cdc3c23767f72',
  'body/small/textlink': '4cc87ea1e4407eb872bf0e9e7a9a67b53ee01f65',
  'body/xsmall/default': '08a975ce284ddd947dd5b59e98ab76fa66bc8240',
  'body/xsmall/emphasis': '681091e5d9b4d884d175fdb9041ddcc6113fc8f3',
  'body/xsmall/textlink': '110f33b267cd615626d048c04b3e9149e3600e42',
  'display/medium/default': 'cedd35c14788ea942772b3b9301cc117654fde37',
  'display/medium/narrow': 'e20e564aa9ec367276e4b7b1f784573746033a47',
  'display/small/default': '855c7025107d4c55dbb53634d42eb90e3d29bccf',
  'display/small/narrow': 'fb32fefaf35f2ebb07170c31939289ee22a423dd',
  'display/xsmall/default': '7801d15252360d5ec972a9f987ab251f6f82ab34',
  'display/xsmall/narrow': '91cab9c22ccb04a5465b64d2ae889fa578337fa5',
  'heading/huge/default': '0b93f15396bb8e99512efde04ac9f4b8eff4da15',
  'heading/huge/narrow': '13445f8040a14c80511841f791c72930dbe50549',
  'heading/large/default': '4aa4b7bba4b969a3fcfeb1ee98962fc40b5a6998',
  'heading/large/narrow': '5a778670de8a3b63a0b2dfd6c25513fa0e7a08d3',
  'heading/medium/default': 'c423960fcb1d711223cae035b88cab8f467c9c5e',
  'heading/medium/narrow': 'ee3aa78bec5ab89f5a11311133d90cd82281a6f8',
  'heading/mega/default': '15aef11a584f40096b5c545b1d697878e244c21f',
  'heading/mega/narrow': 'd32ad93e95650b259a71f401b84fa20a02a1063b',
  'heading/small/default': '9ad9ce8511b530c691436fa1af5ff6a319ea29ee',
  'heading/small/narrow': '606474e9e6e2c187a611e3aa123f2933e7c4798c',
  'heading/xhuge/default': '9317a5271e8dbf98ed5c3f4bb41e145c6c5bc8a3',
  'heading/xhuge/narrow': '65cad35cd6fcd308643d4ceddead315cd512823f',
  'heading/xlarge/default': '69f8db0c9a60025d406f93588c1fc843363eb315',
  'heading/xlarge/narrow': 'dcd4fda40c617b368dba12e1e9d1050c58ba21ce',
  'heading/xsmall/default': 'c3785653cbc4fd956a0fed73e58556b0b4ae6e84',
  'heading/xsmall/narrow': '5d508c9dbed7102fc3621b50d4203719f14bb50d',
};
```

## Effect Styles (Shadows & Glass)

```javascript
const EFFECTS = {
  'glass/default': '78e56d0318c483caf3aaa3a748a7da2be2ffb93c',
  'shadow/high-bottom': 'b403e01c4977f7a1b4192df0765bf2d60f2e2af3',
  'shadow/high-center': '782f84a35a11f7b8e05a051b0ce50bd938b1bafd',
  'shadow/high-top': 'ce0d579469af298f12c41ea64a48468e7b9e784b',
  'shadow/highlight/accent': '13d982d81b943481fa1ad361992ae5fed352e979',
  'shadow/highlight/caution': 'ffaca59346df7f5477b42c44a9865f7255657284',
  'shadow/highlight/negative': 'be9d1fe9898531d09949fcacd85c6536ed0cd1e6',
  'shadow/highlight/positive': '859b95b6f7c61a3bd38dc9ebb76e8b42432a9728',
  'shadow/internal components/card': '0eae5ae694acbe683aef00954dfb51a5e2800840',
  'shadow/internal components/coach-mark': '90eea31faeab1b5c98abf48e7ec69285c54fea68',
  'shadow/internal components/segmented-control': 'b45eddcfcc8ca7ffe8a889bdb3d6f562b4162f93',
  'shadow/low-bottom': 'd9337c8cd26c6060b01bee723c38faa406ebdfcf',
  'shadow/low-center': '7f1e9b2a04a63e0c8dfe67c2511a8d0de59acb52',
  'shadow/low-top': '9acd234842899fb5d2a4c7b88accfdf1218cff95',
};
```

---

## Variables de color semánticas (Tema Andes X Light)

```javascript
const COLOR = {
  'button/loud/bar/color/fill/loading': 'b8dad0fa25d59ece0ccf065696bd315c9052e48f',
  'button/loud/bar/color/fill/loading-on-fill': '6a3fef8df26f33a09c747d589956490a2f34a3b0',
  'button/loud/bar/color/fill/loading-on-fill-inverse': '761619524e27d490e0688a21b7fc58491b05ab71',
  'button/loud/color/fill/loading': '0b7eb4da4a2ce3cabac3fb77694b034bc77b61ce',
  'button/loud/color/fill/loading-on-fill': 'a54c6167b3ae9459441ecfc465df58ffc856b948',
  'button/loud/color/fill/loading-on-fill-inverse': '82d1b67a41bcdc500e6fda5a111647522582f021',
  'button/mute/bar/color/fill/loading': 'a668819fc6efa2a712c685b1c6196355ffeeb9cf',
  'button/mute/bar/color/fill/loading-on-fill': '1fc3cdc747c172ffdc88bb0cff48c238aa216953',
  'button/mute/bar/color/fill/loading-on-fill-inverse': '9b5fbde334203450a07ac4b4f8f88ca48c130edd',
  'button/mute/color/fill/loading': 'a9a79daed16a6987887e4c3f98ddcb76122e2665',
  'button/mute/color/fill/loading-on-fill': 'a01b4cca70013ab5985adbb1925044e54fa26995',
  'button/mute/color/fill/loading-on-fill-inverse': '8e53214a952061394c3a0aac679fd9f91faa699f',
  'button/quiet/bar/color/fill/loading': '34c0688a226a6a53b0efdf29fc2f3cb03ba969e3',
  'button/quiet/bar/color/fill/loading-on-fill': '48b86ca4c4ba3a6deeabbc0d040c3aa89e200f82',
  'button/quiet/bar/color/fill/loading-on-fill-inverse': '1e47c4b250efc836a2b272f378c75bcd75140f10',
  'button/quiet/color/fill/loading': 'bda83caa8339d82ce2551387ebf897c51885e027',
  'button/quiet/color/fill/loading-on-fill': '701b421b7f9419c0ea4d89409c3ea030aabad8d5',
  'button/quiet/color/fill/loading-on-fill-inverse': '4ec9fc85519edbe216bc3ef32e7d599b9ecd0c7d',
  'button/split/loud/color/border': '78ff8011b320f08d79fcd6c9074e7881f9df9d88',
  'button/split/loud/color/border-on-fill': '79744f9d8ad5e5185165a03626142f0af56cfb6e',
  'button/split/loud/color/border-on-fill-inverse': '0223a473dda98e313b08e91f6dac0252e3889e02',
  'button/split/quiet/color/border': '4e3f37998d83cc29c1b19e0fecfccbf2a2b9dc35',
  'button/split/quiet/color/border-on-fill': '64466b185b9151ef328a6369800395973b371ce8',
  'button/split/quiet/color/border-on-fill-inverse': '83ec6055f3808a77f28807700d06b599c681c12a',
  'card/primary/shadow/color/default': '2f6dc239dab643231346d03d3013d8e092d93c93',
  'charts/color/axis': '9ea88cf79658539cfe3287bd690f8e1d3aeb55e5',
  'charts/color/data/loud': 'a21c8016272622a06a39b143a802283a575d4f52',
  'charts/color/data/quiet': '501fba2baa4fc8f2279488667c54e6772466bbb3',
  'charts/color/data/reference': '501c80a02e9a32c953728535480493ea0cc26042',
  'charts/color/gridline': '16ea398cee00777aa02b0f3427ced7a9fe81325f',
  'charts/color/interactive/data/loud/active': '9f6bb10820d2e403a9aa1e8623899971a8b5a17d',
  'charts/color/interactive/data/loud/hover': 'e00bfb1337df0b9cf1b4675285c937d7a48207fe',
  'charts/color/interactive/data/loud/idle': '9732092cf490aa05da68ad40c820cc5d6e4bc93b',
  'charts/color/interactive/data/quiet/active': '098968c439be3e0a6b5564255b155df91b5f9b25',
  'charts/color/interactive/data/quiet/hover': 'f3a49a3d8e5542cf9f174ac11f1e616e886ea3b4',
  'charts/color/interactive/data/quiet/idle': 'fce88be829a29576355c2567a1b4a388dee427be',
  'charts/color/reference-line': '80d8ffeb9eb91e7891503248b17089c023f1535b',
  'charts/color/selected/data/active': '443d38521e5a59e7b28fbb76da867cd217e05317',
  'charts/color/selected/data/hover': '61af045ef588c3de26b36dbc73319ebe4f13db5a',
  'charts/color/selected/data/idle': '563c6306b820281a4202bc4492da624f3da597d2',
  'coach-mark/highlighter/color/default': 'b60865c3df24ffcdfe83d0918f44a58e8068ba4b',
  'coach-mark/highlighter/shadow/color/default': '8ca683fc6c81c036b4b111e213df05f774d7681d',
  'color/background/overlay': '27e5b3fff204fe53d2df74633bc8090de41c5c63',
  'color/background/primary': '2b807d067a7a38121777249695adfa45f7b8234e',
  'color/background/secondary': '563df5991599d95d486011468b7f77ac1b743d51',
  'color/background/static': '43f9cab400312e40479aa5dd5e7e3fa84ca8240b',
  'color/border/accent': 'f7a03fd8b119fb3d12afb0a3b44a84d464f8dff7',
  'color/border/accent-on-fill': 'a3ab6a72d6dd247978de628e6d36425b97064e64',
  'color/border/accent-on-fill-inverse': '715ff3068bf944402a8d132fa542559c49ff6bcc',
  'color/border/disabled': '5dcc868f8b5119ae4b2c524b73bc33b3278cb978',
  'color/border/elevated': '8016386cf9b88b7c57a7d2f96778adea2f2aa550',
  'color/border/inverse': '838b742e9aadd39ae7b5575a195a1952238a5b77',
  'color/border/primary': 'dadddacb8897edf606edf68b05119e2f95bb3a30',
  'color/border/primary-on-fill': '5834447637afe37350e09081e40f04f9f8fc9e5b',
  'color/border/primary-on-fill-inverse': 'cf14bb4cf20b118f4114d3d60db820e8803c3941',
  'color/brand/fill/loud': 'f1afaedf14c7ca8608bd42b6b001991beb3eaa3e',
  'color/brand/fill/quiet': '8043ffeb7d8e05cef08587f1d693e529880e6ba0',
  'color/brand/gradient/end': '6cdd99c5b0733cd9b9400170debffb6a12d61823',
  'color/brand/gradient/start': '8bd517c6995d9aa434ba84592c59a5815e60a78c',
  'color/brand/icon/loud': '7a30f3cc2f32e085acaf97807be73e7e916de90a',
  'color/brand/icon/loud-on-fill': '5572b4db28cd052f0d49deb8e90120c9b5a97ffe',
  'color/brand/icon/quiet-on-fill': 'd722620ef318a31eb1ba903ec8b01fba4efe4cd9',
  'color/brand/text/loud': '5a7fc507a826b4c8c68391fd0ce792f3c029e64e',
  'color/brand/text/loud-on-fill': '7faf136fb5b88da6a5ccfa2fa5054c23dc321636',
  'color/brand/text/quiet-on-fill': '6d846f9e412b9ce4c8405e8f20b28d5a4f4929c1',
  'color/feedback/border/caution-loud': 'f2be8c30a6b603d4bafe9edbfc782ceb7c8a83bc',
  'color/feedback/border/informative-loud': '836f84102a7c9d6f727fc1ac87f6d50b082a5d93',
  'color/feedback/border/negative-loud': '46ab462a069f9cec733b6938a62d10775df99d2b',
  'color/feedback/border/positive-loud': '97b5ba9f97ed3f613fa2b7ce5cc4e4e64e57c2dd',
  'color/feedback/fill/caution-loud': '1d2d4675dc38926b940e23b5d47a2259ec52f3f9',
  'color/feedback/fill/caution-quiet': 'c97a37faf04d08e47a417f3032422e07afb6e5bc',
  'color/feedback/fill/informative-loud': 'b9aa683e927ab96e3c88b404c9be0885bb4744d5',
  'color/feedback/fill/informative-quiet': '10340d7bbfec816a9f9b494557c5016fcf37bf34',
  'color/feedback/fill/negative-loud': 'cd94935eac141c1f6078c494f2f238b0da8c58b5',
  'color/feedback/fill/negative-quiet': '00bf1d911e96b571398c6db88f8d174bc40b2808',
  'color/feedback/fill/neutral-loud': '551f3e7021bc49a860dd3bb4b29c5cbdb66262df',
  'color/feedback/fill/neutral-quiet': '7701abb261f675adc6f06f8c91ceb38493292a36',
  'color/feedback/fill/positive-loud': '55497b7b1fd803c24d59556d35e75a22d3eb63a0',
  'color/feedback/fill/positive-quiet': 'aa85ae7ada7756a8ff86c884d92d30697c0b4d37',
  'color/feedback/icon/caution-loud': 'cc21875ee1f44527872c057bfaecb22e69b6b49c',
  'color/feedback/icon/caution-loud-on-fill': '7e7b9ff0ac003bd8b5e0a7c7ceff2f241beff9bb',
  'color/feedback/icon/caution-quiet-on-fill': '9409e3bd1152f18b092ef70085df51ee5c4e3da1',
  'color/feedback/icon/informative-loud': '34a491d93e4da1f6020fc9a2a84a420c892af737',
  'color/feedback/icon/informative-loud-on-fill': 'be5fabf25fb03014e7800f314907a256444fead2',
  'color/feedback/icon/informative-quiet-on-fill': '7d2b510768cb2b1a1ff821f4ca247bd8866c48cf',
  'color/feedback/icon/negative-loud': '71d546df72252f61655e38f03e7fffde16b051d8',
  'color/feedback/icon/negative-loud-on-fill': 'e10c607d620347ab13040e9f6b309d8fd444720e',
  'color/feedback/icon/negative-quiet-on-fill': '0731f53fe34dc86460e9dd41f106b64cb557f3fb',
  'color/feedback/icon/neutral-loud-on-fill': '10faf9a0d553abdd785f618c5d0f05a01b905d9c',
  'color/feedback/icon/neutral-quiet-on-fill': '11509f07abe934d78b019ac3cae48f626e057676',
  'color/feedback/icon/positive-loud': '4de83de0e42b4f84daee90eff063948f31416f35',
  'color/feedback/icon/positive-loud-on-fill': 'efcf63e07313a654ae9f730df416ab0ef69e0440',
  'color/feedback/icon/positive-quiet-on-fill': '30afb50e0828373bbe199e6fde824c363a24ede9',
  'color/feedback/text/caution-loud': 'fe2127688403e628a808cb4413bd196fcf43a63e',
  'color/feedback/text/caution-loud-on-fill': 'eb314cd7463ed1a67a78e0880ce707f9a132f06e',
  'color/feedback/text/caution-quiet-on-fill': 'b5bb570aa7ee24c1e018fff95b5e657a424b9903',
  'color/feedback/text/informative-loud': '8784f100d0977b5ae589b53fbbd9850cd03e9f72',
  'color/feedback/text/informative-loud-on-fill': '3e4b26378ea3cbbd92e49b7e8636c9c7e4bc0b3b',
  'color/feedback/text/informative-quiet-on-fill': '702d1592aea1fb43a2bf9d2eafb817e71b06a7e2',
  'color/feedback/text/negative-loud': '223983dc0e7d463574e81be438cf6f13bd3e94c9',
  'color/feedback/text/negative-loud-on-fill': '4b2bf1d6bfb8ed8c48417142eab7f9092aecc76e',
  'color/feedback/text/negative-quiet-on-fill': 'cd6b701fb5a93f03d9b5e631bb165735fda5ec3e',
  'color/feedback/text/neutral-loud-on-fill': '16a6f2a6c72fa6a236f1a5aa4bd2148670873c2d',
  'color/feedback/text/neutral-quiet-on-fill': '6c880e69ba6de9c8d9ad1678713b83b414bd5051',
  'color/feedback/text/positive-loud': 'a2835446e39f0bf52dbb9ede11ca8913f760b424',
  'color/feedback/text/positive-loud-on-fill': '91ca36c15e8eec52414f5d21d4a810a3b3a2ec48',
  'color/feedback/text/positive-quiet-on-fill': '1d39b8abdc738fb8b2ff481a91152490d06e5d1d',
  'color/fill/accent-loud': 'b57301afaa7908ec3ca9b487e97a5cc47fa5bcdd',
  'color/fill/accent-loud-on-fill': '64695da35721f9607aa682bce5ff530793153639',
  'color/fill/accent-loud-on-fill-inverse': '580674b477c11ce6ba3aab040cc39ad369fb25f5',
  'color/fill/accent-quiet': '6e67193fc89a9c62338e58cb2f6e2a1341e57433',
  'color/fill/disabled': 'ee000b98c06df070dd047e1f9c8bfed707ba5c79',
  'color/fill/disabled-on-fill': '6907c38badcbcf2c8812624087654d4d9627fa1b',
  'color/fill/disabled-on-fill-inverse': 'b620134302837030307ad107c802ca931c528116',
  'color/fill/inverse': '9b84becda0e0995c851994e9f67e9153c50ed996',
  'color/fill/primary': '1cac600f118815e1d912ffa7574862aee2e7ec58',
  'color/fill/primary-on-fill': '6b3616b3583851babd5517a1e84971ea5a0ef351',
  'color/fill/primary-on-fill-inverse': '29f3384dbc91157390a2183a8a158779b4712f67',
  'color/fill/secondary': '5a578362234682ae6941d71e32129dcf5c2d524f',
  'color/fill/secondary-on-fill': '5508ef9d7746d94d89865baf33053d15c77f006e',
  'color/fill/secondary-on-fill-inverse': '1636202aa6561391e88ff6f4606385c75c49b70e',
  'color/gradient/skeleton/fill/default': '5e172b56e79ef4a489aef4522ce7e4ee38dc3b0b',
  'color/gradient/skeleton/fill/early': 'bd66bddb4932119d7964a30abc9effd00758e7a3',
  'color/gradient/skeleton/fill/end': '22aa5acc7a538d7f00f21dd72e320fc1d188745f',
  'color/gradient/skeleton/fill/late': '61c90db0fbefe4fc5b353939e113d816cd337306',
  'color/gradient/skeleton/fill/middle': 'adf2de01de6197f238eafc684b4a33d3c05e1f3f',
  'color/gradient/skeleton/fill/start': '1b5e7155cfcf4fd3754d7f433bf2ceef302477fa',
  'color/icon/accent': '34f09943848033cb5ec88866d4e904b80626e79d',
  'color/icon/accent-loud-on-fill': '190f9e968e4ea66c7642d4a77c447cefad257ca1',
  'color/icon/accent-quiet-on-fill': 'e696b28f8a4b03b972474f74c4d51bb29cd39d96',
  'color/icon/disabled': 'a24b8a48e042ec004b9e936b20b545a233678e48',
  'color/icon/disabled-on-fill': '2d373743954d2244837eca22f4679255730b7e18',
  'color/icon/disabled-on-fill-inverse': '5a5b52fe875f9eae0a119ad59e39f86fe6f9151c',
  'color/icon/inverse': '9c23f40d6798a4f57721ca44a8a0ed6dfed5b06f',
  'color/icon/primary': '0f4be5af0b549ec7f2f9be4460ca87d5448612f7',
  'color/icon/secondary': '0a8c469b4996ee34d6ee99ec8a57ecd2700b352c',
  'color/interactive/border/active': 'f63b615f68e473269d6b5f7767e1e7d8270346b1',
  'color/interactive/border/hover': 'bb1133ca3bd831d075f269af9c33dcaa510b1eb9',
  'color/interactive/border/idle': 'cb3ab3c289da5845e4b56897700e80b8f14e15ef',
  'color/interactive/fill/loud/active': '01163889a64013b1dba0cb6083fb572aa31512cb',
  'color/interactive/fill/loud/active-on-fill': '3c9d6f11948f2b5b7cfeb77e13e84fa79e6f5231',
  'color/interactive/fill/loud/active-on-fill-inverse': 'bb73532bd12b570b4858b7e0f1c3ba7aefe7b2f9',
  'color/interactive/fill/loud/hover': '11bc85eff95c84b37361450785830e63df336514',
  'color/interactive/fill/loud/hover-on-fill': '12ab090c1c47bebaa2baa11366a082fe610f3d2b',
  'color/interactive/fill/loud/hover-on-fill-inverse': '3bec5a67cbdc5f6186e8e4a1abdabb1d4053caf6',
  'color/interactive/fill/loud/idle': '9571ec4e8072a6b0806b5b0370c593454dac3e3c',
  'color/interactive/fill/loud/idle-on-fill': 'aa4ed95013cbc9fab8d2b5e95c12d0bf50021c17',
  'color/interactive/fill/loud/idle-on-fill-inverse': '0e117e4db2b246ae17c0041747978b20a5f84a90',
  'color/interactive/fill/mute/active': '451f88fdd06471e3843544dfda9b2d3540757de1',
  'color/interactive/fill/mute/active-on-fill': 'ab2c8fc76650c85251e237f66c2fc9fde33a703f',
  'color/interactive/fill/mute/active-on-fill-inverse': 'e069de34e969c93fb0e66e43fda3690d0d77bef9',
  'color/interactive/fill/mute/hover': '798d0baacb764377c6ba583f1f3186952bbbde31',
  'color/interactive/fill/mute/hover-on-fill': '7f4038a3788443251b7e2f35311f03c1123aea68',
  'color/interactive/fill/mute/hover-on-fill-inverse': '0528cd6b940b8093b18381b8d1a151e7e0b9d9da',
  'color/interactive/fill/mute/idle': '5680b0a4d7d026c5d75406110671de3d6ac28cf9',
  'color/interactive/fill/mute/idle-on-fill': '79a517464a713e3dd76d06823f5f62468420986e',
  'color/interactive/fill/mute/idle-on-fill-inverse': '5c0372dba2ec1e7542da367408dc72ebee8e96d2',
  'color/interactive/fill/quiet/active': '7c8c8c5558330e1e5287de25cc6b942f232ba768',
  'color/interactive/fill/quiet/active-on-fill': '8f20d10ec5ac9e26f7fd6717f620fc7ba74a81e1',
  'color/interactive/fill/quiet/active-on-fill-inverse': 'a62ffd6afed68ccdbff080278c532a6fc346e87d',
  'color/interactive/fill/quiet/hover': 'f24f76f53e0a166263ef6a79a582cd9a68ce5965',
  'color/interactive/fill/quiet/hover-on-fill': '53f577549f40a799117b6d12143e678e9a791ac3',
  'color/interactive/fill/quiet/hover-on-fill-inverse': '6fbfc28df8ce17274a20665c1c5000e624591fb1',
  'color/interactive/fill/quiet/idle': '26853f462c5c8b4353878ab65c31849dab6ae597',
  'color/interactive/fill/quiet/idle-on-fill': '1d1807fdfc8089309de91bb2c3a99c5b65c93ff5',
  'color/interactive/fill/quiet/idle-on-fill-inverse': '4a745a96e8e8a90679182d7582b3c1f626e33136',
  'color/interactive/icon/active': 'd849274d05d5bcde62daf6ac6ee99001600448ea',
  'color/interactive/icon/active-accent': '95f1d85b5fe1406df4d6ea3bddff1c7f27d72b04',
  'color/interactive/icon/active-inverse': '4cb1140d9dc436e6b5cff19f0643cdb91387ef06',
  'color/interactive/icon/hover': 'd5b03dc5b9c7b06f2492ed60526716ab6fb25d4e',
  'color/interactive/icon/hover-accent': '860a24928f46515baa7942f68991d3ba23f86fa4',
  'color/interactive/icon/hover-inverse': '39f4ca5a97f293b09056df19cdbbdd26dcffd884',
  'color/interactive/icon/idle': '9cd23bd1052851356aafc92b1a6523e5473cd281',
  'color/interactive/icon/idle-accent': 'a1f8eef4304cf03aba89a344793220848a5d67aa',
  'color/interactive/icon/idle-inverse': '32cecfa8720371f1613f676ca873d16b17d5f472',
  'color/secondary/bluebell/intense': 'f5e94d1eb3bb8d6ea35bda12e2817490ce1e95ff',
  'color/secondary/bluebell/soft': 'd0ad416fc3537619cc3bd5c8706f41650236b1d7',
  'color/secondary/bluebell/subtle': '6e4e307c958ad965fd399f9541d1d995c9ef5b29',
  'color/secondary/bluebell/vibrant': '7a71b0e799d6f8aa0aa1c2413f0b48565c1f1836',
  'color/secondary/bluebell/vivid': '5746a644ee0bb6d7e21077974139fcfd101e5346',
  'color/secondary/lavender/intense': '802315f0877785fe3feef62e1da06988d9497bd9',
  'color/secondary/lavender/soft': 'c9104264072e3bb98d0aa6eeaad240b7dc828828',
  'color/secondary/lavender/subtle': '0bf2ac555125044a1ff135ec4ba75288b7e1fa71',
  'color/secondary/lavender/vibrant': '6e065a5ae2705ecbbe6008ff92a479c6db555178',
  'color/secondary/lavender/vivid': 'a79cd5e060f893c266de0ecac7c242559df54d69',
  'color/secondary/lemon/intense': 'e84857ead472e118c6012b8f469b82b70059ac80',
  'color/secondary/lemon/soft': '505dd45daa746af6c26746881b25d55b6a74582a',
  'color/secondary/lemon/subtle': '4cef86775045936f275fc7015c5632dd91aa5d5c',
  'color/secondary/lemon/vibrant': '314120a9a660cd506e913f0157ebf83ebfd89e0a',
  'color/secondary/lemon/vivid': 'bd73fbd272af0e5b3db1370d8e108c9587bfb53d',
  'color/secondary/mint/intense': '06d3eb2f918dfbba3d73f0462b6a09f31f3f5d50',
  'color/secondary/mint/soft': '62702afa7a27aa3cf1c34b56a461fbbe52eaca85',
  'color/secondary/mint/subtle': 'ac447a356fc17cdab914aeae5ee5992080be760c',
  'color/secondary/mint/vibrant': '02b877efb1b7cec49e4febb07cd86dd42546560d',
  'color/secondary/mint/vivid': 'e7c9ddc3099f099339094210891dedf81298e48d',
  'color/secondary/peach/intense': '4966467a69532b5e0d873c2eb7126a2eed19cc37',
  'color/secondary/peach/soft': '80bcb17a14a63a22e48c46adfd4908d4d677e9f4',
  'color/secondary/peach/subtle': '667e39a342b6c17614c1de241f4f88b28f74b14b',
  'color/secondary/peach/vibrant': '803bea2f8910585e5e450110c4f57e24544d3627',
  'color/secondary/peach/vivid': 'cfe1d8f02b653038d019b7c4919766bd1c180f1e',
  'color/secondary/rose/intense': '13cc98dc8048f8c2489816f911605abc642c2f86',
  'color/secondary/rose/soft': '57103abd22f0373354563d6583ad06686cbf8d05',
  'color/secondary/rose/subtle': 'bd01323198be6ad45b7b58172b2fe6aa3e6f64df',
  'color/secondary/rose/vibrant': '47a5c0c2acc9de72da2b1a0084128d4fd88dffc2',
  'color/secondary/rose/vivid': 'bbdc05406da6d70019914199df31b3b9aaadca4b',
  'color/secondary/sunflower/intense': 'a7eba1458c57b2660e9c3258eb6ca102666468f8',
  'color/secondary/sunflower/soft': '0e351680f22d4755573925906c05e979337f92e0',
  'color/secondary/sunflower/subtle': 'bea223460c012585457eb364c63ec23ebc824157',
  'color/secondary/sunflower/vibrant': '89e0d412ff0c8ed5b1cc1407aa0be73a4f97d3a6',
  'color/secondary/sunflower/vivid': '18c1a6fd41fe03ac23a4b2c069fcba74c6658b82',
  'color/secondary/violet/intense': '50854d5e4413eb9a6caa56efcd786c07250918a7',
  'color/secondary/violet/soft': 'd73a703d66f10047e7cab800029b2c46699f6e3b',
  'color/secondary/violet/subtle': '8fde5fda4de3a2e6b74fa2669e95dedcd7ff4bf7',
  'color/secondary/violet/vibrant': '8c8c66460e85e5b4c87873b6a402e5921dcac152',
  'color/secondary/violet/vivid': '0026aa5a021f721e6a8299652363026d2fb53414',
  'color/selected/border/active': 'bc975166dfac157d70dc865bcdbbb550687c987c',
  'color/selected/border/hover': 'd7c1434d1af12108a768a0f7e0a3a74eef4c411a',
  'color/selected/border/idle': '9ada19a08ab4311d9ec4358b150eba547a0816c2',
  'color/selected/fill/active': 'a7378d6a8d105a6019046a80ff7aadbad8316223',
  'color/selected/fill/hover': '53a8c5b080ade0ac10ea45d583d9bd380a7260b8',
  'color/selected/fill/idle': 'eb545a681b0948d5d1602fe0971f67f152ae337c',
  'color/selected/icon/active': '510b29772fdbff3ef9801dfd820263c108a38491',
  'color/selected/icon/hover': '48f6d0af1d0673ccc0658e06d06d13e3e94b6ad9',
  'color/selected/icon/idle': '69b1d726aaaa876dcabe85ab0b41442fe29fea26',
  'color/selected/text/active': '1c6f46b00e21451682a7d943309f2a63f06a58d6',
  'color/selected/text/hover': '7c270c73bfb365c757d1b5c18bdd8aacc9eb0f64',
  'color/selected/text/idle': '89461d84e94b49921eb33b26e2b3ffb0667e8ce3',
  'color/surface/elevated': '20cda0df9a46807159b4af5e422e5e3edfe3e165',
  'color/surface/primary/active': '1e03a8784ebaefac2af55e5e7acd169d008b3e72',
  'color/surface/primary/disabled': '79a5d38660e7d3de65e1d60a622d97d121c3b830',
  'color/surface/primary/hover': '9da0dd1df30d9e161e369c92efd62420558cab29',
  'color/surface/primary/idle': 'b6140e8882351b6d4b594c90e2a426dc36cbe91a',
  'color/surface/secondary/active': 'b355c2a8e6fa763c40723a4d62807941a46fb468',
  'color/surface/secondary/disabled': 'a441afdc65de104906781105d4c2bfac5b061b80',
  'color/surface/secondary/hover': 'e2493b4308f9e6253b8e686e47c994593075eb9d',
  'color/surface/secondary/idle': '01c8e5d487a76af0c3c5903cd1739078ac9466dd',
  'color/text/accent': '51a4e7bc230ecab881fba7248e05a0103e2fc313',
  'color/text/accent-loud-on-fill': 'e76aabac809cca7157ce2b87a14a8d44e5318b28',
  'color/text/accent-quiet-on-fill': '4f03c852c4b9c06efa97483d5d71c896d4decba7',
  'color/text/disabled': '588166df98d327b3aaa4a9c6a0480d78d3ab04dd',
  'color/text/disabled-on-fill': '301fd7bbe6a57d96a63c82ea9b863bb0c5f7b3f6',
  'color/text/disabled-on-fill-inverse': 'ed5f4b5ebd730f38ad67e3a6e50f39daca14e155',
  'color/text/inverse': '9df12eeb1389c16d55b8ddc4595e2227b94ebb4b',
  'color/text/link/active': '3b1f9e1c1fc5ab9da6995fb449425311d43c8c2f',
  'color/text/link/active-inverse': 'd3e27768569cc8b27e3779c22d0ca7bdd1229138',
  'color/text/link/active-neutral': '503f7671f63fb91d2be33a22f8a89150de20298d',
  'color/text/link/hover': 'c959c9621216451fdf3f89a9116556ff1431840f',
  'color/text/link/hover-inverse': 'f7c67374d42bf01dac7acd7125305508007d3601',
  'color/text/link/hover-neutral': 'e87840a5399487bcbaeca4f99760f08142f0af96',
  'color/text/link/idle': 'bf65aaff402e10351a5a47ca77898d7a9c6c21bc',
  'color/text/link/idle-inverse': 'ca737d400231c3cc433a28a4aa7e0b7b3f0af5b6',
  'color/text/link/idle-neutral': 'e9cbdd51f06f0b4e193e61cd74b4f4427b563894',
  'color/text/primary': 'd18c6028942f6305fdd1b4870da113b69ba1f18d',
  'color/text/secondary': '137f2796c1e1c4bda80ca7e8b6ccb3f76f20302a',
  'date-picker/range/day/start-end/color/selected/fill/disabled': '885f90b82193e8a9a3a5233f3c5405df08138379',
  'elevations/highlight/positive': 'a010fda0969ccb079da95a49bc36bfc95e076ffd',
  'fab/quiet/color/fill/active': '39b5f06495ba135356a82c2b09a48385e4a28b29',
  'fab/quiet/color/fill/default': '5bd172a1c81f36eaafcba3b756c252d4f8979a7f',
  'fab/quiet/color/fill/hover': '4a83ce9647e5d1f6caff73b7fbe932a6983d1290',
  'glass/color/default': '629b67e5c6922b933c261451f722ea600e11cd75',
  'header/button/color/fill/default': 'c8cb4ef5cdcd6ecb8fff20f2b1027c41fb39418f',
  'header/button/color/fill/on-fill': 'bba407ee896d22e4c364b553d974e1b43aad8b11',
  'header/button/color/icon/default': 'a0db0c2057962b4d88ff319df1d00a044b6123f4',
  'header/button/color/icon/on-fill': 'cf93549ef8e248fad6f282bc25a3357b70c663f3',
  'header/color/fill/default': '7d4bca620bbe9c0e5e6dee657feb0501f4f62cf8',
  'header/color/fill/default-on-scroll': 'f629f6432772069c48c53b61c5b9adc2095e4a62',
  'header/color/fill/on-fill': 'eb7c7999cc24a2272ee2430c0d03dc4146e0d53c',
  'header/color/fill/on-fill-on-scroll': 'a2475965ba1075fe07ca23bce52d8e2e94ccc054',
  'header/color/text/default': 'c94509592c70cf4486ce59c9b420e77b6de57493',
  'header/color/text/on-fill': '93f494069b4652b92db6eb179201d622a636da66',
  'header/shadow/color/default': '309379600dabaf2d22107fc53be1cfcc5dee2539',
  'segmented-control/color/fill': 'f013485a84296108a4bfa7e08fc83f77a5a766db',
  'segmented-control/segment/shadow/highlight/accent/color/accent': 'db1868c9582e176173471d3ae7640891dc33dbd7',
  'shadow/high/bottom/color/default': 'de4b1248c5e83c8e39c106c2522487df695c6d7b',
  'shadow/high/center/color/default': 'eefd43b9c2a6f4cb50b288406b8c95e49ce144e8',
  'shadow/high/top/color/default': 'e6a0ed91dcff45ef799549238bae64a901585390',
  'shadow/highlight/accent/color/default': 'ce706bec1bfe1fb6cb9b3cf428e399fad9357db7',
  'shadow/highlight/caution/color/default': '0a847e53b4b2e51f7c8f387c71ff2fa944d86470',
  'shadow/highlight/negative/color/default': 'e37fc52f1cfb0819ce9cc3bf4a579f49ab4d0a19',
  'shadow/highlight/positive/color/default': 'f537bf6c05bf151abd86f9f4812a57eb1270da89',
  'shadow/low/bottom/color/default': 'ed6aba1df2b194bb75fb0ebb86943b6614e7b9c5',
  'shadow/low/center/color/default': '9f7df3c48cf82c5b32142c98bc3af49eba0ab659',
  'shadow/low/top/color/default': '6883252d72c79b8b13bf9a625907e4b6d50fde27',
  'slot/generic/color/fill': '7ae525885f8dbd95ebb2dcd4fd9470f6f6ca3c79',
  'slot/generic/color/icon': '25b11ed83267b8b8261cd7f73834846aff1687d4',
  'slot/generic/color/text': 'd2f0a601cd6e0dbd853d8dc7c5a3830d39e75806',
  'slot/illustration/color/fill': '736e05c264fd20809850292f17544120c4b8590d',
  'slot/illustration/color/icon': '41e63bb49f58686c0a505da68e0b1da74bdd96f7',
  'slot/illustration/color/text': '02ba56aeba193115d73ae9ce2c8fdaa8192ca6c3',
  'tag/color/fill/caution/active': '4333db324c538cd13a2f016b18d76658de8867ee',
  'tag/color/fill/caution/hover': '25434d57e22e085e282251136cb910a5f9778a28',
  'tag/color/fill/negative/active': 'cd93bb969f15f3a6bc749179d8865b52c4248c41',
  'tag/color/fill/negative/hover': 'be3bfe5125c7508f6c24d11e8c610b715ac8ed51',
  'tag/color/fill/positive/active': 'f00c5580ef85b1d0548e645a10008a67d2c7e5e4',
  'tag/color/fill/positive/hover': '84a3b4b29013fc3aa6c6e2b0cb04f48ca861621d',
  'tag/shadow/highlight/positive/color/caution': 'ebe04449d213ee45daf93446e5b627ce0559294c',
  'tag/shadow/highlight/positive/color/negative': '3797e0d9befa273c733f319085ec322e22738757',
  'view-indicator/color/border': '7863e531013adc69301abf29e9707f503456d7ec',
  'view-indicator/color/fill': '8a5c787d2083df538aff443cbe0807518032f05a',
  'view-indicator/view/color/selected/fill': '13b6452f5bfdd9a0eb5770e1874627ad02020254',
};
```

---

## Componentes por familia

> Para cada familia se muestran las 3 variantes más representativas (Idle/Default + Large/Medium + Loud/Quiet).

### Componentes clave (keys confirmados y verificados)

```javascript
const COMPONENTS = {
  Button: {
    Loud_Large_FullWidth: '031c538d3dc423d4ca7b55a7809b2de8861d4642',
    Loud_Large: 'f0fba99d5c4e91bce792522e9306a847d25d024b',
    Quiet_Large_FullWidth: 'a5902aad31c226f37dc3d3f8cdc1b8b01f4c96f6',
    Quiet_Large: '9b9fffa98f2762a6feb0e9046baff1708fd18fe2',
    Mute_Large_FullWidth: '326bad76520eb0abf39724bc4c3865d170fb1ba0',
  },
  Tag: {
    Positive_Large_NoDismiss: 'aac56baa3d0bc21f529fb674da99c679313dcb9a',
    Positive_Large_Dismiss: '2da8cd3de8b276638bbbd0032e6eca492bc5393d',
    Negative_Large_NoDismiss: 'd56e6dd02b9f1f7b6e951545918dd67b80c91868',
    Caution_Large_NoDismiss: '2e53afa12aae417a4f83345249a0639bd5d0c53f',
    Accent_Large_NoDismiss: '7a43a62d5bfc69534d7c5eddd3a8a2cb6b1ae136',
  },
  Divider: {
    Horizontal: 'c9273619cc20c6d51835ca47c4d01d4d8df5681b',
    Vertical: 'f7c6d4e7fbce5d7dfd7df533ed5a807b9f9dabd3',
  },
  Textfield: {
    Large_Idle_Singleline: '4a09e153e898e5166b3bb3d62612ae0f453a5794',
    Large_Idle_Multiline: '918eaa26b93474cd5a818511784e6fe74f024a6e',
  },
  Switch: {
    Idle_On: 'f27ef991cc73c2e5983b2c0f808673924cc1e9c6',
    Idle_Off: 'e8e21ebe8f378de68f075aac087a54b3c146fd2e',
  },
  Snackbar: {
    Mobile_WithAction: '324ed7562e66eb7821ad739cf9279109a5dd6407',
    Mobile_NoAction: '76ad3f441bd71f13ec34d7e3c1605090f294aff3',
  },
  Card: {
    Default_Idle_Large: '93f643b3c393b08fae85014412b32eb9f9363e8d',
    Default_Idle_Huge: '3d8aef62ca78c4ed9cf06b8679d83b2d5eef167d',
  },
  Header: {
    Section_Default_NoScroll: '54c54911f22fd2e268f1c056443a1effc38796cc',
    Section_Default_OnScroll: '7c108d1a08fc936ff3e58e54636e416bf4efced2',
    Subsection_Default_NoScroll: 'a07f50e9a52379aafb9d0aa6795c003c45cf9aa4',
  },
};
```


### Catálogo completo por familia

#### Accordion  (21 variantes totales)
```
  da651400c4a291e90d8354d9bf92050b74bcc014  // Size=Large, State=Idle, Expanded=Off
  16e10f3832be80e8400d4d00463242c2b12d5781  // Size=Medium, State=Idle, Expanded=Off
  597d3ddf1de673190000db07fae3b07bddbdd799  // Size=Small, State=Idle, Expanded=Off
  504b9eee96463e1b00a9403c11534d77b66eb42d  // Size=Small, State=Hover, Expanded=Off
  0242642bddcb665af2003a054c6b658d97a3211c  // Size=Small, State=Active, Expanded=Off
  19c330910e12e13168771aeaa0b171dfb03e48b8  // Size=Small, State=Disabled, Expanded=Off
  22655e33760b1b80bd650819b3e0dd6b8b79eefd  // Size=Medium, State=Hover, Expanded=Off
  5bf6eabbf06e39a357860add7bd373720bb4df0b  // Size=Medium, State=Active, Expanded=Off
  33974126f90fa9af3e8ef4b24d54b1f1eb7eb4dc  // Size=Medium, State=Disabled, Expanded=Off
  d6e51bad0b7044e0d2021ea3ac805a2edb45069a  // Size=Large, State=Hover, Expanded=Off
  caa5d869031b251dd0e7df161218e6e6b09bb337  // Size=Large, State=Disabled, Expanded=Off
  9534684fcef7bf63cfa08abc0b74772675814abc  // Size=Large, State=Active, Expanded=Off
  ce7f5c0563a7c855d4cd5344d061f55541a12d96  // Size=Large, State=Idle, Expanded=On
  d345e195262355090aec39d19cd3996567a3532a  // Size=Medium, State=Idle, Expanded=On
  3aee9e28811f26e63c922db4de7e87467867122b  // Size=Small, State=Idle, Expanded=On
  9eeb4371c768a72db9e080781b1d8f044fd8182e  // Size=Small, State=Hover, Expanded=On
  c85032420479fbf42861a0a3a6eef736d65f3e33  // Size=Small, State=Active, Expanded=On
  5f7fc8ce7e3db064d75ca6fbc1edc140e198b2da  // Size=Medium, State=Hover, Expanded=On
  f40b5c3c3f339f7abcb4bed0c9364fe7c96050fa  // Size=Medium, State=Active, Expanded=On
  e073e3a5c7939abd4040a158b39f076a20c47bda  // Size=Large, State=Hover, Expanded=On
  42135f84dac82f656b5322d43b7c673fe239d39e  // Size=Large, State=Active, Expanded=On
```

#### Accordion Slot  (14 variantes totales)
```
  fe05ace499da1842d99fda24b04f50891d3aa3aa  // State=Idle, Expanded=Off, Chevron position=Top
  3e11be8925b07c97b6c67e97b4203d2ddf0376ea  // State=Idle, Expanded=Off, Chevron position=Middle
  ebcc908c4610b4c9fd982f24aafd1ea8d11aa65e  // State=Hover, Expanded=Off, Chevron position=Top
  be739dec70e1e47fd8c4a99433cf55f0c8962f2a  // State=Hover, Expanded=Off, Chevron position=Middle
  bb698d0157cc4e3642adae210186b601d0127450  // State=Active, Expanded=Off, Chevron position=Top
  089290ebcf6d96e44019def944395781dfc1b698  // State=Active, Expanded=Off, Chevron position=Middle
  2480f44dcb97e18043c754fa734660e414f30912  // State=Disabled, Expanded=Off, Chevron position=Top
  4d3d131ef505d981af1f0d02599206fe3ed6cdb3  // State=Disabled, Expanded=Off, Chevron position=Middle
  f0e93d89d4754026fbceca75505b83c4969db6ed  // State=Idle, Expanded=On, Chevron position=Top
  f88f2b60f9c17b21a6ef5e9bc941f2345b0da3ae  // State=Idle, Expanded=On, Chevron position=Middle
  fecac8a392d926fc629fb6979b54bcae299ef652  // State=Hover, Expanded=On, Chevron position=Top
  fc3bcbf23c00276de1ecf0d6854ad3b4a7f4ce68  // State=Hover, Expanded=On, Chevron position=Middle
  22b7f8de32f5f68eb9ed3a29299ccb924b131fd0  // State=Active, Expanded=On, Chevron position=Top
  d069b9bd5db566c130eec49720b3845a51f87ed3  // State=Active, Expanded=On, Chevron position=Middle
```

#### Amount field  (64 variantes totales — ejes)
```
  Size: Medium | Large
  Format: Crypto | Currency | ISO | Fiat
  State: Idle (Placeholder) | Hover | Active | Idle (Filled) | Error | Read only | Disabled | Loading
  Sample: 6d5052bf2f2221e991bcf683c394427ef39c8e00
```

#### Badge dot  (18 variantes totales)
```
  606e79aef98f9bdfce5e0fb6c3b099634ab5ff13  // Hierarchy=Loud, Color=Informative, Bg type=Default
  fa6ddfeb2021e87f4c2ca17f466b9df3c677d9da  // Hierarchy=Loud, Color=Brand, Bg type=Default
  bd58513d950337e1bda3a1cdf30defc9e15a0ceb  // Hierarchy=Quiet, Color=Informative, Bg type=Default
  4264d3990e8240a3fe0de0da7b061c7338fa5e09  // Hierarchy=Quiet, Color=Brand, Bg type=Default
  9528b405495e55b35ff49da3db137e33057629c8  // Hierarchy=Loud, Color=Positive, Bg type=Default
  edeb2a8557af5954a1473f3432dddcaba38b7ca2  // Hierarchy=Quiet, Color=Positive, Bg type=Default
  1e546f34616189a50c7416bdee7976386b45c635  // Hierarchy=Loud, Color=Caution, Bg type=Default
  bd573862fdcacdb2aa81e10089a6ade51f235af9  // Hierarchy=Quiet, Color=Caution, Bg type=Default
  1d191413e8f85c292e0a450841d0ce3bf68c207d  // Hierarchy=Loud, Color=Negative, Bg type=Default
  295b35e2e42527002961adab0687e02bbc07f7de  // Hierarchy=Quiet, Color=Negative, Bg type=Default
  5e847ebe6108b4156027439fdefb6f18f59813da  // Hierarchy=Loud, Color=Neutral, Bg type=Default
  853f67e4e359a619f6718a70043835420e808aa4  // Hierarchy=Loud, Color=Secondary color, Bg type=Default
  2a7a38ee2797cde408cebc62ad023c2f911a3df1  // Hierarchy=Loud, Color=Neutral, Bg type=On fill
  b2da5f1fa728abac53c292e1ead0ff341ba2bd7b  // Hierarchy=Quiet, Color=Neutral, Bg type=On fill
  811e4b277f47e5e3b0a8b99e4e52dfc1fdf4493d  // Hierarchy=Loud, Color=Neutral, Bg type=On fill inverse
  4148efc94f4062deff59bb231059a2df22f2d05d  // Hierarchy=Quiet, Color=Neutral, Bg type=On fill inverse
  d78aec1d0d875e9ec88b1a136406354b9a64b41f  // Hierarchy=Quiet, Color=Neutral, Bg type=Default
  b5cec655bb7a8290268b4c290b3d986c97ea7365  // Hierarchy=Quiet, Color=Secondary color, Bg type=Default
```

#### Badge icon  (44 variantes totales)
```
  54c5c5bd9972386749cd7508b46ea6c8f8678067  // Size=Medium, Hierarchy=Loud, Color=Informative, Bg type=Default
  710aadb3fc24f9eac5ac806eef8b4979f45ef5fa  // Size=Medium, Hierarchy=Loud, Color=Brand, Bg type=Default
  58ad95274b6e45d308affdf28ad4d5e3b22838ed  // Size=Medium, Hierarchy=Loud, Color=Neutral, Bg type=Default
  5c8040982f74b7895cf07730f2e2c57d959bc5ab  // Size=Medium, Hierarchy=Loud, Color=Secondary color, Bg type=Default
  3a0f7feef5a23f4de78fe10badd7cebd0f4b542e  // Size=Medium, Hierarchy=Quiet, Color=Brand, Bg type=Default
  d60fda4f80b6d4ba191bb3ebbebff19c60b187bf  // Size=Medium, Hierarchy=Quiet, Color=Neutral, Bg type=Default
  8ff5e918b9dd3f7e319aec7e29b7c17f3f275720  // Size=Medium, Hierarchy=Quiet, Color=Secondary color, Bg type=Default
  18b336d95c517154189c39733cfa2bde3110a300  // Size=Medium, Hierarchy=Quiet, Color=Neutral, Bg type=On fill
  f0b18b4a25212672196887a8da923189b602eee8  // Size=Medium, Hierarchy=Quiet, Color=Neutral, Bg type=On fill inverse
  9a04ef4eee6ba336e0573f529eb31c851a6245cd  // Size=Small, Hierarchy=Loud, Color=Informative, Bg type=Default
  48c227c0d1260c223d3d4e91429a029926d4b510  // Size=Medium, Hierarchy=Quiet, Color=Informative, Bg type=Default
  f099072edb3a207482ad216ef55f51019e9fe926  // Size=Small, Hierarchy=Quiet, Color=Informative, Bg type=Default
  92d124323e094d291bba6ece6e33fefbfeb3e763  // Size=Medium, Hierarchy=Loud, Color=Positive, Bg type=Default
  e4b163e8cdb414340160d5e6fcbc0f25741e76f8  // Size=Small, Hierarchy=Loud, Color=Positive, Bg type=Default
  3da0d78ae0b1660759fe16d39b24ad992ce7061f  // Size=Medium, Hierarchy=Quiet, Color=Positive, Bg type=Default
  c32349e60c56bc3a4334e9d6d1416d65ec053f55  // Size=Small, Hierarchy=Quiet, Color=Positive, Bg type=Default
  1b5cdb16050667f50fef341e88dad4f09edd3d14  // Size=Medium, Hierarchy=Loud, Color=Caution, Bg type=Default
  e349539bef1cf2c712cf0e38aa69fb9e80dd3c13  // Size=Small, Hierarchy=Loud, Color=Caution, Bg type=Default
  006c4c69a8645a93e04a2fa85befb3266505fe70  // Size=Medium, Hierarchy=Quiet, Color=Caution, Bg type=Default
  4be8af95a17b26d77ed84e27e00a7c726c257086  // Size=Small, Hierarchy=Quiet, Color=Caution, Bg type=Default
  11477a9610bd7390d9c79c32ca16df61233b61db  // Size=Medium, Hierarchy=Loud, Color=Negative, Bg type=Default
  28081902f9ceac5ade9525197b9fb8858075ab7c  // Size=Small, Hierarchy=Loud, Color=Negative, Bg type=Default
  0c9cd4ba768d5c73c773ad3a65bdb8a07b20b031  // Size=Medium, Hierarchy=Quiet, Color=Negative, Bg type=Default
  d30bcfc204c17e40110929978d623e6243398d66  // Size=Small, Hierarchy=Quiet, Color=Negative, Bg type=Default
  824fab415b2fedb9cb943b64e0386ff9a2a359d7  // Size=Large, Hierarchy=Loud, Color=Informative, Bg type=Default
  19ebc9c7fe709213cc15e18a0679d2eec7a9ac13  // Size=Large, Hierarchy=Loud, Color=Brand, Bg type=Default
  5b7991639be03188d0b0db78058bf0d1a0179320  // Size=Large, Hierarchy=Loud, Color=Neutral, Bg type=Default
  44e07c42352dbb7a60efa2b8d2ec6edb50449c63  // Size=Large, Hierarchy=Loud, Color=Secondary color, Bg type=Default
  e67ed2d9a801fbcb5fa8f03fb95ce33da704d2e9  // Size=Large, Hierarchy=Quiet, Color=Brand, Bg type=Default
  9bb317d7231ba2141f7b910fad8b9556aa1d1a77  // Size=Large, Hierarchy=Quiet, Color=Neutral, Bg type=Default
  376a8565b06bc298e86a44b642683a75c58a1035  // Size=Large, Hierarchy=Quiet, Color=Secondary color, Bg type=Default
  3dee6de9eb6d5b593b03d11d2da95bcf02dd21ec  // Size=Large, Hierarchy=Quiet, Color=Neutral, Bg type=On fill
  2f9617620d113330e4b56f9e350f9dee914e1bd1  // Size=Large, Hierarchy=Quiet, Color=Neutral, Bg type=On fill inverse
  4fe70c6be75f84382d4b0ad6a034f8ab9a765d6e  // Size=Large, Hierarchy=Loud, Color=Positive, Bg type=Default
  6451858d5534f404af3a566059b061ee9e474ddf  // Size=Large, Hierarchy=Loud, Color=Caution, Bg type=Default
  3f386f90c8284ed9e6a063c9e2f3c932eb3c8ce8  // Size=Large, Hierarchy=Loud, Color=Negative, Bg type=Default
  116d58503a50db2eff738685fbbea48d291da81c  // Size=Large, Hierarchy=Quiet, Color=Informative, Bg type=Default
  f245f526fb0fea91844b5e504c92584aa824df9e  // Size=Large, Hierarchy=Quiet, Color=Positive, Bg type=Default
  0739a5e843e8ef71e3eca9b99efd2ff684d8cb8a  // Size=Large, Hierarchy=Quiet, Color=Caution, Bg type=Default
  13c819845391cb70d79811bac83fedf17de1eb25  // Size=Large, Hierarchy=Quiet, Color=Negative, Bg type=Default
  d5ee54c3d2ff5b9a7d473c8f119e391749a94999  // Size=Medium, Hierarchy=Loud, Color=Neutral, Bg type=On fill
  f12e3683de2ee14a22f16988ead0bd20b42d52be  // Size=Medium, Hierarchy=Loud, Color=Neutral, Bg type=On fill inverse
  204fda23ad37c19b713e9f5feb6f5fca1199bb1d  // Size=Large, Hierarchy=Loud, Color=Neutral, Bg type=On fill
  25ac7452f98decde6d98dfabce80150efeb06dd1  // Size=Large, Hierarchy=Loud, Color=Neutral, Bg type=On fill inverse
```

#### Badge pill  (108 variantes totales — ejes)
```
  Size: Medium | Large
  Hierarchy: Loud | Quiet
  Color: Positive | Negative | Caution
  Bg type: Default | On fill | On fill inverse
  Show icon: Right | Left | None
  Sample: 36b82d061b1046549875a827d95113a2c242f83a
```

#### Bottom sheet no modal  (2 variantes totales)
```
  28c0ec85bbae4b1b84c8cede94a3fb050ef0b368  // Show drag indicator=On
  4efd9e2d82e47033f654b2478514ff8fe47a434b  // Show drag indicator=Off
```

#### Box selector  (60 variantes totales — ejes)
```
  Selector count: 6 | 5 | 4 | 3 | 2
  Layout: Column | Grid | Row
  Width behavior: Proportional | Variable
  Border radius: Containers (default) | Inputs (default)
  Sample: 01cc063687b32fdfd39b9881862b605e76a40974
```

#### Breadcrumb  (10 variantes totales)
```
  84edfe43a560a45e89ffd3f70d2b43b3c3b136b0  // Current level=On, Level count=2
  b6b7b914e250e6d820b1a051e246a49508484dc0  // Current level=On, Level count=3
  ec8198a92c1ecc958e92f1bf4187867b9d1a7038  // Current level=On, Level count=4
  33f7d017e2e6ea431c6c8405c2b1de7ad7f3eed5  // Current level=On, Level count=5
  00caf15b80049bd400e8da204cd71c5886981aa8  // Current level=On, Level count=6
  5f07132bcdb043c1a29be2a97786dd488d8d23f4  // Current level=Off, Level count=2
  0c8b70209472912e812507047686764be072f7e4  // Current level=Off, Level count=3
  f8afe1b9db0af3f89d441a694e81556d68d1227e  // Current level=Off, Level count=4
  028774b0e8f7da956574c0baaea32ecee17be975  // Current level=Off, Level count=5
  42ef7561bdb65d8242fcfa31899311dd72021866  // Current level=Off, Level count=6
```

#### Button  (324 variantes totales — ejes)
```
  Size: Medium | Small | Large
  Hierarchy: Loud | Quiet | Mute
  State: Idle | Loading indeterminate | Disabled | Hover | Active | Loading determinate
  Full width: Off | On
  Bg type: Default | On fill | On fill inverse
  Sample: 80b863d5a12727b40dadd49b7bb2ae99481a3919
```

#### Button group  (30 variantes totales)
```
  49cfc2603786c0fd9e8bdf7f78e95c57fb33bdec  // Size=Small, Button count=2, Layout=Column, Width behaviour=Proportional
  02d30da3b7e0ef5953a9344022b53d4c8fabad5d  // Size=Small, Button count=2, Layout=Column, Width behaviour=Variable
  956c349ba1488f6e264d59467c95ba940dbaa88f  // Size=Small, Button count=1, Layout=None, Width behaviour=Proportional
  742440e00d65fc933be1155ba888e297dd8b419a  // Size=Small, Button count=1, Layout=None, Width behaviour=Variable
  3ecb2811f4a092a7d7df66d13403f8714e62f2fc  // Size=Small, Button count=2, Layout=Row, Width behaviour=Proportional
  b246babd97e25e6c23f500539db018c30a16820d  // Size=Small, Button count=2, Layout=Row, Width behaviour=Variable
  4f36ffa6aab4d809caa3559b6faf0128881fabfd  // Size=Medium, Button count=2, Layout=Column, Width behaviour=Proportional
  e6059a8cbb6910852e8e1bf76204b0ee060d81c2  // Size=Medium, Button count=2, Layout=Column, Width behaviour=Variable
  0c1ccd93486a8db73d54c3d4cafaa9c6056573f5  // Size=Medium, Button count=1, Layout=None, Width behaviour=Proportional
  4f6866b5c67c5a678fdeee4ec883f2b6dbc8c147  // Size=Medium, Button count=1, Layout=None, Width behaviour=Variable
  d992d51f863ab162245ccabc71485ffee08c3e5b  // Size=Medium, Button count=2, Layout=Row, Width behaviour=Proportional
  2157588852fda27e63810155fd26acbee3d9543a  // Size=Medium, Button count=2, Layout=Row, Width behaviour=Variable
  90ed110b57957d787de25fafe417dc4fc0ea66eb  // Size=Large, Button count=2, Layout=Column, Width behaviour=Proportional
  6fb74169e9ad8a7e02a898f3209e77bbb6700666  // Size=Large, Button count=2, Layout=Column, Width behaviour=Variable
  d82ec8e1055e29e0738f8a45feb2ed368f13a372  // Size=Large, Button count=1, Layout=None, Width behaviour=Proportional
  0a3cf722f707ae5d8b7efda8ca8fb97c589ed835  // Size=Large, Button count=1, Layout=None, Width behaviour=Variable
  034f6570b09b147c95087ba75bdc9865afd5837c  // Size=Large, Button count=2, Layout=Row, Width behaviour=Proportional
  8ed0075964e0177d18253c0f016e02987992993f  // Size=Large, Button count=2, Layout=Row, Width behaviour=Variable
  56237ee6005f3ef8d5b31d6578b5ea2f616c91e5  // Size=Small, Button count=3, Layout=Column, Width behaviour=Proportional
  61f2271c36773b83b11da280f53bde1595448180  // Size=Small, Button count=3, Layout=Column, Width behaviour=Variable
  126cd8edb2a95f276ac41ee26ed72a31accdb892  // Size=Small, Button count=3, Layout=Row, Width behaviour=Proportional
  324e507a4ce3a53413bb9dc9c36daf5302a33a89  // Size=Small, Button count=3, Layout=Row, Width behaviour=Variable
  8760cc50c9579265b01be2493b5451017319acd6  // Size=Medium, Button count=3, Layout=Column, Width behaviour=Proportional
  fdf218d9dfcf0185af903bbb5c76c0907cbdb5f2  // Size=Medium, Button count=3, Layout=Column, Width behaviour=Variable
  d79c57a04ba256126357cd3139028fbcde6892a0  // Size=Medium, Button count=3, Layout=Row, Width behaviour=Proportional
  7f531dcea7eb3d1c6cad73a2af645b22ada76fdc  // Size=Medium, Button count=3, Layout=Row, Width behaviour=Variable
  9385c32f131790f8469ed84873757b1c9c02bade  // Size=Large, Button count=3, Layout=Column, Width behaviour=Proportional
  a36e92b935c8ead5c8e6b2221509ea984c4fa291  // Size=Large, Button count=3, Layout=Column, Width behaviour=Variable
  cd064ad3e0b9cc0f763ee37100e0d4431913d1e8  // Size=Large, Button count=3, Layout=Row, Width behaviour=Proportional
  2d6fecb9c0f564ba7e2bd2b30fdfb48340a92ae0  // Size=Large, Button count=3, Layout=Row, Width behaviour=Variable
```

#### Button split  (144 variantes totales — ejes)
```
  Size: Medium | Small | Large
  Hierarchy: Loud | Quiet | Mute
  State: Idle | Loading indeterminate | Disabled | Hover | Active | Loading determinate
  Full width: Off | On
  Bg type: Default | On fill | On fill inverse
  Sample: 57af329e7af4640891e1348f3481dc27e2d9200a
```

#### Card  (32 variantes totales)
```
  f9db1f835816dfaa7258171952b4f71505c1b03d  // Appearance=Default, State=Active, Padding=None (0)
  daae67b40be881300d87fffaf6b1dee8881cfda9  // Appearance=Highlight, State=Active, Padding=None (0)
  ad3e4eb07da8f707cb86264f21f762c0d62d477f  // Appearance=Default, State=Hover, Padding=None (0)
  ce8ec98ad90be87b65ee557fa53bcb0d77d5f326  // Appearance=Highlight, State=Hover, Padding=None (0)
  f2c1994c1357566b149f11bdc056eae58a9538a9  // Appearance=Default, State=Idle, Padding=None (0)
  3d7e654556c55b50f8780c1db626691333fd1cf1  // Appearance=Default, State=Disabled, Padding=None (0)
  87062b3df455cc60b8a09561e407a8ccf901fb52  // Appearance=Highlight, State=Idle, Padding=None (0)
  c61ee9f0bd59733dbfd9c702cd37c46f6318065f  // Appearance=Highlight, State=Disabled, Padding=None (0)
  6da33325f7113f00a53dc54c5ad23ce4b6f80d7d  // Appearance=Default, State=Active, Padding=Large (16)
  9e1b246f96dee3545ffe9e377ef251ce6f06bfc9  // Appearance=Highlight, State=Active, Padding=Large (16)
  33a45a4768d93b3881d4daaf1810be1d36c47947  // Appearance=Default, State=Hover, Padding=Large (16)
  93f643b3c393b08fae85014412b32eb9f9363e8d  // Appearance=Default, State=Idle, Padding=Large (16)
  eb94bfb94537602c7d9bf5f3df1fa0ab20751ef0  // Appearance=Default, State=Disabled, Padding=Large (16)
  72e238b74ef851b77769f2eed092ef6a55c4847a  // Appearance=Highlight, State=Hover, Padding=Large (16)
  3886482c680dc99a8e194a9fae5ca3a4ee86e756  // Appearance=Highlight, State=Idle, Padding=Large (16)
  2ccf8e78c373d35f1c02b032797fe42b82c6f7b4  // Appearance=Highlight, State=Disabled, Padding=Large (16)
  54927466139204a05ccc0a83b60aae17a3f506ab  // Appearance=Default, State=Active, Padding=Huge (24)
  8bb50316823dc7ccc58aaef90ce1c862f3bf9a99  // Appearance=Highlight, State=Active, Padding=Huge (24)
  bf018b1a13bf6ae1b7b5297d379020a25ecad75b  // Appearance=Default, State=Hover, Padding=Huge (24)
  31470198cd66eec79e0e97e620214e483214122d  // Appearance=Highlight, State=Hover, Padding=Huge (24)
  3d8aef62ca78c4ed9cf06b8679d83b2d5eef167d  // Appearance=Default, State=Idle, Padding=Huge (24)
  8393a69eae5996b71390b54db115b3e27ec19da0  // Appearance=Default, State=Disabled, Padding=Huge (24)
  6cf5eb5f1f53921db01b1474549f59976c8e04e3  // Appearance=Highlight, State=Idle, Padding=Huge (24)
  bad93d8d2f7b349d7b9359c8897fb3be9c01f555  // Appearance=Highlight, State=Disabled, Padding=Huge (24)
  b498f1a91f4f20897606992da2680e248a194a48  // Appearance=Default, State=Active, Padding=XHuge (32)
  17d5bfafba7971e5055472fd971ed28d87fdcd8a  // Appearance=Highlight, State=Active, Padding=XHuge (32)
  497c82800b0936cef3118f522fbfe745bc98ae78  // Appearance=Default, State=Hover, Padding=XHuge (32)
  91784634da7d1e3a2f616fb6a51fd7caa4d4b737  // Appearance=Highlight, State=Hover, Padding=XHuge (32)
  ad318da7cf4072883eb5d2ae020d7b1f11822928  // Appearance=Default, State=Idle, Padding=XHuge (32)
  67543d4a9758dfcca2788d0a9aaf6d2ba949e32c  // Appearance=Default, State=Disabled, Padding=XHuge (32)
  741d41688e45d680bc3c8fb054479a65c022cc7b  // Appearance=Highlight, State=Idle, Padding=XHuge (32)
  39baf8d1c0bd327b9a0cd2814125b630e02fdee7  // Appearance=Highlight, State=Disabled, Padding=XHuge (32)
```

#### Carousel  (54 variantes totales — ejes)
```
  View count: 10 | 9 | 8 | 7 | 6 | 5 | 4 | 3 | 2
  Show controls: True | False
  View indicator: Inside | None | Outside
  Sample: 12f2bffa3f5e6354ecec07641faec2b40d0e1f49
```

#### Checkbox  (78 variantes totales — ejes)
```
  State: Idle | Hover | Active | Disabled | Error
  Selected: Selected | Unselected | Indeterminate
  Highlight: True | False
  Label position: None | Right | Left
  Show label: False | True
  Sample: 1ba4f0c02b46dea36086231cbb728906ae5a15f9
```

#### Checkbox group  (21 variantes totales)
```
  f5668fbe20f97244711caddad573eb93b8b7ff4b  // State=Error, Checkbox count=4, Layout=Column
  f2aac9dc76c2e41b1084287d91a53c658f79b38f  // State=Error, Checkbox count=3, Layout=Column
  c2df787b7e5a13be9110e584ce0bdd9fd9c3acee  // State=Error, Checkbox count=2, Layout=Column
  8dc62e3a1aee2d5c452b26405092c05edad0c9ae  // State=Error, Checkbox count=1, Layout=Column
  17962232b21b1bd490d69f05959741fd3f0a7db0  // State=Idle, Checkbox count=4, Layout=Column
  17716cfb05eb1a0916b6d4c37adbc2d3ad91fea5  // State=Idle, Checkbox count=3, Layout=Column
  b3cf6fa22f9302bbea216504f1f048b244aad3c6  // State=Idle, Checkbox count=2, Layout=Column
  9aee64c61a6265ad8554ac6a6231096c4beaaff9  // State=Idle, Checkbox count=1, Layout=Column
  213928ca1e8eac9cb44788864fc5e16bc37ab871  // State=Disabled, Checkbox count=4, Layout=Column
  678a59bdd5548499e90be1652d16678d6e97d554  // State=Disabled, Checkbox count=3, Layout=Column
  2c0c5af5783fde9bc6eb613e0c1d71812ea614b2  // State=Disabled, Checkbox count=2, Layout=Column
  4a42895bf36606994c6b8dedf2bd06ebbbc306d3  // State=Disabled, Checkbox count=1, Layout=Column
  766638ff99c31eceefe45d85247a8294fa4e6bfd  // State=Error, Checkbox count=4, Layout=Row
  fc13623c8bc4db5971dd410833dee60f7f18c6f2  // State=Error, Checkbox count=3, Layout=Row
  77bc3dae1fa99b5517ee5d550e71ac911379c62f  // State=Error, Checkbox count=2, Layout=Row
  293f0b3713f789fa53d14648725510401a254eb8  // State=Idle, Checkbox count=4, Layout=Row
  2fd3a542214b191a1457389c198699ee6db3dd88  // State=Idle, Checkbox count=3, Layout=Row
  f55b269bd7d540deac8234f277765adc1223d598  // State=Idle, Checkbox count=2, Layout=Row
  75d8f5a5177c887b724bc27969aa0a7b3d9e37d9  // State=Disabled, Checkbox count=4, Layout=Row
  74ab472f01eab31af130b0b12853ec38f1d56a82  // State=Disabled, Checkbox count=3, Layout=Row
  5ff8a762c529cd2cf14a81dd165134aaae5352d7  // State=Disabled, Checkbox count=2, Layout=Row
```

#### Date picker day selection  (6 variantes totales)
```
  564e0ae0bd34b5b7dc85f8cca77809b464edc62e  // Selection type=Multiple, Weekstart=Monday
  93e034bb8a16fae7fea41590f68fc5865ec68792  // Selection type=Range, Weekstart=Monday
  a48949c8b6a01794954fe6d583c3ef3bcd4a67f7  // Selection type=Single, Weekstart=Sunday
  8a2f0e6571b4baae254463928b8744f9289b7944  // Selection type=Single, Weekstart=Monday
  b4c7cf34b1856fd5bc175795560e6ca475b5ba1b  // Selection type=Multiple, Weekstart=Sunday
  9db19269fcc2868fafaf661035907b4da16b6506  // Selection type=Range, Weekstart=Sunday
```

#### Date picker field multiple  (18 variantes totales)
```
  48bd5a805e8118c221bfc47526738a96b2d8d854  // Size=Large, State=Idle
  f2d71c91fed41a5a4dac1694b1e517ad92c6d2ce  // Size=Large, State=Caution
  3652335c731c32fe306acbbbd162ea6bb746d117  // Size=Large, State=Hover
  ed392bdb0e809eac37d4c2d0683c472b40b5e824  // Size=Large, State=Active
  e51f0c7290feceb98968c254e10cece2eee9690c  // Size=Large, State=Caution active
  21c5531f3adb3f5383b40addc786684fe16524d7  // Size=Large, State=Error active
  cb2a7b4483ed35ba2b7526b473db6afba71f1e7a  // Size=Large, State=Error
  7a5abe5e5933daa3bdec85a48cd86d85673441ec  // Size=Large, State=Disabled
  029f1eb9ff9eaf45ad3980fee7f8b88dd5239815  // Size=Large, State=Read only
  af0edb71b08abfa999ae8f3bf4278dca4e33e0fe  // Size=Small, State=Idle
  fe3b36ef5a10c97c35c09f877fa3b28b3ff5830a  // Size=Small, State=Caution
  86743c8c9d0c9b54ae7935890d60a40459f07349  // Size=Small, State=Hover
  3481d197695ea32c8fe198cc827bdf014f147aa3  // Size=Small, State=Active
  1532ffb3eac4597bc8e99656eb39ea153bca05c1  // Size=Small, State=Caution active
  ee8752921b60e406e8fa4d23455b8405e9c4f7c9  // Size=Small, State=Error active
  cbe16905503e3e61f83d9634238e5821306257a9  // Size=Small, State=Error
  87c167697307b32d92bdd403cc9c1ce030dae7ec  // Size=Small, State=Disabled
  813af76183d445337393547924186dedfe9ca2fc  // Size=Small, State=Read only
```

#### Date picker field simple  (18 variantes totales)
```
  9fbf20ded31d3e8c0e1f2b912f841515df5ce0f2  // Size=Large, State=Idle
  5112b64b1e68b4b57d4c74b2c0970edcb5755a32  // Size=Large, State=Caution
  6a1ee9ffcbed9b674cd0a253f172b58992c9a278  // Size=Large, State=Hover
  113cd6faec10702c5c2b9791241b31ee81919d90  // Size=Large, State=Active
  a929f138702cba1568b91027c349352cab6d3b10  // Size=Large, State=Caution active
  63f792f2a22a36014e2aac2d1042e3170446cfc4  // Size=Large, State=Error active
  3ad3a1ea3926ce01d5e61049f1f0d2b03f8d2a7c  // Size=Large, State=Error
  30618c21a22607a6cb296f07a48a4f499c1cafec  // Size=Large, State=Disabled
  368a9c3d201fee54f6035998ea4068462cb7dba8  // Size=Large, State=Read only
  b9407c25e5b2dbd92b555c460fd21ce7f4cfa405  // Size=Small, State=Idle
  2fac16ab9301673ac447db4df0013cc67d258862  // Size=Small, State=Caution
  207e41be170adf2fdda3e1f3156438ee02afba7c  // Size=Small, State=Hover
  c01402d47c4319a7c1e5cb41d93dc0ed04d8a08b  // Size=Small, State=Active
  13d5aa279a1d92489904932f6fa7b9614b10adda  // Size=Small, State=Caution active
  4fe0b45815335178f33e3f68b6875f59a4f0ea6c  // Size=Small, State=Error active
  4be6c9d4e6e3a567a2482c9ccedbccfa79b96100  // Size=Small, State=Error
  d6727a6a472eb820293f5e7920e61af9b6a60d74  // Size=Small, State=Disabled
  4f9d68bf186175502242be9d28353a03ac309c99  // Size=Small, State=Read only
```

#### Dismiss button  (36 variantes totales)
```
  6bf8ba8ff6b716a9ecde3b8be06633bdf44f3227  // Size=XSmall, State=Idle, Bg type=On fill
  0809a601cd3d38f7d2da18acad61ad38084e6538  // Size=XSmall, State=Idle, Bg type=On fill inverse
  427c932f999efcf6c093bb5340e15ba47cd685cc  // Size=Small, State=Idle, Bg type=On fill
  7cab9cdd795f698e97741d4a9cdb3331c7600e5a  // Size=Small, State=Idle, Bg type=On fill inverse
  d4c554a04c631a195ae5e2d84c5fc143979aa256  // Size=Tiny, State=Idle, Bg type=On fill
  62f9df6cc55a8b6c7fedf500b0394db5af9ebda3  // Size=Tiny, State=Idle, Bg type=On fill inverse
  e65afd682fc4b9ad74680c330f8076485e65a47b  // Size=XSmall, State=Idle, Bg type=Default
  a84b05a7a6d4e24593ec4006ed6a365f8a09dd05  // Size=Small, State=Idle, Bg type=Default
  676fd866d10243024c672a441188b1ef130d8e55  // Size=Tiny, State=Idle, Bg type=Default
  916434e786ce92ec6800a2dfb87a951f6686b24f  // Size=XSmall, State=Hover, Bg type=Default
  24d3c9d51275076299f439b7860a616d5f3f5d03  // Size=Small, State=Hover, Bg type=Default
  f6dd3fe0722fbe33be038b65766de6d3c805e09d  // Size=Tiny, State=Hover, Bg type=Default
  1987f3c4060c9bd23057b8086de4cbc455943bb0  // Size=XSmall, State=Active, Bg type=Default
  dcb8c2b5afc424dccd33e700478e553adfdf904a  // Size=Small, State=Active, Bg type=Default
  1a9e46fd16c1f687f0a488bec3a89f8620a7b030  // Size=Tiny, State=Active, Bg type=Default
  f82f2aaa910a645f45f49aebcb650d06f8aef0b9  // Size=XSmall, State=Disabled, Bg type=Default
  21bbf160f147c684d2f3bf5a55f4cfbf9d785a4e  // Size=Small, State=Disabled, Bg type=Default
  bb15706bf58593d8b687ea0a25134ea797fdf794  // Size=Tiny, State=Disabled, Bg type=Default
  1645d6fe90b8958024397127ab744613ea623af3  // Size=XSmall, State=Hover, Bg type=On fill
  89f1ad5489f8ee1f32f3144881c18ff398c386da  // Size=XSmall, State=Hover, Bg type=On fill inverse
  aca1454c591843cbd331ebec9c1de0c24c290a98  // Size=Small, State=Hover, Bg type=On fill
  4010d72145218bbf28db77ae3bb3f3deac55cde1  // Size=Small, State=Hover, Bg type=On fill inverse
  d2c4bc3ffe9f53455b81325de884b34b54fcc95a  // Size=Tiny, State=Hover, Bg type=On fill
  df07ab3e04dfeb2575f9454b5a3f155293fa3bff  // Size=Tiny, State=Hover, Bg type=On fill inverse
  b14583da082e268326a9348317769958666f5d93  // Size=XSmall, State=Active, Bg type=On fill
  026ae89b642c611057610001c14963dd8498cc2f  // Size=XSmall, State=Active, Bg type=On fill inverse
  67ce2e92fa56dd9d87b4b6bfcdf472d659f9991e  // Size=Small, State=Active, Bg type=On fill
  1b889be8a2f8dd101666cc83c8cd1018e93cc5a8  // Size=Small, State=Active, Bg type=On fill inverse
  c538d80810a37e337fae92e3ad533e078f697de0  // Size=Tiny, State=Active, Bg type=On fill
  0dac665eff6e00975e27bcd815c04ff806ce040b  // Size=Tiny, State=Active, Bg type=On fill inverse
  b7a07256981223a1e992f30fd4942b930482d88d  // Size=XSmall, State=Disabled, Bg type=On fill
  1932e4e3c1b17d46caf2f97961351192be02fd8a  // Size=XSmall, State=Disabled, Bg type=On fill inverse
  0da8364365a741bf9a8b3b9e0e8ea3498b3ee2f4  // Size=Small, State=Disabled, Bg type=On fill
  d547c6770855ceab18145c9ff3e740deef8884ec  // Size=Small, State=Disabled, Bg type=On fill inverse
  ec14bd9c5c83c145d7b19df668d07122b28bcb9f  // Size=Tiny, State=Disabled, Bg type=On fill
  ddad127407a901a7d6f4b8aa83e7f7f69d4a063e  // Size=Tiny, State=Disabled, Bg type=On fill inverse
```

#### Divider  (2 variantes totales)
```
  c9273619cc20c6d51835ca47c4d01d4d8df5681b  // Orientation=Horizontal
  f7c6d4e7fbce5d7dfd7df533ed5a807b9f9dabd3  // Orientation=Vertical
```

#### Dropdown  (16 variantes totales)
```
  eccda552a29cfc235fd2c2d7304e1514389c13de  // Size=Large, State=Idle
  4d7d1341d51e4aad2c562f17fabada2d0ac24741  // Size=Large, State=Hover
  62899678c98bb85e1ddb6a11a4b16fb554ab3b5f  // Size=Large, State=Active
  a10a295ff21578fec97901097b93ae3064adef96  // Size=Large, State=Error active
  720229499eaa146cc10fe78eb03125492623d830  // Size=Large, State=Error
  73fdceecb5f20d3a6c51974ecd4ce9dd263c5775  // Size=Large, State=Disabled
  1900ee1ae5c2eaa92e0a1a2f9ea5bd76241ffd8d  // Size=Large, State=Read only
  cef5c522a75034277758f80a51d0df59e8bac616  // Size=Small, State=Idle
  06eca655fa9ba6c134a79eb42c1c57ac821e3d98  // Size=Small, State=Hover
  8c0481d40b47e7fcb94a7527f66da35ac2a22cbb  // Size=Small, State=Active
  90dc279996deb0ec4f1fc9836624deb075705e3f  // Size=Small, State=Error active
  855659fc1075759301c46d5e12c564691dea8e6d  // Size=Small, State=Error
  aea0ba78d515773adcab51f2399bea1009732e21  // Size=Small, State=Disabled
  c827f6c8fcda4349d27c7c592add58519154b7db  // Size=Small, State=Read only
  e06e414996038c96211519ec711c012fce4ab733  // Size=Large, State=Loading
  17dd9627022fbab883def31c77c486d3322bd789  // Size=Small, State=Loading
```

#### Dropdown - Content type  (4 componentes — contenido de slot)
```
  2cab0d58b764d5039a6af255e17e92bb7b6449e5  // Slot (Large)
  979f1b4bb4eee9cea35a9d9692fd6836195bc576  // Icon
  2d5d278c2693948ef331645f9f081d02e44a98b9  // Thumbnail
  ?  // Text (ver librería)
```

#### Dropdown Standalone - Content type  (3 componentes — contenido de slot)
```
  e862ab574dfa34487d745761f05baf3b7808f0db  // Icon
  12308e80e1e3ed8891dd161e00e94637d84aee2f  // Slot
  d0d2dbb774098227efeb6bc5624a82957e288730  // Thumbnail
```

#### Dropdown multiple  (32 variantes totales)
```
  a29f557a0172db1707137dff08b67ccb7cf17bc0  // Size=Large, State=Idle, Show left content type=True
  d6f72a2201d0f4d55a255eae33851ef8c70466fe  // Size=Large, State=Idle, Show left content type=False
  f0c5fd8abefb61fc15f69d6e43b3908561e165fe  // Size=Large, State=Hover, Show left content type=True
  21765928ab1d82f7680e7b3f837ab0d880ac1f20  // Size=Large, State=Hover, Show left content type=False
  be21492e0e2d2607067893dee6c0f21504dd246c  // Size=Large, State=Active, Show left content type=True
  8ae008bd41026d22c502d2e8623566a0bc22496f  // Size=Large, State=Active, Show left content type=False
  9f4a79767293a3133189ecaeb3cddb6d6a7b29bb  // Size=Large, State=Loading, Show left content type=True
  bbc914f36461b30a2b9cdbf674079545159a7b94  // Size=Large, State=Loading, Show left content type=False
  7b5e8be2d03d68f5d913447663df5f3bc5188035  // Size=Large, State=Error, Show left content type=True
  e2c71de5090c567526b23e8fa8dc64fd101f9d2b  // Size=Large, State=Error, Show left content type=False
  abbdc5842f23d156eebb38e4e7809d228e4454f0  // Size=Large, State=Error active, Show left content type=True
  949e2b3dfa2f2b12ba4d344477eb2696a157ee30  // Size=Large, State=Error active, Show left content type=False
  02c9a3b4e587bce7a099cc94276f65f9fb63c13e  // Size=Large, State=Disabled, Show left content type=True
  4cea25c5581d81aa034218d972dd60e9133c85b4  // Size=Large, State=Disabled, Show left content type=False
  0091b9b28306b25db2b82d39385f95cd0330ed37  // Size=Large, State=Read only, Show left content type=True
  4e8b6c8d67e8b842f084bc4beebac337adb879d3  // Size=Large, State=Read only, Show left content type=False
  5e2eef44c39ad5f85c22c4ab3bda6af013098a88  // Size=Small, State=Idle, Show left content type=True
  88429580ec5b4eeb74e02c8924cda521d6c8be3d  // Size=Small, State=Idle, Show left content type=False
  71bf0191d9d8be9af082fa8811d1f32fb197fc0c  // Size=Small, State=Hover, Show left content type=True
  c9f23deb6f3e3b04f2546467fffc88b78e4efbd2  // Size=Small, State=Hover, Show left content type=False
  7214731ec41931db60c691bf14e2c2c6c9f403a6  // Size=Small, State=Active, Show left content type=True
  51e490a44b1e9084304f25ed10cfe422023d175b  // Size=Small, State=Active, Show left content type=False
  1ce89f7e83c8f1fec3f86e51f9fd9db93a217c57  // Size=Small, State=Loading, Show left content type=True
  679cfd9cfbb9968c7b1f538a3cb102b4e0c6ac83  // Size=Small, State=Loading, Show left content type=False
  7fbead6d774c05f77ddeb08c1d8dedf47f63ec8c  // Size=Small, State=Error, Show left content type=True
  eb11cf2a8b7230a4367ae57ac04a5fe4a30acec8  // Size=Small, State=Error, Show left content type=False
  0ece1e23ec05f135edf2b8083c571ecb08ddbe84  // Size=Small, State=Error active, Show left content type=True
  3cf573ef88438e38b75f7b8a71ce85a4ce1482ce  // Size=Small, State=Error active, Show left content type=False
  55124c558fd6ed41e3ab5faee00dbccb36089dce  // Size=Small, State=Disabled, Show left content type=True
  754a07cc9656611a39c66721862ff4fd7987e8bf  // Size=Small, State=Disabled, Show left content type=False
  0b069d316e21ac38795fa1f1b5f2ff2f6d2e8e22  // Size=Small, State=Read only, Show left content type=True
  97fd6e98fc5fd4b912713cff8a4afe4c99e053ed  // Size=Small, State=Read only, Show left content type=False
```

#### Dropdown standalone  (15 variantes totales)
```
  52ca91a846c9357149236c6814810108473deaca  // Size=Large, State=Idle
  4066529fd53f63cfdfb46c4de3644f79d6e2a2e0  // Size=Large, State=Disabled
  e94f1ac231a22e7c3be369bad121a766dd39317a  // Size=Large, State=Hover
  276fcadac118c0ec4315dbaae6d23f39282f8247  // Size=Large, State=Active
  0b2108b433c88047be6741ffcda96d9c6b8e29b8  // Size=Medium, State=Active
  420ad9bdea39bfe5f62be1b45ef1aa490c7ccb52  // Size=Medium, State=Loading
  0e79257f6e345a609f59eea109a589580e5004ed  // Size=Small, State=Active
  e57c16f059e6dbf8ddce1653d90799d3958030ed  // Size=Small, State=Loading
  53e72de4135556d33bf80e5d0bede45bbef003bf  // Size=Large, State=Loading
  99e69b1cdae60aaa03f0e6a31e62360ebcc55778  // Size=Medium, State=Idle
  7f3cbec005376f19573df93e31456eb8870f5150  // Size=Medium, State=Disabled
  999e0b114f2198807f2ceffeb483c96655ec863f  // Size=Medium, State=Hover
  dab236cfb58f83ed48cd1b9d1a730f1e99fa3acf  // Size=Small, State=Idle
  4d24c142a7f3bfb8c78b665e1af3e88bf3549b7a  // Size=Small, State=Disabled
  a30c8a272d2011556c2f84272fb345abb51c8884  // Size=Small, State=Hover
```

#### Empty state with illustration  (2 variantes totales)
```
  6421f966d6c69ba51acca3197b082146349f2e7e  // Size=Large
  2af923b4f912f3af351cfb3d5fd5261a6480eb3c  // Size=Small
```

#### Emtpy state with icon  (2 variantes totales)
```
  c4745dd8744b4bcee28ed08c940c14892d005096  // Height behavior=Singleline
  2cdc08904cd6e7597028f4bc5927086740613a03  // Height behavior=Multiline
```

#### Expandable section  (144 variantes totales — ejes)
```
  Size: Medium | Large
  State: Idle | Hover | Active | Disabled
  Color: Neutral | Accent
  Configuration: Label + Chevron | Label | Label + Action + Chevron
  Expanded: Off | On
  Sample: 0533674ba316c4d025c2489fc254688723294e33
```

#### FAB  (18 variantes totales)
```
  ed2e94b073540537b183d993cf882e1aef71deb6  // Size=Large, State=Idle, Hierarchy=Loud, Expanded=On
  23801505abb567b3d58d3072c76206d3f4b1757b  // Size=Large, State=Hover, Hierarchy=Loud, Expanded=On
  794c753bb1eedc300c2a1dc2313d0cdbf3bb3a26  // Size=Large, State=Active, Hierarchy=Loud, Expanded=On
  e10b799911a7ae8d847f4351ae0941adece0370b  // Size=Large, State=Idle, Hierarchy=Quiet, Expanded=On
  f8dde0aee5d89b31e4f1895e5d6bf9ecb563a9d4  // Size=Large, State=Hover, Hierarchy=Quiet, Expanded=On
  17c7acedb634ccf8065c58e9a71a4198fb1d8e02  // Size=Large, State=Active, Hierarchy=Quiet, Expanded=On
  398691b5d0d59ab951f1f90e28cd5082efec816f  // Size=Large, State=Idle, Hierarchy=Loud, Expanded=Off
  315006deccf4f55cd1db9ba3cf4641be78c7108d  // Size=Large, State=Hover, Hierarchy=Loud, Expanded=Off
  3a3775151d358178a46d20a626ac8357859e9c80  // Size=Large, State=Active, Hierarchy=Loud, Expanded=Off
  6e71d9c2c409aeedf604ffdf5d9d441ada060ae2  // Size=Large, State=Idle, Hierarchy=Quiet, Expanded=Off
  e89cc841e35bc6bf653f48fdab3ab533ccacf8e1  // Size=Large, State=Hover, Hierarchy=Quiet, Expanded=Off
  04a050ddab594e623d9c2c90dda96d4896b15eb0  // Size=Large, State=Active, Hierarchy=Quiet, Expanded=Off
  d49ba8eca00c56f09c876791b5a9ca01cc8ca847  // Size=Small, State=Idle, Hierarchy=Quiet, Expanded=On
  f741642e93ea8a675e5ec7a22205aa9d13b2728c  // Size=Small, State=Hover, Hierarchy=Quiet, Expanded=On
  1e3088631edd225e3a5d0f402cb2470d3df4d6c5  // Size=Small, State=Active, Hierarchy=Quiet, Expanded=On
  b568fd309b37cddd6c708254b77f2afe6f367cef  // Size=Small, State=Idle, Hierarchy=Quiet, Expanded=Off
  2a674975f56c21d149f279c507cfa2df0de26e76  // Size=Small, State=Hover, Hierarchy=Quiet, Expanded=Off
  c71f1127a373852161508c7bc96544932cdb16f9  // Size=Small, State=Active, Hierarchy=Quiet, Expanded=Off
```

#### FAB Grouped  (3 variantes totales)
```
  55b6a93690a5be5f3fe15709b516e63eb8a9f0aa  // FABs=2
  58eb007c0caa84aa9101aa92222c30fc1f128822  // FABs=3
  6fe2ef446fd6cae7a3aa449833cc10530a9e6c27  // FABs=4
```

#### FAB Nested  (3 variantes totales)
```
  6d37868be1a8b52d78a104efbf4e652fb0d56388  // FABs=4
  60eff1cbcaa828a1017833e16c8eaa93ae79ce84  // FABs=3
  f6e6c7eac2dcb9213f4723b746b76fa860d8e792  // FABs=2
```

#### Feedback screen  (4 variantes totales)
```
  3e26e44346295760df88c4a72f2540e9aa1a1678  // Hierarchy=Loud, Color=Positive
  80793c693f007ef573064b8dd9c5ecd29164b687  // Hierarchy=Quiet, Color=Positive
  508fa3b21f4dcfd6b8176092c7f83737172fd915  // Hierarchy=Quiet, Color=Caution
  419a0ebc397141d0f0ca97b6697ab35b60ce0544  // Hierarchy=Quiet, Color=Negative
```

#### File uploader Desktop  (2 variantes totales)
```
  fe2761876e3d7f1f607cb266188e56493523ebee  // Filled=False
  580c09117a87cbd3fb77355fe4ad92218595c260  // Filled=True
```

#### File uploader Mobile  (2 variantes totales)
```
  ce93f3d1f4c573382fdbcf520599bbe8af7cb463  // Filled=False
  38682b6e3ffd2ae0e38aa63a21148174ef4eb5ad  // Filled=True
```

#### Fixed footer mobile  (2 variantes totales)
```
  7f30eeb2ed58409d6675d78d69260ec9a61c5678  // On scroll=True
  fcccf6309d290c9027149cbe8079a7fdbb3fe5af  // On scroll=False
```

#### Form Footer  (2 variantes totales)
```
  7ce0c80fdfab3d9f6e214758944c068440075a4e  // Actions position=Left
  e6e3e0598261bf3833f7948211cf20480922f7e5  // Actions position=Right
```

#### Header  (12 variantes totales)
```
  b26a81f330ef24ecc73771b62943702e8a33790b  // Nav. level=Flow, Bg type=Default, On scroll=Off
  5e9c6aedde78149b64fe36e147802b08de509723  // Nav. level=Flow, Bg type=On fill, On scroll=Off
  7d721ee113bf3ede11fb8db74cf5cd5a3eb51ce3  // Nav. level=Flow, Bg type=Default, On scroll=On
  bbfaa5d608cc52f8128a130a82727af44fce0f32  // Nav. level=Flow, Bg type=On fill, On scroll=On
  a07f50e9a52379aafb9d0aa6795c003c45cf9aa4  // Nav. level=Subsection, Bg type=Default, On scroll=Off
  e967ae8914ab8e14dc924307549d32497c6f30c8  // Nav. level=Subsection, Bg type=On fill, On scroll=Off
  d75d0b7a5c39846b599e3764407f5962f17c44d7  // Nav. level=Subsection, Bg type=Default, On scroll=On
  14fa68a06595a9694eb651e02d4e69c16ddcc5e1  // Nav. level=Subsection, Bg type=On fill, On scroll=On
  63f99022200e3bd349a23f622e60f1af988102a0  // Nav. level=Section, Bg type=Default, On scroll=Off
  15e779d52890bc7400ca3e1b78e44505f8cca03c  // Nav. level=Section, Bg type=On fill, On scroll=Off
  7c108d1a08fc936ff3e58e54636e416bf4efced2  // Nav. level=Section, Bg type=Default, On scroll=On
  6da231b8439193304330e8689ddaa95e2d415ab4  // Nav. level=Section, Bg type=On fill, On scroll=On
```

#### Header Slot  (4 variantes totales)
```
  9cac932bf162045f5ea803c6001c1906bfe939d0  // Bg type=Default, On scroll=Off
  5ba87320cd174ef6d0399985ae2e18d002c23bf7  // Bg type=Default, On scroll=On
  c8911a4fb552d569655df7fa6c53a26b1e7d5edc  // Bg type=On fill, On scroll=Off
  6d22ea66fbd34e62fe3a243179166ef02fed115a  // Bg type=On fill, On scroll=On
```

#### Helper  (8 variantes totales)
```
  bf8d9f3e92153a5aee0b90dd039757752e514320  // Hierarchy=Quiet, Color=Informative
  1b805b01c0388d271c8b5f867f1b3917d3f2c9cc  // Hierarchy=Quiet, Color=Positive
  4f02c7bf305104a393031fb7433f695918fb9926  // Hierarchy=Quiet, Color=Negative
  c0c008d991b4f2badbdc201e62e01f0617c2dba9  // Hierarchy=Quiet, Color=Caution
  11fc08a4c5bce606922ac4643e57024f6ee255c6  // Hierarchy=Loud, Color=Negative
  899c961cdc60b63763a6160aa18d0d262223dd23  // Hierarchy=Loud, Color=Caution
  8a72854d4b7f6e19bbb35dca458bf80b6c182454  // Hierarchy=Loud, Color=Positive
  321ea6d885d503f0a1882042b7f026e8cacf019d  // Hierarchy=Loud, Color=Informative
```

#### Icon button  (108 variantes totales — ejes)
```
  Size: Medium | Small | Large
  Hierarchy: Loud | Quiet | Mute
  State: Idle | Loading | Disabled | Hover | Active
  Bg type: Default | On fill | On fill inverse
  Sample: 2af9b55ac73db370f34bdbfe3f41484301dbdf25
```

#### Input stepper  (18 variantes totales)
```
  a168d535437519c823629218605b082b67f3822f  // Size=Large, State=Idle
  15f32d2a43d5c8a14f6b4627d570202e390daee2  // Size=Small, State=Idle
  616adf35fed956e3b457c836ad9af01729b9cd7b  // Size=Large, State=Hover
  eff1e01172a1c9467daf071e35204eda1f5f4557  // Size=Small, State=Hover
  4ec9885b603edbb5db8573454ead9f7df8b4d5bb  // Size=Large, State=Active
  b778f8335e25980ae7b51dbc036704e4b9b4243d  // Size=Large, State=Loading
  6157417a6e2b0c00e9d3a71cfd0f09be684d2d46  // Size=Small, State=Active
  4932e5ed5c5bbb4a0c14654b4a1031074baf071f  // Size=Small, State=Loading
  1bcd58d499feb1ab350bc761ba98faf910af1723  // Size=Large, State=Caution
  4be3ac31aa322c23698369df60fe83f6ea090fe3  // Size=Small, State=Caution
  4859f6a83a0b464e6e11df1271ac03da3a4b838b  // Size=Large, State=Caution active
  8cf81812846f1e6bbe269358968253d94c2fbb14  // Size=Small, State=Caution active
  11c77181763848c87c7e6ad592f055b0270e9cc8  // Size=Large, State=Error
  764bb20bb5b4041a013988417ffd0f5439729f92  // Size=Small, State=Error
  76cf714fde18e771089b739e6a19ed5fa2af6276  // Size=Large, State=Error active
  4d25e37d1f776c43a00fa3e68887102f9883da0a  // Size=Small, State=Error active
  9d471e64f14a307d580f2633ba61b38fae63bd7b  // Size=Large, State=Disabled
  f39bd1d365fcbd8a77c41a40144b4a4ff5a381dc  // Size=Small, State=Disabled
```

#### List row  (72 variantes totales — ejes)
```
  Size: Medium | Large
  State: Idle | Hover | Active | Disabled
  Left content type: Thumbnail | None | Icon
  Show description: False | True
  Sample: 12687b5d1472658af2454e09cf3c290854dc8fa2
```

#### List row checkbox  (72 variantes totales — ejes)
```
  Size: Medium | Large
  State: Idle | Hover | Active | Disabled
  Left content type: Thumbnail | None | Icon
  Show description: False | True
  Sample: 5f471a9a75a9a0581d883d3ce110ddfcb37f6515
```

#### List row chevron  (72 variantes totales — ejes)
```
  Size: Medium | Large
  State: Idle | Hover | Active | Disabled
  Left content type: Thumbnail | None | Icon
  Show description: False | True
  Sample: 07e9c5d2884bcbc768ed23b3e51e1e52a936ded2
```

#### List row pick  (144 variantes totales — ejes)
```
  Size: Medium | Large
  Selected: False | True
  State: Idle | Hover | Active | Disabled
  Left content type: Thumbnail | None | Icon
  Show description: False | True
  Sample: 30dbe87d6c6e2b42a1098acfc2477c626189e244
```

#### List row pick slot  (8 variantes totales)
```
  8e3af87e2192f6218d9f2722f85c19962664976a  // State=Idle, Selected=False
  57a3e5b1d893e806074ff473484c8d1285e261b2  // State=Idle selected, Selected=True
  ceea9affb125d53b7ca6c0e13ababda38ef19681  // State=Hover, Selected=False
  b9aa1392c5ee5bd52426f6944f14af560d5a4c72  // State=Hover selected, Selected=True
  28a78a0f5cefdeac6b69ad334c956047db09a450  // State=Active, Selected=False
  f9c741d77a15ebac04b58e6fe8ad7836f18c39fc  // State=Active selected, Selected=True
  da5a8dc76f94efd2bd85f0559905bf613dbedf6c  // State=Disabled, Selected=False
  3f142378a5d2a84fe6aa9cb5d8f3a3ac772a0467  // State=Disabled selected, Selected=True
```

#### List row radiobutton  (72 variantes totales — ejes)
```
  Size: Medium | Large
  State: Idle | Hover | Active | Disabled
  Left content type: Thumbnail | None | Icon
  Show description: False | True
  Sample: 56fd3d9152b444996070e0201dcb2997205d794d
```

#### List row slot  (4 variantes totales)
```
  5c64f6b9d6ae00c94eab3f373ce2ff242777cb1c  // State=Idle
  78c092b451d97f562b2c953816ac37c7ca52e390  // State=Hover
  d2a45f3476f4b0b781bbf359c891b52b125c7049  // State=Active
  36d75ff7d0fd0e2067c0e2043d6350d69b6beaed  // State=Disabled
```

#### List row slot checkbox  (4 variantes totales)
```
  fc447edc1b26b2a5aaad9a5bef30cd3c1adb9766  // State=Active
  5acc5aae58eb7d55e2b255c7cbd6425805570117  // State=Hover
  eca265155184eaaa167fa8dda3a54c7f695471eb  // State=Idle
  ce96954a1789d5c46900915e9a73ca6634aac437  // State=Disabled
```

#### List row slot chevron  (4 variantes totales)
```
  c227f80a7c0a3b40b13d45c49d3655be8a963b05  // State=Active
  e1c5a157e7b3c0ce5f85d75d8dd20a985ea4e7f7  // State=Hover
  07d2bf961fcfa4d371ac70b03f5193017074ce7a  // State=Idle
  9ccf06bf6d7e71c7e85705a9fdc5e60e3063eca0  // State=Disabled
```

#### List row slot radio button  (4 variantes totales)
```
  f6635e33c01876fdd9e922cdd409ed4a9bb83381  // State=Active
  e930ab109028b2bba32c9c3e841d63ced8724f57  // State=Hover
  551a1733a7c580c4da7419222e89c808dabe722e  // State=Idle
  365981492e22faacaef89aa0d39c60f5b56468f8  // State=Disabled
```

#### Menu  (8 variantes totales)
```
  50d3488b01d61a4d2331301c6b421146257aa865  // Size=Small, Scroll=True, Loading=True
  1554883e4b7b23f19b871433864085c9b96344e5  // Size=Small, Scroll=False, Loading=True
  5b53bbd654175fdd601e7ff0b6fa0a4d6c6dc8d3  // Size=Medium, Scroll=True, Loading=True
  2a103022062b4502c1050b5686a99b0adc8b0397  // Size=Medium, Scroll=False, Loading=True
  5a979d0880730d116eabde5cd0b25f701f39d2bc  // Size=Small, Scroll=True, Loading=False
  44ad0710b9af35c00f98847c6458a391ebec8156  // Size=Small, Scroll=False, Loading=False
  e70e6444a98bd2c5c08faac07cd3e25031609eb4  // Size=Medium, Scroll=True, Loading=False
  d59323273ebb1124d507afad9c694e836f20f4cf  // Size=Medium, Scroll=False, Loading=False
```

#### Menu autosuggest  (8 variantes totales)
```
  c4d26aab59d62f41de3f21bdb224f1ddeb50c910  // Size=Small, Scroll=False, Loading=True
  8108eb130f1aaeef9d98c035703157c1b5877929  // Size=Small, Scroll=True, Loading=True
  813627a744f12f895f6ab1c9183cf816243f6e19  // Size=Medium, Scroll=True, Loading=True
  7963b18ab28ab462ea0319408813aea95f152c14  // Size=Medium, Scroll=False, Loading=True
  b825d49623609d7f6accc8813291c8460a31615b  // Size=Small, Scroll=True, Loading=False
  36cc231d6d59f3883ef3fb134b765f9e1ec23e92  // Size=Small, Scroll=False, Loading=False
  bf1c790dc1f132a73804c72447581fe133f33722  // Size=Medium, Scroll=True, Loading=False
  198af2736729dd6848ed0efb5cb498c98564b990  // Size=Medium, Scroll=False, Loading=False
```

#### Menu multiple selection  (8 variantes totales)
```
  272f9e66a63f7a04b89437bee4ce20925f7cda52  // Size=Small, Scroll=False, Loading=True
  2b3d9a484e10e9971d5958bcca377a4792606510  // Size=Small, Scroll=True, Loading=True
  59f942d0b5ef24776e27997fb311bf670a81e06e  // Size=Medium, Scroll=False, Loading=True
  c30ba3b8275946d11b89d4689664c72718bbc8b8  // Size=Medium, Scroll=True, Loading=True
  30760aec9bd2b0bbd1d97657ef5a1f6798eaaf26  // Size=Small, Scroll=False, Loading=False
  3c0177a6d951ab1a8862b357c47b61ae4dcb8562  // Size=Small, Scroll=True, Loading=False
  38f94b0985106876c9b1be262b57aed4693d7d93  // Size=Medium, Scroll=True, Loading=False
  a4a37f8fcfa334e6f0b3b50d723d90bf5a734456  // Size=Medium, Scroll=False, Loading=False
```

#### Menu single selection  (8 variantes totales)
```
  22ba5cf3438b65234cda11f336a903d126e4c9aa  // Size=Small, Scroll=False, Loading=True
  f5407d162ae2931cadae8667bb13c6425e6be58c  // Size=Small, Scroll=True, Loading=True
  0599b818b2626908a843a7e08087ebdc3d5e9721  // Size=Medium, Scroll=True, Loading=True
  ccfc43fc4060b6fc54f606b0e07c45997fab6969  // Size=Medium, Scroll=False, Loading=True
  daeaece874a4f75bab98ef18f110c1a61271f0a0  // Size=Medium, Scroll=True, Loading=False
  71bd3d6ddcfef7556f45cb5273b194952d67aa8f  // Size=Small, Scroll=True, Loading=False
  33082b8f0f1bce2095511857625a620fcf38ca32  // Size=Medium, Scroll=False, Loading=False
  7bc8bae910c613cf5db543538af7903e9216e721  // Size=Small, Scroll=False, Loading=False
```

#### Message  (40 variantes totales — ejes — timeout al importar — usar dims)
```
  Color: Positive | Caution | Negative | Informative | Neutral
  Hierarchy: Loud | Quiet
  Show thumbnail: True | False
  Show title: False | True
  Show action: False | True
  Sample: c8bc5c763cf22a7bff5320b609cd36cf112f17cd
```

#### Money amount  (24 variantes totales)
```
  bed8f5993df82c380bf86a9e99394132dc9e4e46  // Size=XUltra, Hierarchy=Quiet
  784612c3446b162106e32bb5380d23fd8cb12073  // Size=Ultra, Hierarchy=Quiet
  b9a845b6ec8b0f0d250233c51791827dae78a03b  // Size=XMega, Hierarchy=Quiet
  b0ffe6bd8392532f182f8cba06dfad7d156b01f2  // Size=Mega, Hierarchy=Quiet
  6bd724045f965f9d70e17666cf5299769dccec03  // Size=XHuge, Hierarchy=Quiet
  a73bc836f551cbc85201674e8dbae6ab3fc3b593  // Size=Huge, Hierarchy=Quiet
  4423b8ca6772f10666adb3da6680d4fa86f90b97  // Size=XLarge, Hierarchy=Quiet
  9e1c7d2ab750e9a84017e2fd011c3b21575af958  // Size=Large, Hierarchy=Quiet
  1138e6797df4f65687bde1b060bd90c0de1ee45b  // Size=Medium, Hierarchy=Quiet
  d72303f91b90e094807ff5a354a8416d2ad12b0b  // Size=Small, Hierarchy=Quiet
  5f17beb0c46b463c154ea91dc58f16db7a725dc9  // Size=XUltra, Hierarchy=Loud
  bb3743a201b68fa96c72751ca3c5ea880d48b855  // Size=Ultra, Hierarchy=Loud
  e6cc400012153d53d7235e7183147b2e61c2ae1a  // Size=XMega, Hierarchy=Loud
  7fd34b057b7af29b2299e6728311d8572a916ee1  // Size=Mega, Hierarchy=Loud
  c673a920129cf4364774d609ff07b776a38a61a0  // Size=XHuge, Hierarchy=Loud
  ab8446faf7439d5dd1f49ccdbad8c651be647df0  // Size=Huge, Hierarchy=Loud
  8b3f874c654c97fcf2d4fbdc52bcc9691b395912  // Size=XLarge, Hierarchy=Loud
  21af51c5c12ef91f671b7e409454f4f4532abfaa  // Size=Large, Hierarchy=Loud
  207e73cb1b98de2bd37ba9f757560ca36f9a235a  // Size=Medium, Hierarchy=Loud
  3b99ac7b699aaee49de8b07b9407f2c3a5708bcf  // Size=Small, Hierarchy=Loud
  4e296c4290e884ec004b7591c3bafd4deb5a8efc  // Size=XSmall, Hierarchy=Loud
  4d030db68088f97355e40f1d7672d1336165832b  // Size=Tiny, Hierarchy=Loud
  3c2772fcf839ab063c95497a745c8a5bafcba860  // Size=XSmall, Hierarchy=Quiet
  f755b77058c1f850514ba8e7bf5761bfa9d68a34  // Size=Tiny, Hierarchy=Quiet
```

#### Money amount crypto  (24 variantes totales)
```
  d914f6c2d1aa56005f4c3a58904fbf161dce87ef  // Size=XUltra, Hierarchy=Loud
  172dd5d742c03e53c19a7f76f0cc73d7fed421c4  // Size=XUltra, Hierarchy=Quiet
  95e82ff68a54d713b2cf1140c6622206babaa7e9  // Size=Ultra, Hierarchy=Loud
  55a6d6fcd3d9b8affc7c1b5835bedd2e2a7bc890  // Size=Ultra, Hierarchy=Quiet
  e5d2d0ed0e6b0cc2151fd0ad4c010d79d460ba4d  // Size=XMega, Hierarchy=Loud
  fd277c5c7d8e934b7cf4598fb99082d5502e9cac  // Size=XMega, Hierarchy=Quiet
  8d2d8785cb7c5501a52790132d787a19590dc02a  // Size=Mega, Hierarchy=Loud
  391a48f39eb66486a565328316dc92a4378f6c1a  // Size=Mega, Hierarchy=Quiet
  49ec39e3987e44dd9f5f207b15afeb0c1505a4f5  // Size=XHuge, Hierarchy=Loud
  d798742fac85da4b31886e69e299fcacd5c3f7a7  // Size=XHuge, Hierarchy=Quiet
  e17aff9d41a94c27d063d68702dc3f5922e031be  // Size=Huge, Hierarchy=Loud
  a528a3e2aae6a621683de1f0e0129002cea849bf  // Size=Huge, Hierarchy=Quiet
  e9ed6c8aaa99b9ad7454f7430bcd537e314d3029  // Size=XLarge, Hierarchy=Loud
  d2f1bbb510b67c5a64e9557b2fa849bf2859841c  // Size=XLarge, Hierarchy=Quiet
  fa739c0607f597e024ecbfbbea1c253d16e206f5  // Size=Large, Hierarchy=Loud
  0c2f7987b7fcb0dbbe0956292b0feee758669b74  // Size=Large, Hierarchy=Quiet
  d1c8ecbfc44be592ac6767f6adaffaea459b72bd  // Size=Medium, Hierarchy=Loud
  c55c9974ec600055a2c7597fe9adfbc2db2f1c20  // Size=Medium, Hierarchy=Quiet
  34db74c581454fa1519464045fee5744b984b35e  // Size=Small, Hierarchy=Loud
  67033dde982e0ba9acb0a6365ba091af48ffa05c  // Size=Small, Hierarchy=Quiet
  418b622b26e3d55bb2dbc70c273ef771e5374d21  // Size=XSmall, Hierarchy=Loud
  2287754e1bf9dec1feefaaade6f974d915134d5e  // Size=XSmall, Hierarchy=Quiet
  db32895bff2995129c90b2657314c32c7c14e9b7  // Size=Tiny, Hierarchy=Loud
  3c40e423c6a5490178dd967e4256bcba90b08fca  // Size=Tiny, Hierarchy=Quiet
```

#### Money amount crypto mask  (24 variantes totales)
```
  b8eea8d196890792cd1a3a182469dd870881ce19  // Size=XUltra, Hierarchy=Loud
  8be804a786c9a71b9ae496697e2884accf0ff699  // Size=XUltra, Hierarchy=Quiet
  7a9f84551009496e195fdaf8a03e1e735bf3a103  // Size=Ultra, Hierarchy=Loud
  eec7c2bfbd5facf3ca28ff5bec98798f35f3afa4  // Size=Ultra, Hierarchy=Quiet
  2d14e1058f89cb94f5b7833fe8caa063526786da  // Size=XMega, Hierarchy=Loud
  1c1d41bd1ebbfc77a2860991ef0b34285bff636a  // Size=XMega, Hierarchy=Quiet
  f4e1b6af7d5e9773e40d1bcc73a57eb9e2d5d470  // Size=Mega, Hierarchy=Loud
  140ec45eb4e43767bcbc0902ab94041dd8176f1f  // Size=Mega, Hierarchy=Quiet
  f021de33e55cc5f7315bc2a63594149f979979dc  // Size=XHuge, Hierarchy=Loud
  cf08856301eaab551770918223ebd66ba1f7980a  // Size=XHuge, Hierarchy=Quiet
  9e995bc052bde683a2cbbb9e0d57d70b8958e5d3  // Size=Huge, Hierarchy=Loud
  d66de479402061b2fc5eb2e133ee1b9617b4da40  // Size=Huge, Hierarchy=Quiet
  4dfa04fb22845423c4fe8be972988adf69442d69  // Size=XLarge, Hierarchy=Loud
  ebbbe64e944fbe9c4e10df51aa6a03b88df20d38  // Size=XLarge, Hierarchy=Quiet
  03066eaf2a00c192235d2c18f2e80f1ee6fed0f7  // Size=Large, Hierarchy=Loud
  e620ba6de46c552ee28549f94324231c0adc4230  // Size=Large, Hierarchy=Quiet
  41292b62675dd03730e566c3a205729893e0b478  // Size=Medium, Hierarchy=Loud
  5f7cc0d0ff6c268f6f7ecc9f0c0b9b423179ea61  // Size=Medium, Hierarchy=Quiet
  b401578fa2597416136efc875a30720ae0836375  // Size=Small, Hierarchy=Loud
  a48c54531039504915fd52d7290690201a4706b1  // Size=Small, Hierarchy=Quiet
  5773d4fc0a332d473b1aaf743571b1bfe0b231a9  // Size=XSmall, Hierarchy=Loud
  b71c91c6c6cd19c5f0cee5829a39f51e2716f090  // Size=XSmall, Hierarchy=Quiet
  43f699b87cbde3060faab799c8d8ff05ab457c38  // Size=Tiny, Hierarchy=Loud
  c8a75b98cb242f00b471c55b85e8ef1a509a9b46  // Size=Tiny, Hierarchy=Quiet
```

#### Money amount discount  (12 variantes totales)
```
  bd7949ebcfd502a947e643a06e5e930ad6a48aa6  // Size=XUltra
  a9e29515d96a22a4c55193bc41f35d7b5f478714  // Size=Ultra
  86942ac5cb540a1ab273558ba69c586e851b390e  // Size=XMega
  510c07673eecf108b8163e9c67915664a154a0b8  // Size=Mega
  fa1f651d732f7c75ee224d405d1032ae08048800  // Size=XHuge
  416728178c95e27ddf5a88c5217cfd80d48d6d35  // Size=Huge
  1b7df9c4ba5885b0eda42144c3c65767224670fe  // Size=XLarge
  b06c3242eb0a4238b61d71d922eee4ee55e9ed48  // Size=Large
  ca0ece62ec6862cc2a166990270ae81c73bbd1e3  // Size=Medium
  a9e176302293bab01d83c3e84d0a8830adf83e08  // Size=Small
  9922d2717d4ef43679a21ceac7c481b221eda2f8  // Size=Xsmall
  990a58eb18d16e529b571c9dd0a0b326cef43d9c  // Size=Tiny
```

#### Money amount mask  (24 variantes totales)
```
  10819a872f5a0c6c4e8a8ade30a0cd29ce8d4412  // Size=Xsmall, Hierarchy=Loud
  d55f6221e8ae7cff4428924be0d35d1a8618cc8e  // Size=Tiny, Hierarchy=Loud
  785c55e69398810744c0e1ea0cb6192231bb28cd  // Size=Small, Hierarchy=Loud
  0dd86c9fa3be2783d8bd9fd650dee89f808a76b6  // Size=Medium, Hierarchy=Loud
  cca906f66d36c9bc7c1f321c3e988d673dc5d433  // Size=Xsmall, Hierarchy=Quiet
  e45dc1e2b955c1e96fe11942f9ec6124ffd414d3  // Size=Tiny, Hierarchy=Quiet
  d5263daeb875e33049fa413d7987cef1bcf27227  // Size=Small, Hierarchy=Quiet
  4877bd3bc663aecf75db1e3594cb85ec9e025e54  // Size=Medium, Hierarchy=Quiet
  0a7f61bc9d29ed230b24923a2827914f61bb5d2b  // Size=Large, Hierarchy=Loud
  58c3395c5656ce75b70a0cadd234eacf51b14ccc  // Size=XHuge, Hierarchy=Loud
  899a73f12a30a9b0d99558dbdbe7363c1313c42b  // Size=Ultra, Hierarchy=Loud
  b682e9a06c2108e1ff1d757efac4e7f73bb4f6aa  // Size=XLarge, Hierarchy=Loud
  0f6fb07940c1a7c67024ae1539e51755be4c6d1f  // Size=Mega, Hierarchy=Loud
  5d4a2d692a30b14de809752b0667f5ab9d5ad0f8  // Size=XUltra, Hierarchy=Loud
  11e73e5dbb28057832821b7722c15543b51b44e7  // Size=Huge, Hierarchy=Loud
  d5befb3b4526911b6e203e225a442e0ebbd18db2  // Size=XMega, Hierarchy=Loud
  969ab89a290b7b50f567f610fd3c9c69395f6b86  // Size=Large, Hierarchy=Quiet
  103ba59b1a4953e432f59baf366c1f0879f2cb09  // Size=XHuge, Hierarchy=Quiet
  6c3230634cce1eee485b2cefa9b68ddf6eb79acb  // Size=Ultra, Hierarchy=Quiet
  f0ea4f299e0fc6f562c523acef2d27263769382c  // Size=XLarge, Hierarchy=Quiet
  32623459cad1df59f5019711daddd677ec77dc68  // Size=Mega, Hierarchy=Quiet
  dfff4a2c09ca62ea964f1bcff9c59fdfdbd78329  // Size=XUltra, Hierarchy=Quiet
  89db4cd64069280aea5c25ce3b9865b14ea699f6  // Size=Huge, Hierarchy=Quiet
  14d642bde2960f32fade0554cb7d5901fbc0d67d  // Size=XMega, Hierarchy=Quiet
```

#### Pagination  (2 variantes totales)
```
  bdb62596922834fd51eac7320ce41e3904f21767  // Size=Large
  79c1c75d605f0f2473de3322fd8611426cae7c06  // Size=Small
```

#### Popover  (16 variantes totales)
```
  ad98b09145867b617997f3a0fc0786a697879557  // Tip position=↖ Top left, Bg type=On fill
  86b86a739e70d684ae6d3409823bc6adfe8404f9  // Tip position=↖ Top left, Bg type=On fill inverse
  eeef37823e45af2ddf555a72e928b71c0651cce6  // Tip position=↙ Bottom left, Bg type=On fill
  7e2ba198161e89f1c1b1cb7f2871de168f85bf42  // Tip position=↙ Bottom left, Bg type=On fill inverse
  71f4153cfdfb8559b58f022ecb5021f529a2dcba  // Tip position=↗ Top right, Bg type=On fill
  08a5f9dc26b03fa19f330030407003981027d96e  // Tip position=↗ Top right, Bg type=On fill inverse
  cf11d74ddbb489cf284f99b05b32bc1d192cfd7f  // Tip position=↘ Bottom right, Bg type=On fill
  55680a314645b82c21e8e3b97d8713fc9480ce06  // Tip position=↘ Bottom right, Bg type=On fill inverse
  c3c5129960a5cf588eb35549594e1b617ecd43ea  // Tip position=↑ Top center, Bg type=On fill
  072a1c63077aee7bc97618e33eac585aa94b7f96  // Tip position=↑ Top center, Bg type=On fill inverse
  a7fb475ef95fe022a3839e79709f5c62f870a0f3  // Tip position=← Left, Bg type=On fill
  22b96fcb7fb853ab48ef77d40dbc5a1e73bb97e6  // Tip position=← Left, Bg type=On fill inverse
  c1a12c1c180dbfec46082da2dbc2bd976a2e9523  // Tip position=→ Right, Bg type=On fill
  869efccbef13b2ab18699a6b76054c6593ab5772  // Tip position=→ Right, Bg type=On fill inverse
  c6c17f75d103627b6943651c762ad49707d7b26e  // Tip position=↓ Bottom center, Bg type=On fill
  44748efc7c9d21b4c309e07ab95437cf61073e10  // Tip position=↓ Bottom center, Bg type=On fill inverse
```

#### Popover slot  (16 variantes totales)
```
  f3dc5672fc94fef4f569152f7f27f5c4ab56928d  // Tip position=↖ Top left, Bg type=On fill
  96c3733b329c88999d790ceb5eacbfe35d092c0c  // Tip position=↖ Top left, Bg type=On fill inverse
  9f4d42ecdfb09768085ed20ca287511dd6f4961c  // Tip position=↙ Bottom left, Bg type=On fill
  a7931a56b7bc5ecb538fdc97fdb72ab632a358e7  // Tip position=↙ Bottom left, Bg type=On fill inverse
  6fa8b945965ef6e0709df1516c5d6585c9802cf9  // Tip position=↗ Top right, Bg type=On fill
  c7f50fd893eb91e86c2da062a19b5ec707caabea  // Tip position=↗ Top right, Bg type=On fill inverse
  c5397cae18f50360b685cd619e2d3b84073ad639  // Tip position=↘ Bottom right, Bg type=On fill
  2c33c75f28c3c5f2772963b1dfa9519e031f729d  // Tip position=↘ Bottom right, Bg type=On fill inverse
  d4a789e225eb01505477c7169c1ac1fcd5c4166a  // Tip position=↑ Top center, Bg type=On fill
  ce2e81362a5b0dab21f9cd5c9dee36a1e4cb7e04  // Tip position=↑ Top center, Bg type=On fill inverse
  399192c67af9abb63567437aeb069ce3da395e08  // Tip position=← Left, Bg type=On fill
  3eeb32521095eadf3b0f85d725c36ec4d0369548  // Tip position=← Left, Bg type=On fill inverse
  e104d65b49a7347bab3d32d231b56f6afaf13d48  // Tip position=→ Right, Bg type=On fill
  13c37a41a4b10f64db99c169d8b88253ad3367a1  // Tip position=→ Right, Bg type=On fill inverse
  8344d7e5cf6f1c264df078d03a7388ca190c74bf  // Tip position=↓ Bottom center, Bg type=On fill
  23d3f08db6ecd8913a821c7563c35c14539eff26  // Tip position=↓ Bottom center, Bg type=On fill inverse
```

#### Progress indicator circular  (265 variantes totales — ejes)
```
  Size: Medium | Small | Large
  Value: 0% | 25% | 50% | 75% | 100%
  Color: Positive | Caution | Negative | Informative | Neutral | Inverted
  Bg type: Default | On fill | On fill inverse
  Show counter: False | True
  Sample: 026e46c4d05556e41958d1ee3d8110efd132b9b1
```

#### Progress indicator comparison  (180 variantes totales — ejes)
```
  Size: Large | Medium
  Color: Positive | Caution | Negative | Informative | Neutral | Inverted
  Expected value: 25% | 50% | 75% | 100%
  Value: 25% | 50% | 75% | 100%
  Bg type: Default | On fill | On fill inverse
  Sample: 0d31c16fadf08741ac61e5ed88801c8ad580a58a
```

#### Progress indicator linear  (60 variantes totales — ejes)
```
  Size: Large | Small
  Value: 0% | 25% | 50% | 75% | 100%
  Color: Positive | Caution | Negative | Informative | Neutral | Inverted
  Bg type: Default | On fill | On fill inverse
  Sample: 5b9c022a6cadf43b667a62ce1bec25e1aff9daed
```

#### Progress indicator segments  (108 variantes totales — ejes)
```
  Size: Large | Small
  Color: Positive | Caution | Negative | Informative | Neutral | Inverted
  Bg type: Default | On fill | On fill inverse
  Segment count: 3 | 4 | 6 | 8
  Sample: 094953bd970237519f6a0c5aaabc1e41e6a818b7
```

#### Progress indicator/Recipes/Progress indcator linear determinate (animation example)  (2 variantes totales)
```
  00ca369178ea831de8e07d03c15f4084fdc88f29  // Progress=Start
  a22911c813d579d9c7efa736fdb4462d43226222  // Progress=End
```

#### Radio button  (27 variantes totales)
```
  ac45b83296ac939e312bdaa8847c1abd23abaab2  // State=Idle, Selected=False, Label position=Right, Show label=True
  f626c2d8531e6ca01e8942367a82fd298ac475db  // State=Idle, Selected=False, Label position=None, Show label=False
  d643634f6e20353da3295d9b90bb54134a9e9b4d  // State=Idle, Selected=False, Label position=Left, Show label=True
  55f8eea938f376d059fe19f381814bde8e6ec0d1  // State=Hover, Selected=False, Label position=Right, Show label=True
  98a2a68a37e07df43391db76685cf000273198c0  // State=Hover, Selected=False, Label position=None, Show label=False
  57861fcc9637194e106f5c24987eba833ba7ecb4  // State=Hover, Selected=False, Label position=Left, Show label=True
  20b77f7a9328fc36bcea94c513f67c66e1332320  // State=Active, Selected=False, Label position=Right, Show label=True
  b8bde9d709af972b28a8ebda1d2718f82f2c01bb  // State=Active, Selected=False, Label position=None, Show label=False
  0b5e384dc60364791cc394971d0d86e712b0b8cd  // State=Active, Selected=False, Label position=Left, Show label=True
  f6db2cd3131a0394ea56b7251d23895a33bec42a  // State=Error, Selected=False, Label position=Right, Show label=True
  b5fb1d1e43ed64efba0a030bfc1afc1b2df0be1c  // State=Error, Selected=False, Label position=None, Show label=False
  0cd76eba25814da8660e193acbaa51907cef5337  // State=Error, Selected=False, Label position=Left, Show label=True
  614f82132f312253a6761d53e2ac045812a5977e  // State=Disabled, Selected=False, Label position=Right, Show label=True
  6ddb22aca352281f5b503aa854ae41f169930bd4  // State=Disabled, Selected=False, Label position=None, Show label=False
  df911eabf84273f4026a8b56e91b39414b307e4b  // State=Disabled, Selected=False, Label position=Left, Show label=True
  643deafded54463a784a7cce49bbd9adec5ea5ac  // State=Disabled, Selected=True, Label position=Right, Show label=True
  74ce240fb75c4758ffb63aa87d3e977a55df9898  // State=Disabled, Selected=True, Label position=None, Show label=False
  a162416561c3832bc0b357089a85e3d1877aa6cd  // State=Disabled, Selected=True, Label position=Left, Show label=True
  a1b65b165b427179190f3d8d331c0d4314fc2571  // State=Active, Selected=True, Label position=Right, Show label=True
  16193dabfd4bd1e602bdce1463308208bd22e81b  // State=Active, Selected=True, Label position=None, Show label=False
  55edae2be30b4dbe04e1e0f89d0b3358fab7b49c  // State=Active, Selected=True, Label position=Left, Show label=True
  5d2247586a003a383899a2d5de3bc0c6d7af92ed  // State=Hover, Selected=True, Label position=Right, Show label=True
  24596ba90cbb13d1cb9c583b068f14acf17d4513  // State=Hover, Selected=True, Label position=None, Show label=False
  7371787601d054a6dc699c0dc8953e5c283cfe7a  // State=Hover, Selected=True, Label position=Left, Show label=True
  c62c125e243120a95b6891aa9bd83e35cf709770  // State=Idle, Selected=True, Label position=Right, Show label=True
  1385fe7d0640fb03a371f43f30ee11a680e5015e  // State=Idle, Selected=True, Label position=None, Show label=False
  f8f0d2dcb66334b05bd39338699d78e16e5bc487  // State=Idle, Selected=True, Label position=Left, Show label=True
```

#### Radio button group  (18 variantes totales)
```
  40c0c8cf0c939f614ac218385f6e8e3e9830a07c  // State=Error, Radio button count=4, Layout=Column
  a7aa2addd270bf35583ad1651e90d9d62d98401b  // State=Error, Radio button count=3, Layout=Column
  53670e19a3c764c2b7c8270efcceb69831b7b7a2  // State=Error, Radio button count=2, Layout=Column
  0886057789415cf60e65de4ff3eb4de3e873974f  // State=Idle, Radio button count=4, Layout=Column
  a60bf2326a5b8b205e4cee678cdda5fd2d7ebe05  // State=Idle, Radio button count=3, Layout=Column
  c5b3bcfc149a044f9dded6ddb036ef1586de6c25  // State=Idle, Radio button count=2, Layout=Column
  e99e059f8800ab641595f24ceacea950210b5696  // State=Disabled, Radio button count=4, Layout=Column
  e898c88951b687f79f1b54adaef5d90c1df4c99e  // State=Disabled, Radio button count=3, Layout=Column
  1196be798fb63a3fc19e95e436e553f52a862dd9  // State=Disabled, Radio button count=2, Layout=Column
  a83b9b10b9c40fc7fdce963a1f0518fc8d0c8ed9  // State=Error, Radio button count=4, Layout=Row
  ec9fecafbf3e5f9aa3614c202f625fb39d7d4bec  // State=Error, Radio button count=3, Layout=Row
  6efafe0e948aa729dfbc8e2df8ccee2aae0d8bfc  // State=Error, Radio button count=2, Layout=Row
  7abba7828f6f1cf17893faf306b93168b6be192a  // State=Idle, Radio button count=4, Layout=Row
  6e97d8ec74784a6ef8cfd9bc2a4460d7e3b3aaf9  // State=Idle, Radio button count=3, Layout=Row
  11e7020803146b0a10c454581f6d2d7dcd2e6689  // State=Idle, Radio button count=2, Layout=Row
  ece076ea7b6b6589baf16217856395c0073e3026  // State=Disabled, Radio button count=4, Layout=Row
  804ad797d32694d501314bc255de49157ed3e656  // State=Disabled, Radio button count=3, Layout=Row
  384e6fb9b7b77e506de7b4cb30c9cd84bcec9b71  // State=Disabled, Radio button count=2, Layout=Row
```

#### Searchbox  (26 variantes totales)
```
  dfc2b8962ef7a96db75fa7219c28cf7b5a37e4dd  // Size=Small, State=Hover, Shape=Rounded, Collapsed (S-M only)=True
  174a22bd42bf9e908b0cc147d4a1989e837264e4  // Size=Medium, State=Hover, Shape=Rounded, Collapsed (S-M only)=True
  5a5049b2c9f03adc91c95543500f982041c1ee0e  // Size=Small, State=Hover, Shape=Squared, Collapsed (S-M only)=True
  265a998bd36376c00499ecc70ed734bbf09aa9c7  // Size=Medium, State=Hover, Shape=Squared, Collapsed (S-M only)=True
  3d59a7901a8f8eaac8e39abf772b45604804c933  // Size=Small, State=Idle, Shape=Rounded, Collapsed (S-M only)=True
  c7610ab4c782a6f403620e56fa0c52a4a859f0a1  // Size=Medium, State=Idle, Shape=Rounded, Collapsed (S-M only)=True
  e7e64a0b3ce24b3f6fedcb18de434426433a01f1  // Size=Small, State=Idle, Shape=Squared, Collapsed (S-M only)=True
  c153cfcbe252427d7f6529927c1459acb807066b  // Size=Medium, State=Idle, Shape=Squared, Collapsed (S-M only)=True
  1367fa6b10a7adec1a2bfdab048fd66c70b37a7f  // Size=Small, State=Idle, Shape=Rounded, Collapsed (S-M only)=False
  ed315b32df3d003a219735dcefa5bdf03229f418  // Size=Small, State=Idle, Shape=Squared, Collapsed (S-M only)=False
  b274adcb563794671d38f1c72762f02291f5f02b  // Size=Small, State=Hover, Shape=Rounded, Collapsed (S-M only)=False
  7a6171dda762680f93bab4c8fe3879322fb8ca67  // Size=Small, State=Hover, Shape=Squared, Collapsed (S-M only)=False
  68965c1b1113670340b542148562a0e5af8803d0  // Size=Small, State=Active, Shape=Rounded, Collapsed (S-M only)=False
  a1f449407077b44e4c7cad5470b81f00373cb40f  // Size=Small, State=Active, Shape=Squared, Collapsed (S-M only)=False
  87c20cb6960ca7b0a7a6d6aac7777b454115bcba  // Size=Large, State=Active, Shape=Squared, Collapsed (S-M only)=False
  d0031aae7b9f33aea27b87379b32f6b16bbec701  // Size=Medium, State=Active, Shape=Squared, Collapsed (S-M only)=False
  60fc82a97b2b7d89bf0380ed102931783ec07555  // Size=Large, State=Hover, Shape=Squared, Collapsed (S-M only)=False
  2f927b51ea4f051a50d47a9036c5ea7f5e47a1d7  // Size=Medium, State=Hover, Shape=Squared, Collapsed (S-M only)=False
  0a0c89c0025939f307c10b2d4119a3019a6fab6c  // Size=Large, State=Idle, Shape=Squared, Collapsed (S-M only)=False
  e3009fa0a33f3453d06006dc4f02b984d12325a7  // Size=Medium, State=Idle, Shape=Squared, Collapsed (S-M only)=False
  4f57574bd0008149fe72d6bb233c226d97024a39  // Size=Large, State=Active, Shape=Rounded, Collapsed (S-M only)=False
  7a656f2b7d396d5eeb3be3af80022b7e97646223  // Size=Medium, State=Active, Shape=Rounded, Collapsed (S-M only)=False
  4da10c60085e8eee01bd1109ce1f59ecdd62b21c  // Size=Large, State=Hover, Shape=Rounded, Collapsed (S-M only)=False
  030939d695070e0698806c1ef4c1fcd5e07cfc24  // Size=Medium, State=Hover, Shape=Rounded, Collapsed (S-M only)=False
  dad17f9b181d58dd48f8a5919297c2dba21cb04c  // Size=Large, State=Idle, Shape=Rounded, Collapsed (S-M only)=False
  897540c3a52283b691cefe7b412bcf3f28796cf6  // Size=Medium, State=Idle, Shape=Rounded, Collapsed (S-M only)=False
```

#### Searchbox split  (26 variantes totales)
```
  eb9b6474e3263ab46c10d200cc8877f03d723921  // Size=Small, State=Hover, Shape=Rounded, Collapsed (S-M only)=True
  e49fcd7051a14bf209b97fdb24f2e629d6093ec4  // Size=Medium, State=Hover, Shape=Rounded, Collapsed (S-M only)=True
  2a2b5d256901ef445a2b78d00807e9a268e28536  // Size=Small, State=Hover, Shape=Squared, Collapsed (S-M only)=True
  96eff1ab91a605df31fa786ce9b3e274f7271eb4  // Size=Medium, State=Hover, Shape=Squared, Collapsed (S-M only)=True
  9d343fddb51b627480d2f142a982bf17358381d6  // Size=Small, State=Idle, Shape=Rounded, Collapsed (S-M only)=True
  9b83f9af00f5107f20ffeecd033f6b8b75eb5e5d  // Size=Medium, State=Idle, Shape=Rounded, Collapsed (S-M only)=True
  595de25d79d040d41c2ffc753660ba64e14453d7  // Size=Small, State=Idle, Shape=Squared, Collapsed (S-M only)=True
  449a7c8f7262ac2cde41f389b0114eb9380e1806  // Size=Medium, State=Idle, Shape=Squared, Collapsed (S-M only)=True
  ea181d81caeff91396570ee996448df9dd96b07d  // Size=Small, State=Active, Shape=Rounded, Collapsed (S-M only)=False
  7fa4f916951279797542bc7d9a32e4dfdbc26679  // Size=Small, State=Active, Shape=Squared, Collapsed (S-M only)=False
  041678d64c265101654fdd4d8df6d160162fa8bf  // Size=Small, State=Hover, Shape=Rounded, Collapsed (S-M only)=False
  0cd9ea9e7e368af48b6244a4040a626445e8bbb5  // Size=Small, State=Hover, Shape=Squared, Collapsed (S-M only)=False
  11b83bef80907f779d66ca7bcaffff3f1f40f77b  // Size=Small, State=Idle, Shape=Rounded, Collapsed (S-M only)=False
  3535da0274d9e71ed1e04c8f720b9871ea177780  // Size=Small, State=Idle, Shape=Squared, Collapsed (S-M only)=False
  7c1abe1f0983c5fb08b232511703a51852bf143e  // Size=Large, State=Active, Shape=Squared, Collapsed (S-M only)=False
  06e36c6c839c298d5890daac682e1aa1c6316977  // Size=Medium, State=Active, Shape=Squared, Collapsed (S-M only)=False
  9fff9ae1355ed3c66164f7e75801d9878af920da  // Size=Large, State=Hover, Shape=Rounded, Collapsed (S-M only)=False
  0bcb72e665f69980bbaf882d271a49a6b137a333  // Size=Medium, State=Hover, Shape=Rounded, Collapsed (S-M only)=False
  e09f1dd2d74d9bbd34a97082267556d1bdbdfd82  // Size=Large, State=Hover, Shape=Squared, Collapsed (S-M only)=False
  e760ab4df17a43b84ae09e86ed425a04fd268f7c  // Size=Medium, State=Hover, Shape=Squared, Collapsed (S-M only)=False
  ab8805415e1ff297ca7eb16cced3289bed36fe43  // Size=Large, State=Idle, Shape=Rounded, Collapsed (S-M only)=False
  c480492cdf0ce54eba75a5e6ad9d8e4cd51d9d6a  // Size=Medium, State=Idle, Shape=Rounded, Collapsed (S-M only)=False
  2fc558cce412ba4eecc75c10c099baa59b2c150b  // Size=Large, State=Idle, Shape=Squared, Collapsed (S-M only)=False
  5ecaa260272babada950756d290a099eb795d66b  // Size=Medium, State=Idle, Shape=Squared, Collapsed (S-M only)=False
  ddab5113d460fd47fb4559a525b5e374746d8fd8  // Size=Large, State=Active, Shape=Rounded, Collapsed (S-M only)=False
  050d6e0901498efe385c3e3159f32668b2136ca0  // Size=Medium, State=Active, Shape=Rounded, Collapsed (S-M only)=False
```

#### Segmented control  (96 variantes totales — ejes)
```
  Size: Large | Small
  Segment count: 3 | 4 | 5
  Width behavior: Variable | Proportional
  Configuration: Asset | Asset + Text | Text
  Bg type: Default | On fill | On fill inverse
  Sample: 0d297539e0ca2dea5021f444fd0974dbf989d53f
```

#### Shortcuts Grid  (21 variantes totales)
```
  0d0f47edf3f206eeaadc63fc18643f7161df6d1a  // Size=Small, Shortcut count=8
  81bbc3233401080cf68d596fc933814a2ccff64c  // Size=Medium, Shortcut count=7
  6f244fb5935e443dff6b136157fe2c9fec0d3073  // Size=Small, Shortcut count=7
  735db1822a56bc478de401bc90c242ba0b2f6ac0  // Size=Medium, Shortcut count=6
  78555de41fa451e84af9c497c0046bf5c5976cd1  // Size=Small, Shortcut count=6
  4e96fc935a0dcd6f63c7536bfe74547238c94afd  // Size=Medium, Shortcut count=5
  3cd645634e3e63ccf6d43506cb98c756e3b7d1dc  // Size=Small, Shortcut count=5
  b968af983dfc83a38f5d97deea6e083a89683e3f  // Size=Small, Shortcut count=4
  7966a52f15930b8e979ee396b209206141ac03da  // Size=Small, Shortcut count=3
  417777a69fce3efa938a185986775af9971b1c39  // Size=Small, Shortcut count=2
  ecca65d81ae21bd74806a7526dc682a60a0a6e0a  // Size=Small, Shortcut count=1
  ebc8083e66870df14713a5ce0077f56f65c7611a  // Size=Medium, Shortcut count=3
  8a4080a9bb1f833a5f758be681bf6b82a6aa08c9  // Size=Medium, Shortcut count=2
  f5b1a2d79f7ac6b2036af6fae242deef91c50b40  // Size=Medium, Shortcut count=1
  14bc39c8322a97f3ae262366de3f0a0e4b13691b  // Size=Small, Shortcut count=9
  6dc8003d3fbe6869b298938d941b67b8e2b65c07  // Size=Medium, Shortcut count=8
  3cd21ef2fbd41617d230229594c58c892545535a  // Size=Small, Shortcut count=10
  ac2eb05c0cb51f0b99b7e9a32fd1156b6d1a175c  // Size=Small, Shortcut count=11
  cb79887e63c25e536f61753d16a01ff0c0017036  // Size=Small, Shortcut count=12
  f05688c5fd65a3cf96a31802ab6dd2f2198f8b53  // Size=Medium, Shortcut count=9
  a97fb8b218ffff8c2eef31183d00db6bc7860b6a  // Size=Medium, Shortcut count=4
```

#### Shortcuts Row  (16 variantes totales)
```
  9b86b75a10dd172604210dcb0a6715983c3172f6  // Size=Small, Shortcut count=3
  3d49202badb41cbb7c57727f088f73945b65e2ae  // Size=Small, Shortcut count=2
  b4d48d3956079c820d125f008fc8aefae2916596  // Size=Small, Shortcut count=1
  0555110e178ba71b4cdc94b090423a23f33fd4e4  // Size=Medium, Shortcut count=3
  4af8dfcc1017bacaa81bcb4b4e51d48d9471f571  // Size=Medium, Shortcut count=2
  55efba2442f7d47e33bd9b91da9e21b016ff5c61  // Size=Medium, Shortcut count=1
  6e4ba413959be513d2f4c092206baef4069c274e  // Size=Small, Shortcut count=4
  a0f4d4a50ff1a3cdaa00ba32931902245d53a5ff  // Size=Medium, Shortcut count=4
  5fc795129a6f394db418fb08f6f00c9e622d597e  // Size=Small, Shortcut count=5
  1d3788fd4ddef466ed4197b15e4064f76ff85973  // Size=Medium, Shortcut count=5
  276da9738bd0483590be2510619a098d18a0d7b9  // Size=Small, Shortcut count=6
  32ae4a57498e75df59b3b93c5741a7589238e5d1  // Size=Medium, Shortcut count=6
  d6dcbecb01ca43fd405579a54e7760f1a76b1ba8  // Size=Small, Shortcut count=7
  3f9f864efd6a6ce2b0edd88922becbc6dd6b736c  // Size=Medium, Shortcut count=7
  c8025298a73b81590aba2ec4a6078c79b15691b1  // Size=Small, Shortcut count=8
  ec25479ebee986e07ef11411236b6f38f2874323  // Size=Medium, Shortcut count=8
```

#### Skeleton card  (2 variantes totales)
```
  cad8fe2d8663cd62bf33885448cab246e6277d82  // Hierarchy=Secondary
  9665331e30f20e7a16d4062178cc2ba637792a17  // Hierarchy=Primary
```

#### Skeleton list row  (3 variantes totales)
```
  2d50d2e6e12fe6f66c727d13444629f25e3d337d  // Size=Medium
  03c18ffa02f4d0293647f1896c64b2e0db1c77ca  // Size=Large
  ee25efdd7dadc977d391636fa35a9f93428b2eb3  // Size=Small
```

#### Skeleton shortcuts grid  (21 variantes totales)
```
  4b18bba88ba536c80d3e1090f403522761fce8ed  // Size=Small, Shortcut count=8
  bdd8fa1575de103bf613f03c6380d5b23359112d  // Size=Medium, Shortcut count=7
  5e9909276d33e4b5ebf359cf733eb514e2d43f23  // Size=Small, Shortcut count=7
  9667ff6a831aa5dd9faa9d7a6462d4c345c4041c  // Size=Medium, Shortcut count=6
  32c2495206209202419af7b9d4c666ecb7cbd9fd  // Size=Small, Shortcut count=6
  52a89f38af8c2a3a7767c6df09b40603aa5b7d4e  // Size=Medium, Shortcut count=5
  7bce2c2b3954704538fd881b903a392129cda6c1  // Size=Small, Shortcut count=5
  381a6e445dcc9d2792a66735aca9756b06ea09c6  // Size=Small, Shortcut count=4
  0215a11782d5458c512a7ee9bfc2b0c0dd4053e9  // Size=Small, Shortcut count=3
  744cb1d04ecdea2a10f4cedc603b183c01502a45  // Size=Small, Shortcut count=2
  a432c401b0dcb41a8d5d18ad4fa90096fc127f4c  // Size=Small, Shortcut count=1
  54b364ab04533f50221a64a8288ee901629871e9  // Size=Medium, Shortcut count=3
  03144a835a1880bcb0f61a83d60d0c82913cc33d  // Size=Medium, Shortcut count=2
  688ce19224e553dbab586c08108f3ca0647a1200  // Size=Medium, Shortcut count=1
  44608d094540563eb73ce828f9cdb3190b982b9c  // Size=Small, Shortcut count=9
  f02853fa464006d4cf720e88e7a6fe76b6fa76d3  // Size=Medium, Shortcut count=8
  ec5c78a0636acc2ecc9f2737dd61a1a5a2362189  // Size=Small, Shortcut count=10
  150098e14f480e8fe4b459b26306b31239a0ea38  // Size=Small, Shortcut count=11
  0088c0956ba24c189ada3838a9ab216126109e13  // Size=Small, Shortcut count=12
  cf18a89dd36514a97ef8e27b29bc85f9c43145a3  // Size=Medium, Shortcut count=9
  076ff7d5bfb39e3cd1ca0ba7ee9f4a921eea0484  // Size=Medium, Shortcut count=4
```

#### Skeleton shortcuts row  (16 variantes totales)
```
  cab612fa855d352ba93b7484a285e2c573b4c36e  // Size=Small, Shortcut count=3
  f72ca504a99e46e580905d0fdd1c97fb709407e2  // Size=Small, Shortcut count=2
  b3c110172b0600c6bc38649406f4dcd8889af5e0  // Size=Small, Shortcut count=1
  3e011e16780cfdf1a5af8f7952b811beb6d3b520  // Size=Medium, Shortcut count=3
  9c936a9e9904055fe72dd32fbdb3106cb3400d1a  // Size=Medium, Shortcut count=2
  82774e33ffb3eb65a48523de02e8a66300ccd5f3  // Size=Medium, Shortcut count=1
  4dc71f53831e1e13db012b2393c9d515e212d469  // Size=Small, Shortcut count=4
  9ca83436aef084552d8f41c3514af237d9f1ddd9  // Size=Medium, Shortcut count=4
  ac87cc5baa4cb84bc9edf6180892884b7c3f02b0  // Size=Small, Shortcut count=5
  a9ecacb4ffd5490aaa0cea63ca19ccbe51414ccd  // Size=Medium, Shortcut count=5
  886d1ac9656f0b9972b03296e5e7601e6da60757  // Size=Small, Shortcut count=6
  ab39331972dbf6ede2ebc37c3498d170f18d8d49  // Size=Medium, Shortcut count=6
  bdcea9b25b6b43a800e976f4d4033653b8c121a0  // Size=Small, Shortcut count=7
  619c5f6a27750786ebc0fdc436dd9e7f6dea36ce  // Size=Medium, Shortcut count=7
  8f0361941f23ee85593b7e5714006cf328cac809  // Size=Small, Shortcut count=8
  f2c5ca99275e4b7ee2b29616476c3506c8fce56b  // Size=Medium, Shortcut count=8
```

#### Skeleton thumbnail  (14 variantes totales)
```
  c17a52815bbf086a17945d0df021834faeed0933  // Size=Large, Shape=Rounded
  aec46e307c89e62cc02ef7435027305400882b8a  // Size=XLarge, Shape=Rounded
  474b9897c5bb526b5c546b850fa015fff5c8af5b  // Size=Huge, Shape=Rounded
  1ff02c4ed94adbd41578c00d76596b0bfcdedfd5  // Size=Large, Shape=Squared
  d9cce58983dc95bd6725e3fc7398cfca88a80303  // Size=XLarge, Shape=Squared
  ab6630e0518cd29c6f33d9ba35f8ff97f04d8ab5  // Size=Huge, Shape=Squared
  bb43943798fbb8329a3ba3ac9f87c0b72a12e01c  // Size=Medium, Shape=Rounded
  952dc42cf5c4f93a52c0236c90dc9b2045ac7c7f  // Size=Medium, Shape=Squared
  d88b24c7eb33e36e78cb1b2c0aec1df38c475990  // Size=Small, Shape=Rounded
  955b80dbabdad8bdfa7cf7760c662adf25e55519  // Size=Small, Shape=Squared
  6149febcb52c00800b25aca20c9d4a9226e1677d  // Size=XSmall, Shape=Rounded
  c0e65e729e99994ed754d392bc4d84bd0035af03  // Size=XSmall, Shape=Squared
  a595b9c4aafe723d6ade18a25f4fac2fb471db79  // Size=Tiny, Shape=Rounded
  ca5964f1961e07a1e50599efde269cd089145cd8  // Size=Tiny, Shape=Squared
```

#### Slider  (60 variantes totales — ejes)
```
  State: Idle | Hover | Active | Disabled
  Content type: Text | Icon | None
  Value: 25% | 50% | 75% | 100%
  Sample: 7d57611aadb9b1a02540c8b9dbb39b9f859952ad
```

#### Slider range  (15 variantes totales)
```
  01c152056f3fc2685128874f5f3e3c1b342f0eab  // State=Idle, Content type=None
  812fc0bf046ed5ad29bccdaff398aad6e7b2c8d9  // State=Hover, Content type=None
  bc6f3b7c930fe35b0bc10fe62a3989cb4302d7f5  // State=Active (left), Content type=None
  f63d766666c1849bd8b7be36b1f1707ca3b0daea  // State=Active (right), Content type=None
  a743c98a6b2a992fbe7e916438a7dc769938e1fb  // State=Disabled, Content type=None
  a03aecafc6bf6c6c2955e6e45b84fb1799596235  // State=Idle, Content type=Text
  31efa0220c3320abc5c017a2a476204a33a7d4e0  // State=Disabled, Content type=Text
  def2cfa512331a4261fa448586262a4a00bb8da8  // State=Hover, Content type=Text
  fa8e6bdac27ee1491d7bff0011ae69e346b479be  // State=Active (left), Content type=Text
  6912efbe0d6eba836d290ae6adfd0b382afc27ce  // State=Active (right), Content type=Text
  aac948cbfec5cb36a7b064d4a0563a53c293b546  // State=Idle, Content type=Icon
  1484f6b915f4d26cdd956ba222d9becc0e870b2b  // State=Hover, Content type=Icon
  844a839470dd043a01533911cca88075698a6aa9  // State=Active (left), Content type=Icon
  71e085d02d46fd4984b3c06e72f487399ed79849  // State=Active (right), Content type=Icon
  efed62264b9411e983e2559d83ac25240b26410c  // State=Disabled, Content type=Icon
```

#### Slot (Large)  (1 variantes totales)
```
  2cab0d58b764d5039a6af255e17e92bb7b6449e5
```

#### Snackbar desktop  (2 variantes totales)
```
  2b02bc3f0f4bcafecc97c75e85529b1b071c47a5  // Show action=False
  2019d45d4e8f5afcd4a586d773a09044b989bcc1  // Show action=True
```

#### Snackbar mobile  (2 variantes totales)
```
  76ad3f441bd71f13ec34d7e3c1605090f294aff3  // Show action=False
  324ed7562e66eb7821ad739cf9279109a5dd6407  // Show action=True
```

#### Switch  (24 variantes totales)
```
  c1399bf79e0e8dbfb4e498cecb710ab6bf08fad4  // State=Idle, Selected=False, Label position=Right, Show label=True
  e8e21ebe8f378de68f075aac087a54b3c146fd2e  // State=Idle, Selected=False, Label position=None, Show label=False
  33ebbfcfa2c70f8b2a5bdde643fc03e9d1545b4c  // State=Idle, Selected=False, Label position=Left, Show label=True
  3e155fb74dd39c48a4cd62d85519964b5f484fd3  // State=Hover, Selected=False, Label position=Right, Show label=True
  7d0b991b9c1279c8697782f5e8a6a91c850c601a  // State=Hover, Selected=False, Label position=None, Show label=False
  fb460471120ceb61caec0e82c4bf2cd75008b731  // State=Hover, Selected=False, Label position=Left, Show label=True
  058ad66783a401feb1ebc81f4490a1a1dc722fa9  // State=Active, Selected=False, Label position=Right, Show label=True
  e0eadc64a5cdb6ff786744539abd90877edab666  // State=Active, Selected=False, Label position=None, Show label=False
  ebb39f701ae4c9d8ad219a7eab9e6e69cdf23244  // State=Active, Selected=False, Label position=Left, Show label=True
  e6bb261a8e89a090cfd2e2be31e51cc34203cf32  // State=Idle, Selected=True, Label position=Right, Show label=True
  f27ef991cc73c2e5983b2c0f808673924cc1e9c6  // State=Idle, Selected=True, Label position=None, Show label=False
  e90de6eb264031073a08cf49ed13c509aa329d2c  // State=Idle, Selected=True, Label position=Left, Show label=True
  8c90c4985e776a48273fb9cfcd41185b4f2076ce  // State=Hover, Selected=True, Label position=Right, Show label=True
  aeb62f77994a5b3e91602ec9b8f9c1899703e786  // State=Hover, Selected=True, Label position=None, Show label=False
  c3ee201275cf198987b3d0096789f1eeaae8e60d  // State=Hover, Selected=True, Label position=Left, Show label=True
  e40f52aabfa4f59d1b0acf0bcb92f5cc67eea0c5  // State=Active, Selected=True, Label position=Right, Show label=True
  2bdd798a0b2903c5b3d70fd4ec66eadead36a69c  // State=Active, Selected=True, Label position=None, Show label=False
  50ba2a784a3bdbef9ffa36caf147742d25f9f2b0  // State=Active, Selected=True, Label position=Left, Show label=True
  60b1cae3f2df481dd9ed0ba653fd8370e544361f  // State=Disabled, Selected=False, Label position=Right, Show label=True
  495146aa198c3c0a56f6c0c73bf5105262922ef5  // State=Disabled, Selected=False, Label position=None, Show label=False
  cd3f7d183a37061b50572cdd152e81e98c0b5899  // State=Disabled, Selected=False, Label position=Left, Show label=True
  b248ae62c0e694727584fdfd63e2f85623adbc11  // State=Disabled, Selected=True, Label position=Right, Show label=True
  1a4288f5df8a45cc835a7616df9e378d4ff17ee2  // State=Disabled, Selected=True, Label position=None, Show label=False
  e6d83cdd65e23f645bdd7514bb68278143370126  // State=Disabled, Selected=True, Label position=Left, Show label=True
```

#### Tabs desktop  (8 variantes totales)
```
  dab70f2bb9e3b4613d795321f1b0fdda400013d1  // Tab count=2, Width behavior=Proportional
  bce08e5efebd2a8c5c0de7a50ecf1c7f34f53988  // Tab count=3, Width behavior=Proportional
  af8a936d387cf46b5b304d3b484407ae958fc00e  // Tab count=4, Width behavior=Proportional
  526d7957a5cfe44078824ec6eedc38aaf0d3da40  // Tab count=5, Width behavior=Proportional
  c341e916975759d8d18c4ab0eff5d09773cea46e  // Tab count=2, Width behavior=Variable
  0f2d085e54ba6bf8d71b8d17b206047ef50053c0  // Tab count=3, Width behavior=Variable
  5477f5fd3def429815cef18b6457ef82ddc05505  // Tab count=4, Width behavior=Variable
  5a848706f864295ccd6689579ab9232754abfc1c  // Tab count=5, Width behavior=Variable
```

#### Tabs mobile  (8 variantes totales)
```
  74266928f57317ec0191d44cdf173d2d87e51941  // Tab count=2, Width behavior=Proportional
  4df678d8015832f209da18319ef0c09e274bec13  // Tab count=3, Width behavior=Proportional
  4c8516bf73f9d97bdaabd1b9c2266bb42ca76651  // Tab count=4, Width behavior=Proportional
  8e04342155a9f725d1a54291bae252cc69b8fb8a  // Tab count=5, Width behavior=Proportional
  4d0a02a6c9cdfc87abe2389714171c2653e0935f  // Tab count=3, Width behavior=Variable
  a5d1ff111dc7a6f5503da0c0e9392d843615f681  // Tab count=2, Width behavior=Variable
  f8b018a6ef638374e6f7d3400d0c3a05c4f37584  // Tab count=4, Width behavior=Variable
  15487825911adafd69a7d2ffae697a76dd3ede8b  // Tab count=5, Width behavior=Variable
```

#### Tag  (132 variantes totales — ejes)
```
  Size: Large | Medium | Small
  State: Idle | Hover | Active | Disabled
  Color: Positive | Negative | Caution | Informative | Neutral | Inverted
  Content type: Icon | None | Thumbnail
  Show dismiss: False | True
  Sample: 9baafdacdc8167ce04d0a9474bbdd05240ffa4dc
```

#### Tag choice  (42 variantes totales)
```
  1e797b1d582192306f26668ee7bc2285696583ea  // Size=Small, Selected=False, State=Idle, Content type=Thumbnail
  fff22345725de09bbbcc09b09edf62f278984529  // Size=Small, Selected=False, State=Hover, Content type=Thumbnail
  84b11155cfd20c2f8da3fb754f8140ac2b566490  // Size=Small, Selected=False, State=Active, Content type=Thumbnail
  bba56c277a53a3c005eb5529a0382ec25f65415c  // Size=Small, Selected=False, State=Disabled, Content type=Thumbnail
  161c41ed1f896f748c029219b5f8c228c1978948  // Size=Large, Selected=True, State=Idle, Content type=None
  2d6db497b1ab3d1b41bd15be412f148bba29d382  // Size=Large, Selected=True, State=Hover, Content type=None
  58f399554b4b21e28a6bc419835b14fb95022e67  // Size=Large, Selected=True, State=Active, Content type=None
  14df6f474d513f7f7ea1924673b1d55aafcf28eb  // Size=Large, Selected=True, State=Idle, Content type=Thumbnail
  c688be009488688cbcf5bf61f02932b153d21883  // Size=Large, Selected=True, State=Hover, Content type=Thumbnail
  4e026ed8437948921b474c68e3ea4f3fa82219ff  // Size=Large, Selected=True, State=Active, Content type=Thumbnail
  8884d79a96bd9477065e303fd91898e094fc4fd5  // Size=Large, Selected=True, State=Idle, Content type=Icon
  8de432ea33017ae6623f764bc81e16441f357f9d  // Size=Large, Selected=True, State=Hover, Content type=Icon
  9885367e3dbdf11e8481ff27f903f8a6b4ee200e  // Size=Large, Selected=True, State=Active, Content type=Icon
  6131b694a4b2658e7ab7255c321d2be304a46851  // Size=Large, Selected=False, State=Idle, Content type=None
  c41741fc50cb45a984d84ef041c449d54033ca73  // Size=Large, Selected=False, State=Hover, Content type=None
  d54401495a2a09754e8d7f9b68bfd04d45a0909c  // Size=Large, Selected=False, State=Active, Content type=None
  30b3a5159f1b41893049678f0b055b9bf61e9cfc  // Size=Large, Selected=False, State=Disabled, Content type=None
  33953ea6b17c49c81a35e6555104d1968dfee112  // Size=Large, Selected=False, State=Idle, Content type=Thumbnail
  2f4d06629e94e3d03e748175f0e3b364f6fe7ad2  // Size=Large, Selected=False, State=Hover, Content type=Thumbnail
  5c8732534287f14fad87205162de449142b5fa3f  // Size=Large, Selected=False, State=Active, Content type=Thumbnail
  4c9ac45bd6372054839ec15f92f06df64adfa22e  // Size=Large, Selected=False, State=Disabled, Content type=Thumbnail
  96539f052a7abff1f1053a7b89f098515279da6e  // Size=Large, Selected=False, State=Idle, Content type=Icon
  a1f6171b14e45bc17733663b02e26ab3dd6507c6  // Size=Large, Selected=False, State=Hover, Content type=Icon
  cdec5c7f56698448b0830ad346ed0c05b8b4fb0f  // Size=Large, Selected=False, State=Active, Content type=Icon
  b9c6d799ede99aad5035ec1832c55de37a642f3d  // Size=Large, Selected=False, State=Disabled, Content type=Icon
  6d05afd64339aa5c627347897544680f4ceabee6  // Size=Small, Selected=True, State=Idle, Content type=None
  558adc873f9a74b23bb17e24bb333bfd441978d0  // Size=Small, Selected=True, State=Hover, Content type=None
  d2346264143cf380a807d4fd371d810defb7966d  // Size=Small, Selected=True, State=Active, Content type=None
  ecb09e21393328dce36d29f77e9bda42bfce490d  // Size=Small, Selected=True, State=Idle, Content type=Thumbnail
  dbd7dff41103d446dccf03421aab37f6e44cf516  // Size=Small, Selected=True, State=Hover, Content type=Thumbnail
  888074569eb78bb57743f0f0f5d3e802b96c4e24  // Size=Small, Selected=True, State=Active, Content type=Thumbnail
  06ed1e1c0d90d53115a8b7a98cdb38c29eba06ef  // Size=Small, Selected=True, State=Idle, Content type=Icon
  fb65227fac4df0a0679aee53972a84b8d7c937be  // Size=Small, Selected=True, State=Hover, Content type=Icon
  2204a3f4b20e4436a2b09c8a4738d87ba4e2a3ab  // Size=Small, Selected=True, State=Active, Content type=Icon
  4b3e0b1ac835b257c7da75424bc3ef9f013ea7d3  // Size=Small, Selected=False, State=Idle, Content type=None
  2280b76bbaf9812759b6ba485a02de359595738d  // Size=Small, Selected=False, State=Hover, Content type=None
  f0aaa42fb29516d4e247fd751d73ff0b247f5546  // Size=Small, Selected=False, State=Active, Content type=None
  ae07e351eb6c9a729e54a44acf91784749efc889  // Size=Small, Selected=False, State=Disabled, Content type=None
  0c6298d335016c8486bd77baa7c25762b4b94148  // Size=Small, Selected=False, State=Idle, Content type=Icon
  a31ed19ecf4e3f41af4d911a6fd28e917529f22c  // Size=Small, Selected=False, State=Hover, Content type=Icon
  766fea66d79e9d20c24fd837aa73a93928de1eaa  // Size=Small, Selected=False, State=Active, Content type=Icon
  50be69eb077f99e248fee6a71dceb2f5e3613abc  // Size=Small, Selected=False, State=Disabled, Content type=Icon
```

#### Tag input  (120 variantes totales — ejes)
```
  Size: Large | Small
  State: Idle | Hover | Active | Error | Read only | Disabled
  Height behavior: Text area | Singleline | Multiline
  Show left content type: False | True
  Sample: 52bbb92c1e5a9860c5ce36640e87cb4eae07fc57
```

#### Textfield  (66 variantes totales — ejes)
```
  Size: Large | Small
  State: Idle | Hover | Active | Error | Read only | Disabled | Loading
  Height behavior: Singleline | Multiline | Text area
  Sample: 4a09e153e898e5166b3bb3d62612ae0f453a5794
```

#### Textfield code  (36 variantes totales)
```
  b2a805d13722beac8466b9204449ae989e5846d4  // Size=Large, State=Idle, Input count=6
  a26aa2ae09c0e1353f0966dc13068fd30453ab09  // Size=Large, State=Idle, Input count=4
  147844334618521d7c66a1d7fb8f1b840a46d310  // Size=Large, State=Idle, Input count=3
  b57a9ae937a11c7229bc0e961c13748a3e791d17  // Size=Large, State=Active, Input count=6
  362315eea58c551ace4f873d10a85976d39e19b9  // Size=Large, State=Active, Input count=4
  07d18cffcfd24ba359f3775c69fe391291dd56d1  // Size=Large, State=Active, Input count=3
  b30d5909eced8da898a732f0d21704250b59619a  // Size=Large, State=Error active, Input count=6
  32af9f154b8d98c723da42fbad2f7070ee173a55  // Size=Large, State=Error active, Input count=4
  d8c9f97c1d7ad8578ecee7fa8a112087b849a517  // Size=Large, State=Error active, Input count=3
  fc8a26a902f4942d2043276068598414b003b9ed  // Size=Large, State=Hover, Input count=6
  f4a1086371d79b46fd366f92eb6faa38c6ac8dff  // Size=Large, State=Hover, Input count=4
  953e3df96f5a93eb3441fe7ae9c82ca1f41be5c6  // Size=Large, State=Hover, Input count=3
  1f550ab25b18295e92fcda50799e11570160be61  // Size=Large, State=Error, Input count=6
  e166bf5fdc800e8e8240a1b7a2798d4cd700d260  // Size=Large, State=Error, Input count=4
  22637ced1f213cf4af0918f2b08550cc78773d05  // Size=Large, State=Error, Input count=3
  f9541c51f3a11c5a30c664551528c21ae0c1313a  // Size=Large, State=Disabled, Input count=6
  5bd7260ca3c1fc2f6d4e61c415c6b494ed73e943  // Size=Large, State=Disabled, Input count=4
  51408c9de766cfbf7f1b1cb6409d7e123e9de3ac  // Size=Large, State=Disabled, Input count=3
  28fab43a3206fdeb24f8ab0d89c822259293c60e  // Size=Small, State=Idle, Input count=6
  3f6463d868bc7b46dbc6871030bb87312c336b28  // Size=Small, State=Idle, Input count=4
  cb3ae330bb607a7681a250e0de2bf00c16fd57df  // Size=Small, State=Idle, Input count=3
  fed6edccef23438962198c01b973592bf4fa1387  // Size=Small, State=Active, Input count=6
  2289edca3be29c9f7c5e211751ec28787dd88e60  // Size=Small, State=Active, Input count=4
  7e0d6ba65330ef973744545ef31f3a97dc932f72  // Size=Small, State=Active, Input count=3
  58b5a19ecca261f9fc0506d0d41cb82996461d69  // Size=Small, State=Error active, Input count=6
  c7651377a0084c3ad3ba2f0337b1eb74c819bb4b  // Size=Small, State=Error active, Input count=4
  eafa46f7fb3c128748ae09f72091b35cdcd79d70  // Size=Small, State=Error active, Input count=3
  3939ece9af65b8fa52a9233738648e474fad5bd4  // Size=Small, State=Hover, Input count=6
  57e18ad0c9e0b046bf12ab2a7dc634402bb50130  // Size=Small, State=Hover, Input count=4
  18f80e9fa33c5dbc36c419333ba544bb0bd55d13  // Size=Small, State=Hover, Input count=3
  2ebcf030e2aea63d042be5e9a7b369df84538d5b  // Size=Small, State=Error, Input count=6
  efab738d4e531f733ee36c1314ef8576c2dbb9b4  // Size=Small, State=Error, Input count=4
  6f8668321d31d6d579b420c4ac04d3cc7219608a  // Size=Small, State=Error, Input count=3
  90c5a76c3b914856ab80c80cbb8c69da16a57aef  // Size=Small, State=Disabled, Input count=6
  4916ddcda89e65fba2669bd7a123e24cb78bb02b  // Size=Small, State=Disabled, Input count=4
  0583a997f7ffa15b19f2eddd356cbdd709b51681  // Size=Small, State=Disabled, Input count=3
```

#### Textfield password  (36 variantes totales)
```
  ccd701b33d947a53b815a40d08a0fa99334f9739  // Size=Large, State=Idle, Visibility=True
  9c5f5a0018d6396d33f5078ecef63b8caaa53659  // Size=Large, State=Idle, Visibility=False
  7a5c5d771fdee7031bbbe3bbf7289f9ca7391461  // Size=Large, State=Hover, Visibility=True
  283b9fcd37239bce2c0ba8fda6cdcc5e5719eb8c  // Size=Large, State=Hover, Visibility=False
  30089d2a7dc9d878445580b8dea19eb99a3ed53b  // Size=Large, State=Active, Visibility=True
  b64da95d7d5fd1e6e42a86c6fd191b64caa6e7cf  // Size=Large, State=Active, Visibility=False
  237dbe7053e2dbd60cadc923d1d6304616314196  // Size=Large, State=Loading, Visibility=True
  09c1d329012b4e541d922fd49d0f39188831644a  // Size=Large, State=Loading, Visibility=False
  3b61ade9d4b2ce4234bc135efefa0387e4016ec7  // Size=Large, State=Caution, Visibility=True
  1ae7779e09440691e8299752e07b8de6669888ce  // Size=Large, State=Caution, Visibility=False
  b43a6ff9046ba638786c80d066f9a5f8e65904ae  // Size=Large, State=Caution active, Visibility=True
  63335fff53579270eae3ac892a511dbf9ddbe1d6  // Size=Large, State=Caution active, Visibility=False
  6d0c96d48e94543865fde1d2db49254300c713ff  // Size=Large, State=Error, Visibility=True
  3895d4cae1b76e66208d7477d6090ade56dc99bf  // Size=Large, State=Error, Visibility=False
  c1f20ffed312b3e5989b177800e10f29432e5eab  // Size=Large, State=Error active, Visibility=True
  23aaa9ebb3378328a64120db41ddab24fcec1623  // Size=Large, State=Error active, Visibility=False
  0b46ec73677a967fda88209b651f5e8a0b5695df  // Size=Large, State=Disabled, Visibility=True
  ace12bc4cc0e1814468b411b61fc07e8e0b43e14  // Size=Large, State=Disabled, Visibility=False
  752527d133c5c51b00dea85261062a572f5748b7  // Size=Small, State=Idle, Visibility=True
  3b5006c38000f46f09380cf311cd85adad4a5d1c  // Size=Small, State=Idle, Visibility=False
  f063c96873b1e90f3c18107317fec0c91046c9d2  // Size=Small, State=Hover, Visibility=True
  aded281be48c941d33641629ae85f3688190278b  // Size=Small, State=Hover, Visibility=False
  dee5d39caab94fd0f0da325fce4e3042370bee38  // Size=Small, State=Active, Visibility=True
  e3757f6a7155708d35461a7a1feda4afa3b98974  // Size=Small, State=Active, Visibility=False
  25c275b1f86a6d0b3a1984aa4fec8e8d618f7afd  // Size=Small, State=Loading, Visibility=True
  36014ee01aca40b8006ab255bb7c1c7fdfa77530  // Size=Small, State=Loading, Visibility=False
  d95ab62631ff52b890550e39b790e16fecdcf690  // Size=Small, State=Caution, Visibility=True
  9770203b8fcb349128ff3968a697d8aac66fa7bf  // Size=Small, State=Caution, Visibility=False
  bf37316894fe1edad36ee3acddb47e56c2209324  // Size=Small, State=Caution active, Visibility=True
  44d316170d0e8eebe419d9bc07e156c203b6c658  // Size=Small, State=Caution active, Visibility=False
  8e7095d1ba51f4866856bc2b517188ed999297df  // Size=Small, State=Error, Visibility=True
  3db8bc4c1cd07d5a65bc615cc6e9e1e58743a44b  // Size=Small, State=Error, Visibility=False
  b7950be80d3f1672750d039fd3db7732c636d455  // Size=Small, State=Error active, Visibility=True
  e24c8b359147ba71c796cdfe55854e9bbeb9f611  // Size=Small, State=Error active, Visibility=False
  2a3c572ac5016f21e586851e0dd81376d32d7659  // Size=Small, State=Disabled, Visibility=True
  b90ec09340ad77aa5bb68f31d04ba42bae8d8689  // Size=Small, State=Disabled, Visibility=False
```

#### Textfield split  (40 variantes totales)
```
  847a92f8738e1dceb721be8de7d970c36b08ff01  // Size=Large, State=Idle, Dropdown position=Left
  6602568366569f2e29d0a5ca483dd0665c89c949  // Size=Large, State=Idle, Dropdown position=Right
  c525fa49d07f4038dee5665c831b53cf1e09e150  // Size=Large, State=Hover, Dropdown position=Left
  4f039fc0b2e73304ce63c12354a58a9b05556e88  // Size=Large, State=Hover, Dropdown position=Right
  c8ab221cab3befe87419f3b84ef7df8b8002ef0a  // Size=Large, State=Active, Dropdown position=Left
  a42b36d4a776e7b9a009f3dbdcbf2a74b18f7f9d  // Size=Large, State=Active, Dropdown position=Right
  a670ae876f1f613433db8bc8e3a98d1d4c2891c2  // Size=Large, State=Loading, Dropdown position=Left
  974e996dcd2d19fc6f7305e711467899e34c8d12  // Size=Large, State=Loading, Dropdown position=Right
  ce932be05d0fea5331de270a3aefaa479dd7e798  // Size=Large, State=Caution, Dropdown position=Left
  b8c8f5215f3a790622d481ab34b87895e5934e52  // Size=Large, State=Caution, Dropdown position=Right
  bdeb5aa5c18a62dd73dafeca9d25e1e7bfef8d1a  // Size=Large, State=Caution active, Dropdown position=Left
  38a6727e63cd22361e06b7859a911620fad2b2ff  // Size=Large, State=Caution active, Dropdown position=Right
  f92a1652b82654065eda4bd35bcf5fe4f1e48c8c  // Size=Large, State=Error, Dropdown position=Left
  752cd2de48575976f3e549f272af837e16236adf  // Size=Large, State=Error, Dropdown position=Right
  c085068224688919375e62dd3ee23f3c88547b44  // Size=Large, State=Error active, Dropdown position=Left
  176ba9c2fc289ddce258ba4ed7234c5b5818200b  // Size=Large, State=Error active, Dropdown position=Right
  3e6ba093b52012fe2773e3757c9ed605d024c47e  // Size=Large, State=Disabled, Dropdown position=Left
  b4bf0e4dc257bdd0db4c74d372a52c2a8863c0a7  // Size=Large, State=Disabled, Dropdown position=Right
  dde4194756e7364276c2a935f39625ec915b9258  // Size=Large, State=Read only, Dropdown position=Left
  601ee3a36c24d6092517d06edca1dace6f7dc333  // Size=Large, State=Read only, Dropdown position=Right
  d935ebd597100d3d7060e1df96529db30c3bac68  // Size=Small, State=Idle, Dropdown position=Left
  2906ba6f73a74dd1f4035b25105e8bb01e9ca9e7  // Size=Small, State=Idle, Dropdown position=Right
  5257aff05d66d4fbe9883975f76bd06faebbcee5  // Size=Small, State=Hover, Dropdown position=Left
  4b7d09f4433fad039ef2f062a32eeae8245e6987  // Size=Small, State=Hover, Dropdown position=Right
  fd778adea8e1cf44cf0a27ac7ccb4cd10ab63e7a  // Size=Small, State=Active, Dropdown position=Left
  3f2f609a27dd2933a17659c237b6ac4e2e544d6b  // Size=Small, State=Active, Dropdown position=Right
  22bd502bba8505a877ae010f3cc2a5ed29a234d7  // Size=Small, State=Loading, Dropdown position=Left
  e9b829f32f3822ae6fdb751dc4f164a52ac805ae  // Size=Small, State=Loading, Dropdown position=Right
  c9d5cf5e489d5d2c9b20e051a4c4956510073560  // Size=Small, State=Caution, Dropdown position=Left
  75e878f39cd92db682ea5959ee3e4ab2240056d1  // Size=Small, State=Caution, Dropdown position=Right
  4e9d8a77fa4cb1cd19ec1f5d6c02e2d0b61c7b1b  // Size=Small, State=Caution active, Dropdown position=Left
  dbcebf0648cfbcec7ad4c50d91ac54fdedfca0b0  // Size=Small, State=Caution active, Dropdown position=Right
  4740882834156a3692a962060142b8f283befd3f  // Size=Small, State=Error, Dropdown position=Left
  707017bf3c54fade52fd8f3ffd57c88bfb632079  // Size=Small, State=Error, Dropdown position=Right
  8d30c3744778dd1136dc949d5e430e8bb8ebedf0  // Size=Small, State=Error active, Dropdown position=Left
  2b0585fe414b172e0cdb39c1eff14ca71ae3e4ca  // Size=Small, State=Error active, Dropdown position=Right
  1815487bc7ed559d6e4afe534f28523b8fc7f5fd  // Size=Small, State=Disabled, Dropdown position=Left
  87eae3d092a7fe6048274985e44816dc34e74ef7  // Size=Small, State=Disabled, Dropdown position=Right
  c9e6d6d7b3e0e6d4143a521206b973ba58db74e7  // Size=Small, State=Read only, Dropdown position=Left
  b7618be35c3f6c03e709bed654b91e4c417a92fc  // Size=Small, State=Read only, Dropdown position=Right
```

#### Textlink  (48 variantes totales)
```
  af2e722859a894332eb76e3ba183029a36645113  // Size=Small, State=Idle, Bg type=Default, Show arrow=On
  6b128976c8ee71650d76c273a6f5ea47d1fa5948  // Size=Small, State=Idle, Bg type=On fill Inverse, Show arrow=On
  33b8aee5309cd266820a216538350802b775a6ad  // Size=Small, State=Hover, Bg type=Default, Show arrow=On
  08362283c0a5811e2d3977c5abec162a825992c3  // Size=Small, State=Hover, Bg type=On fill Inverse, Show arrow=On
  ee0638d625c82a13d6aebcb748c82c5ee22fc42a  // Size=Small, State=Active, Bg type=Default, Show arrow=On
  fc46264574eab5f5202c6273a8449dff048b44be  // Size=Small, State=Disabled, Bg type=Default, Show arrow=On
  6594b2c12bfae720fed8441ba993a01db5d4c1b0  // Size=Small, State=Active, Bg type=On fill Inverse, Show arrow=On
  16cdfebefcc48f8fe61550c49e9b5e0dba883874  // Size=Small, State=Disabled, Bg type=On fill Inverse, Show arrow=On
  fe650cd40e9f86c473376284fe9594d5e123da48  // Size=Small, State=Idle, Bg type=Default, Show arrow=Off
  e126bbda604fd1b27d15065ee5bc9f1170d435aa  // Size=Small, State=Idle, Bg type=On fill Inverse, Show arrow=Off
  c928fcda9afda44c49e67c92c8c8757908e660a6  // Size=Small, State=Hover, Bg type=Default, Show arrow=Off
  140e7a69f40d9f5df01f35a6f5934f0df34f7b9e  // Size=Small, State=Hover, Bg type=On fill Inverse, Show arrow=Off
  efbb1fcd0de23e3c55bb778f37c304286331ae26  // Size=Small, State=Active, Bg type=Default, Show arrow=Off
  0eb2509ae39c514f5899583675e2841513eedd25  // Size=Small, State=Disabled, Bg type=Default, Show arrow=Off
  ef6d55d933e2d7f70bcfcd18d319548e5398d27e  // Size=Small, State=Active, Bg type=On fill Inverse, Show arrow=Off
  c3d099703b7ad08255d78e5ecd4158e68cc7b536  // Size=Small, State=Disabled, Bg type=On fill Inverse, Show arrow=Off
  a6a91094ed339c54482d82f2eccec494cbf2aa95  // Size=Medium, State=Idle, Bg type=Default, Show arrow=On
  df6dc92f6ec49767fa6d73be4de1f42eb36a32dd  // Size=Medium, State=Idle, Bg type=On fill Inverse, Show arrow=On
  e3b486129fa0d725cc1cf10463a41a6a507689aa  // Size=Medium, State=Hover, Bg type=Default, Show arrow=On
  6071f10be2c6b8d0c9d15db126fe87e72663f122  // Size=Medium, State=Hover, Bg type=On fill Inverse, Show arrow=On
  216d84e7674bfaa1366ba124ed30ab3f1c5cf241  // Size=Medium, State=Active, Bg type=Default, Show arrow=On
  53aaf99fcfcaf86e05e2c26a21c3c53f11367096  // Size=Medium, State=Disabled, Bg type=Default, Show arrow=On
  58fb2620123b3650d5328683b1a4683abac9592b  // Size=Medium, State=Active, Bg type=On fill Inverse, Show arrow=On
  a76e08a25e5194ebae0d1a086a6dd62ac57c5d62  // Size=Medium, State=Disabled, Bg type=On fill Inverse, Show arrow=On
  28dba1fc7c7002ba10d5ce64f3bf3006de7aa4ad  // Size=Medium, State=Idle, Bg type=Default, Show arrow=Off
  372c1c51030c826ac6eccf550ab950adeca3286c  // Size=Medium, State=Idle, Bg type=On fill Inverse, Show arrow=Off
  0870a3d5a03d0fc4cfd0c1a4e39640e73adec74c  // Size=Medium, State=Hover, Bg type=Default, Show arrow=Off
  474b63eeb50d4856bacb2b667317712c653d4918  // Size=Medium, State=Hover, Bg type=On fill Inverse, Show arrow=Off
  7fa8c7997f5b1b62ac91a115e954434b1fad415a  // Size=Medium, State=Active, Bg type=Default, Show arrow=Off
  bb4f669a9d29837849a33e76d03d656a12d713dd  // Size=Medium, State=Disabled, Bg type=Default, Show arrow=Off
  49511d7689dab27c5c64da5d485980fc9e37c915  // Size=Medium, State=Active, Bg type=On fill Inverse, Show arrow=Off
  7e5de38c127679442a4a26e36f8f11785cc5f95c  // Size=Medium, State=Disabled, Bg type=On fill Inverse, Show arrow=Off
  54113a7d643e7278c2748a35ac80d70738b4aa03  // Size=Large, State=Idle, Bg type=Default, Show arrow=On
  c787cf8fea4567dbc254babc6682ef9894bd6633  // Size=Large, State=Idle, Bg type=On fill Inverse, Show arrow=On
  6b0379c0e98eb74f495b45779ebaee3160544d11  // Size=Large, State=Hover, Bg type=Default, Show arrow=On
  c9a424ba762f50563b9d38c5373fdd4f346dddd6  // Size=Large, State=Hover, Bg type=On fill Inverse, Show arrow=On
  d22fcf8cfd5d3fcb5c4251c17558f8f94e9a3b3e  // Size=Large, State=Active, Bg type=Default, Show arrow=On
  f34ca551082c16f63cb9b1a087c680928507f0ae  // Size=Large, State=Disabled, Bg type=Default, Show arrow=On
  aa1c1b9af182a1f74f3cf79ea7bb443228ae7314  // Size=Large, State=Active, Bg type=On fill Inverse, Show arrow=On
  acf36b4a60e02b37058b3e38c0cd296b5c59d2b8  // Size=Large, State=Disabled, Bg type=On fill Inverse, Show arrow=On
  dec3e78f08e86f2f3db1c4d7082c73422fa58df8  // Size=Large, State=Idle, Bg type=Default, Show arrow=Off
  86e7ec9dcf6215d77c1f1f572f8ea7e0809ea145  // Size=Large, State=Idle, Bg type=On fill Inverse, Show arrow=Off
  88239da6eda0254debd5e7e31d5f172cf022f3a3  // Size=Large, State=Hover, Bg type=Default, Show arrow=Off
  78818446bbc823ea940010b92f68c85964accc65  // Size=Large, State=Hover, Bg type=On fill Inverse, Show arrow=Off
  075b51d782d3bb44ce7f750550ce041cce63aa98  // Size=Large, State=Active, Bg type=Default, Show arrow=Off
  9351b5ef478efceb335c7d23d546fa3cbefe32ad  // Size=Large, State=Disabled, Bg type=Default, Show arrow=Off
  8b17ab0966402420d20154b1d0bd654f0819ac8e  // Size=Large, State=Active, Bg type=On fill Inverse, Show arrow=Off
  ad9fb071062b523b4ad438b8ecc5d775550fc2b6  // Size=Large, State=Disabled, Bg type=On fill Inverse, Show arrow=Off
```

#### Thumbnail  (880 variantes totales — ejes)
```
  Size: XTiny | Tiny | Small | Medium | Large | Huge | XHuge | Mega
  State: Idle | Hover | Active | Disabled | Loading
  Hierarchy: Loud | Quiet
  Color: Accent | Neutral | Brand | Inverted | Positive | Caution | Negative | Informative
  Shape: Rounded | Squared
  Show border: False | True
  Content type: Icon | Text | Image
  Sample: e45287e0b59c8db5d9c4991254afcb91e114e648
```

#### Thumbnail addon  (66 variantes totales — ejes)
```
  Size: Medium | Large | Small
  Content type: Text | Image | Icon
  Addon type: Icon | Image | Badge
  Sample: 9f1e4a8e11d4825c59bdc80cf8a45b91d019b4b9
```

#### Thumbnail on grid  (48 variantes totales)
```
  73b6bc2283e7daa44d7f71321b5d02a6a029bbee  // Size=Huge, Thumbnail count=2, Shape=Rounded
  452166d275fe884e78767578aba6993b975932f0  // Size=Huge, Thumbnail count=2, Shape=Squared
  cadf237c03c6e34a557285454b196e1fb2e327cf  // Size=XHuge, Thumbnail count=2, Shape=Rounded
  360057e66220dafd7ebb453d509494a5d84bea93  // Size=XHuge, Thumbnail count=2, Shape=Squared
  ea8e0768a4e94a106d412a2b45f6a993e22dfe12  // Size=Mega, Thumbnail count=2, Shape=Rounded
  a0215ba8f5c03c3340521a41df814160dfffcdb1  // Size=Mega, Thumbnail count=2, Shape=Squared
  f1d5f01118b38d13a8d2c3189bd4e5456532d877  // Size=Large, Thumbnail count=2, Shape=Rounded
  c489976332a89398a1cb43a3e4c33cd92de30f6f  // Size=Large, Thumbnail count=2, Shape=Squared
  f3ec6e953de418cf173890adb39e90c85b9ff014  // Size=Medium, Thumbnail count=2, Shape=Rounded
  1ddbbaad64bdf725db2e980c51e9c0e825c547db  // Size=Medium, Thumbnail count=2, Shape=Squared
  8dce896e9bdb49cae7b6ef64230d54b388c2b33c  // Size=XLarge, Thumbnail count=2, Shape=Rounded
  1b1dc8be99515baf33a47517b7be5b96efbfee28  // Size=XLarge, Thumbnail count=2, Shape=Squared
  27924a927f58a8c1cffcb8cec22784f6f5bd2438  // Size=Huge, Thumbnail count=3, Shape=Rounded
  45427e5c7a5c16e805d2c55fffc6c1e777385b9b  // Size=Huge, Thumbnail count=3, Shape=Squared
  ef2be50e15196f33c756ce0fb61a0343d89897ca  // Size=XHuge, Thumbnail count=3, Shape=Rounded
  8d60a5357d22fa497c7f4ee1e9267fd527e7a62b  // Size=XHuge, Thumbnail count=3, Shape=Squared
  96da7af407dd3f0464baa07392fd2044240cc315  // Size=Mega, Thumbnail count=3, Shape=Rounded
  b3970cd902524e4e408d6e52d3f3c65e493a75ad  // Size=Mega, Thumbnail count=3, Shape=Squared
  5d8229d2995475970556e16c0e757c52ffb36a36  // Size=Large, Thumbnail count=3, Shape=Rounded
  2ba945f42339bddde38a573825e25044fdabc1f6  // Size=Large, Thumbnail count=3, Shape=Squared
  f1ade2ec91fc5ff42128d57194898ffb05c2ed0a  // Size=Medium, Thumbnail count=3, Shape=Rounded
  2ad6b7d3506b3d9f242efccbcdf8233fee45f122  // Size=Medium, Thumbnail count=3, Shape=Squared
  56801efeadff192b11a2a6a3d892f619553ecdae  // Size=XLarge, Thumbnail count=3, Shape=Rounded
  32c502a8927d2b52175d5dda86fac3d3d1e3f8f0  // Size=XLarge, Thumbnail count=3, Shape=Squared
  f5d7e6cb521057ddf617176ac5562fce083566ae  // Size=Huge, Thumbnail count=4, Shape=Rounded
  cd7c826faf5777e9d3185e4e183778fa9b12bf6e  // Size=Huge, Thumbnail count=4, Shape=Squared
  c1f3f893de7011915f8357a2687af661eef4a386  // Size=XHuge, Thumbnail count=4, Shape=Rounded
  667dcaf90a1ac3c327647e4fcd677f9556fc871c  // Size=XHuge, Thumbnail count=4, Shape=Squared
  d5bb7d1e373c5ace4e031638429aaca350f8dbea  // Size=Mega, Thumbnail count=4, Shape=Rounded
  ec57ed5c3e883ca5f58e9731b37c889fd697db7b  // Size=Mega, Thumbnail count=4, Shape=Squared
  6e1011e0b2744c7193fd1f312033bd3d611ba4b7  // Size=Large, Thumbnail count=4, Shape=Rounded
  9bd943469aabe40d4128f18b20210f09398bfc47  // Size=Large, Thumbnail count=4, Shape=Squared
  c555f9858e8a69f057fb2d6390a2589e7bb3c388  // Size=Medium, Thumbnail count=4, Shape=Rounded
  5e4f182929304b13bb659a698a6d34bd581342de  // Size=Medium, Thumbnail count=4, Shape=Squared
  50d950192095171cc370bbdd6ba47a078b95d3f9  // Size=XLarge, Thumbnail count=4, Shape=Rounded
  e92f56319ee8ead011cb4eb303568dd1d239b927  // Size=XLarge, Thumbnail count=4, Shape=Squared
  f4b522560a6ea62bef41744e93a62234a270676b  // Size=Huge, Thumbnail count=+4, Shape=Rounded
  a2c8d2617728541e059479fe193c8bfd91fdb14a  // Size=Huge, Thumbnail count=+4, Shape=Squared
  5ef254b8a1e93e1146e77d49fb46abc5765723a6  // Size=XHuge, Thumbnail count=+4, Shape=Rounded
  92cd06851b37ee8f0ba663ebee38333af7d14aee  // Size=XHuge, Thumbnail count=+4, Shape=Squared
  47563be08e97e0614f06a6133badf7568176fc2b  // Size=Mega, Thumbnail count=+4, Shape=Rounded
  61890653ac747240d4602addb9a0be99d94b08e5  // Size=Mega, Thumbnail count=+4, Shape=Squared
  4f20a7ea3b6543d17f4285cee9f7fabba89efda7  // Size=Large, Thumbnail count=+4, Shape=Rounded
  dbf1b0f589c3d06c52eec828891892e65505d330  // Size=Large, Thumbnail count=+4, Shape=Squared
  8a722489b4f81137a9eedcb960a1d1e43f417b53  // Size=Medium, Thumbnail count=+4, Shape=Rounded
  dd3ec4d2a697a986acf621514c42a78b72df48f1  // Size=Medium, Thumbnail count=+4, Shape=Squared
  05f37f1eb80b80cc7d1f2482cf4159a87122e55a  // Size=XLarge, Thumbnail count=+4, Shape=Rounded
  d881a236fa0d99b61097d5841143d55d792b5be9  // Size=XLarge, Thumbnail count=+4, Shape=Squared
```

#### Thumbnail stacked  (240 variantes totales — ejes)
```
  Size: Medium | Large | Huge
  Stacking: Last on top | First on top
  Shape: Rounded | Squared
  Thumbnail count: 2 | 3 | 4 | 5
  Overflow: False | True
  Sample: 2b27294596cb2504782542b22b0517e58408071a
```

#### Time picker granular  (36 variantes totales)
```
  76fda235da180676f5be9fcd65feb7ebd467a752  // Size=Large, State=Idle, Time format=24 h
  c207fa919c11d93c9826aac68ce268b463cec0c8  // Size=Large, State=Idle, Time format=12 h
  a5e043d66e4cb211701e742d00143a4e47b89eb3  // Size=Large, State=Hover, Time format=24 h
  a7a14fcc27fabd1379788a87240f2c5a0ecb32d4  // Size=Large, State=Hover, Time format=12 h
  628e01054fa1942d59cddba992049955df30676e  // Size=Large, State=Active, Time format=24 h
  da67e615780c0318ef279759da0b9f75cf7f62b1  // Size=Large, State=Active, Time format=12 h
  0412b2fe44dc20d48fdd21119c650063c2315538  // Size=Large, State=Caution, Time format=24 h
  50a0d45f33f8d56988c80642c4682b0513c43bb7  // Size=Large, State=Caution, Time format=12 h
  a6ab44753fa0e16402c78c117f7b76a2c32d47f3  // Size=Large, State=Caution active, Time format=24 h
  4397709c0880cc101c822c2087d373b0ebebe53e  // Size=Large, State=Caution active, Time format=12 h
  622bb4f0f08ea8bf0ad2654b3346c503f1e291de  // Size=Large, State=Error, Time format=24 h
  e4913684f6b1d7d37469b6ada9129defc147c524  // Size=Large, State=Error, Time format=12 h
  e23e427a1564695e37d34e17767c4b5db1218eb9  // Size=Large, State=Error active, Time format=24 h
  dda5504cf0d48af058b49cd10220648d16d3426a  // Size=Large, State=Error active, Time format=12 h
  bc4fed313783dcf6284509036169cb078855f027  // Size=Large, State=Disabled, Time format=24 h
  d806091afc05ee87d7d96780415f9cfd62d0ea8e  // Size=Large, State=Disabled, Time format=12 h
  b8d51f7aac1e0632cdc8a4678d4da1390dbc7b23  // Size=Large, State=Read only, Time format=24 h
  cc682c69b2c04c2d59ee67820ec2b423ce988c72  // Size=Large, State=Read only, Time format=12 h
  7853515ec991116643f437f8ace808e50844ef84  // Size=Small, State=Idle, Time format=24 h
  aa8831b25aacd0010f44f853f0e830e86b9fab84  // Size=Small, State=Idle, Time format=12 h
  e33aa89ffa8fa3d02f9d594a33147856aa7afba5  // Size=Small, State=Hover, Time format=24 h
  3316bb1c8b60ffe696696f694e5145877f541456  // Size=Small, State=Hover, Time format=12 h
  c76aef3525b24393f94129485516dc82abef6739  // Size=Small, State=Active, Time format=24 h
  fdc25f7ec6dd10e37bdec8c07386d97f38f00224  // Size=Small, State=Active, Time format=12 h
  038ee78b38d4ab91d3919834ab0471651a7f0e23  // Size=Small, State=Caution, Time format=24 h
  eafc072159e63ef99b5995dc164a7327f7f9439b  // Size=Small, State=Caution, Time format=12 h
  d75189c4cfcf02f1d5090aa7e009247fc7008ae4  // Size=Small, State=Caution active, Time format=24 h
  5f07b18bf8b27c9d15335de0b353cedec6e45379  // Size=Small, State=Caution active, Time format=12 h
  8b4e446146d9e2fb137da0b3d6efca142c5d27eb  // Size=Small, State=Error, Time format=24 h
  ebf9814a2d6ab29934563dfea6e664f2cce9b5c9  // Size=Small, State=Error, Time format=12 h
  53765bc3e363c6ccae9b2892bb9e1a0ab1a5dacd  // Size=Small, State=Error active, Time format=24 h
  6bf97201e589a6bf62e37f48f0ff5e93581f0301  // Size=Small, State=Error active, Time format=12 h
  d267e0cec4f2fcef0d846be7ff982fd3ffc42944  // Size=Small, State=Disabled, Time format=24 h
  540321778da70ef8962191246d87bf530ce09b24  // Size=Small, State=Disabled, Time format=12 h
  a0b332121a7c9ecacede2f1bef2ffae6391e55f5  // Size=Small, State=Read only, Time format=24 h
  2570d1e1e480a51111d9ec7f93177469deff2923  // Size=Small, State=Read only, Time format=12 h
```

#### Time picker intervals  (36 variantes totales)
```
  51e585b73dc6483ec0c8ce2122d17cc63eeb4b68  // Size=Large, State=Idle, Time format=24h
  030119b3574bba2c3874c9e0b6e356057c2fb2c9  // Size=Large, State=Idle, Time format=12 h
  29cd69f9b3d6cdd2a614069052a712a620a16293  // Size=Large, State=Caution, Time format=24h
  b1368a4efcda54151dc3d1962cb35db65d8f364c  // Size=Large, State=Caution, Time format=12 h
  89741a6874ae532d8039b9d8907f4951b350f528  // Size=Large, State=Hover, Time format=24h
  0a31a522c087aaab9a4232bf9973116a3ac3d5dc  // Size=Large, State=Hover, Time format=12 h
  f4f0ccebd2e921ae6c9bdbb96a11645f0092bf90  // Size=Large, State=Active, Time format=24h
  79384fff35affd198443eb52dcba64ea8b956a4b  // Size=Large, State=Active, Time format=12 h
  0e0a189b2390df4acc6e39663d237e31765af107  // Size=Large, State=Caution active, Time format=24h
  f6822d7c4ec5f07b344fde88b729b16b2860caeb  // Size=Large, State=Caution active, Time format=12 h
  b9eb49909ece6a3ab6b7b5749ea104a159d5d40a  // Size=Large, State=Error active, Time format=24h
  64e59ef1a9425c39fc564b680dc549ce69b14ab6  // Size=Large, State=Error active, Time format=12 h
  1aaf22f94c097aa7d10c93faee4fb06f90843a17  // Size=Large, State=Error, Time format=24h
  3d4b79630c7eac62bda4d3a6d1a82dc2b0ea51b0  // Size=Large, State=Error, Time format=12 h
  71dc6f9bd38bef45658eb353224db1b31befc706  // Size=Large, State=Disabled, Time format=24h
  da3115897edd94881db033a8e0d54d93970afccd  // Size=Large, State=Disabled, Time format=12 h
  07766dd38b21fc4429f7fad82ab4eede4eddd60a  // Size=Large, State=Read only, Time format=24h
  087dcee7cafe044d77a82f925a9fabe80f5563c1  // Size=Large, State=Read only, Time format=12 h
  5117382b926d70011a7509e8e87c498e1c85b73c  // Size=Small, State=Idle, Time format=24h
  c017df9bcebad2bf1940cbfeeed83971295870b1  // Size=Small, State=Idle, Time format=12 h
  8245144eca2e97667ec8ab66f281aa3c0f32bcea  // Size=Small, State=Caution, Time format=24h
  c22e258a45f757717d272447a84d00248dddac46  // Size=Small, State=Caution, Time format=12 h
  1c9111829f21dfe08f276e2f016ad6fd374b784c  // Size=Small, State=Hover, Time format=24h
  bf4988c45797f583c1e032dfd6bbf04d2fa5557f  // Size=Small, State=Hover, Time format=12 h
  a40fa89eb22ae206be5e86d2eb8e8da4e67263e6  // Size=Small, State=Active, Time format=24h
  a9db3744ad91e6db6a7ed961ad0090a155c3ae3c  // Size=Small, State=Active, Time format=12 h
  15d7ad4fb22e7a38c68c7b211786ce98843377ed  // Size=Small, State=Caution active, Time format=24h
  16ba3e8816f5eed68653c8989364aab3b5dbe911  // Size=Small, State=Caution active, Time format=12 h
  26f8403754491b3decca3f4999ca6a2094349cd0  // Size=Small, State=Error active, Time format=24h
  8de9a60c0071cb3e40fb6ca1feb6ea4aa8abc12a  // Size=Small, State=Error active, Time format=12 h
  16dacedbdbd088052b5d5134835f27b975e30371  // Size=Small, State=Error, Time format=24h
  ec33f5ed250bb02a8671f0ec7cec3bc800ba8df7  // Size=Small, State=Error, Time format=12 h
  ebf1d9c09405e2f485324a9902f9aa5d7a88eb2e  // Size=Small, State=Disabled, Time format=24h
  0efea2a27982e841d7f4dce8d0c4a9f0172ad11d  // Size=Small, State=Disabled, Time format=12 h
  d4632f421086c0ab930f09595cd3b2ce73a63475  // Size=Small, State=Read only, Time format=24h
  70587f317fd3c9e2ece68a7b1ceb9a03cf6ccebc  // Size=Small, State=Read only, Time format=12 h
```

#### Tooltip  (2 variantes totales)
```
  a2618a8e318c5d3114e8ff11547955424ea1bca9  // Text wrap=Off
  a86196a09f1733dfe702cca4aa1f2d3c0e77c3ba  // Text wrap=On
```

#### View indicator  (16 variantes totales)
```
  2e89609e382438f0e0a9ced642d8e88a3254c6c3  // Layout=Vertical, Pages=2
  e96dac404a0b9eba048fb1eda3f1ae1695430ef9  // Layout=Vertical, Pages=3
  df7ccd5513deaf094fe9c8942bb455d33a96af7b  // Layout=Vertical, Pages=4
  113f653275fde09425ece048ae73e0f03697eb07  // Layout=Vertical, Pages=5
  aec707b6835c1c3a10cdface66bd2d19a3f78fe7  // Layout=Vertical, Pages=6
  711e02fc4f3ff1507c39a86e11a1451e20a7db3a  // Layout=Vertical, Pages=+6 (First active)
  01c05064ddf9c8b47279421305d6cd87c0942021  // Layout=Vertical, Pages=+6 (Middle active)
  e627f9d260880e33e92fd28a26b0db0e23cc2a3d  // Layout=Vertical, Pages=+6 (Last active)
  e436eade98a34799c77dfa971a4e65afc0e8f07d  // Layout=Horizontal, Pages=2
  ba15c30d97a3b40a433ee3e02e461a5cdf9c5ed9  // Layout=Horizontal, Pages=3
  57064a6afc3c0356e65c1c665fd61deaf7a9b328  // Layout=Horizontal, Pages=4
  751d20cab631f783fb0656f473b5bd421fd6462e  // Layout=Horizontal, Pages=5
  589a1c977e2670163898c4634ffcb80fe57a45e4  // Layout=Horizontal, Pages=6
  3e9359729f9618184935189e23344d78c1745989  // Layout=Horizontal, Pages=+6 (First active)
  af5e616bfc4096db04f8791db64d4eeb5efb3b02  // Layout=Horizontal, Pages=+6 (Middle active)
  c40b72c96c5744cac1a6db6a29a3c6b0b6d60edc  // Layout=Horizontal, Pages=+6 (Last active)
```


---

## Convención de nombres para plugin de swap (sin imports de librería)

Claude construye frames con esta convención de nombres.
El plugin detecta estas capas y las reemplaza por los componentes reales.

| Nombre de capa (##...##) | Componente Andes X | Key |
|---|---|---|
| `##Button/Loud##` | Button Large Loud Full Width | `031c538d3dc423d4ca7b55a7809b2de8861d4642` |
| `##Button/Quiet##` | Button Large Quiet Full Width | `a5902aad31c226f37dc3d3f8cdc1b8b01f4c96f6` |
| `##Tag/Positive##` | Tag Large Positive No-dismiss | `aac56baa3d0bc21f529fb674da99c679313dcb9a` |
| `##Tag/Negative##` | Tag Large Negative No-dismiss | `d56e6dd02b9f1f7b6e951545918dd67b80c91868` |
| `##Tag/Caution##` | Tag Large Caution No-dismiss | `2e53afa12aae417a4f83345249a0639bd5d0c53f` |
| `##Divider##` | Divider Horizontal | `c9273619cc20c6d51835ca47c4d01d4d8df5681b` |
| `##Textfield##` | Textfield Large Idle Singleline | `4a09e153e898e5166b3bb3d62612ae0f453a5794` |
| `##Switch/On##` | Switch Idle On | `f27ef991cc73c2e5983b2c0f808673924cc1e9c6` |
| `##Switch/Off##` | Switch Idle Off | `e8e21ebe8f378de68f075aac087a54b3c146fd2e` |
| `##Card##` | Card Default Idle Large | `93f643b3c393b08fae85014412b32eb9f9363e8d` |
| `##Header##` | Header Section Default No-scroll | `54c54911f22fd2e268f1c056443a1effc38796cc` |
| `##List/Row/Chevron##` | List row chevron Medium Idle | `07e9c5d2884bcbc768ed23b3e51e1e52a936ded2` |
| `##Snackbar##` | Snackbar Mobile No action | `76ad3f441bd71f13ec34d7e3c1605090f294aff3` |
