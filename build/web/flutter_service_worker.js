'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {".git/COMMIT_EDITMSG": "61d95be64793a31b7893652ce4904e49",
".git/config": "9021904bb07750352e60eba54f8c02ab",
".git/description": "a0a7c3fff21f2aea3cfa1d0316dd816c",
".git/HEAD": "4cf2d64e44205fe628ddd534e1151b58",
".git/hooks/applypatch-msg.sample": "ce562e08d8098926a3862fc6e7905199",
".git/hooks/commit-msg.sample": "579a3c1e12a1e74a98169175fb913012",
".git/hooks/fsmonitor-watchman.sample": "a0b2633a2c8e97501610bd3f73da66fc",
".git/hooks/post-update.sample": "2b7ea5cee3c49ff53d41e00785eb974c",
".git/hooks/pre-applypatch.sample": "054f9ffb8bfe04a599751cc757226dda",
".git/hooks/pre-commit.sample": "305eadbbcd6f6d2567e033ad12aabbc4",
".git/hooks/pre-merge-commit.sample": "39cb268e2a85d436b9eb6f47614c3cbc",
".git/hooks/pre-push.sample": "2c642152299a94e05ea26eae11993b13",
".git/hooks/pre-rebase.sample": "56e45f2bcbc8226d2b4200f7c46371bf",
".git/hooks/pre-receive.sample": "2ad18ec82c20af7b5926ed9cea6aeedd",
".git/hooks/prepare-commit-msg.sample": "2b5c047bdb474555e1787db32b2d2fc5",
".git/hooks/push-to-checkout.sample": "c7ab00c7784efeadad3ae9b228d4b4db",
".git/hooks/update.sample": "647ae13c682f7827c22f5fc08a03674e",
".git/index": "ebae9838ee3b60fb420b89319e555e3d",
".git/info/exclude": "036208b4a1ab4a235d75c181e685e5a3",
".git/logs/HEAD": "175ea32f62a20566d07953eb94d17e8c",
".git/logs/refs/heads/master": "175ea32f62a20566d07953eb94d17e8c",
".git/logs/refs/remotes/origin/master": "f979d350bc69702116debbcd3da39e0d",
".git/objects/00/0823654f3939414debe93c7ca082fe07a754d1": "3117aa05f3a8f37ba6a85014489a9d05",
".git/objects/00/66c249e47209ca18e05fbce59331da0fbe99a3": "39b9412bbbb2645e9e0fe7beded08c9b",
".git/objects/01/69708caac7529ba7bb48aa27bbd6b0b6967c66": "4744d49fcea23cd2b39f39dd152a5c88",
".git/objects/01/7eda1a8cca7f951cd9c6ad25c2c66fcfe6b7ba": "c817ca0cf01eb4474805ffc7859309fd",
".git/objects/02/5396acbbe02048983f525fea4dc751d351a6c4": "10e2c05c8447a183ce3b63b9183bbe64",
".git/objects/03/145bebce9fd291615f8187972d92a620744936": "5ea85ef3257d30f947108c9535324557",
".git/objects/03/98fea38b05ef35f416f4ee1dc6e1e9a2e5c264": "fdcfeffa6daf360f9b2bfe476b24b90c",
".git/objects/04/39e3071e06395304ba6b8213094049c2b8e821": "105c95e26f68e03677c4dff5465098b7",
".git/objects/05/8191e17ce9f65410c328fc684f92355ff07c65": "beff403cab5d4171d1b093b334b40785",
".git/objects/06/1c0e9db649ae87e7160729ad591816dc258e77": "4d91646bf0436c038ea00439dfa42210",
".git/objects/06/5a156ad876ae75d08bca0aabc8c1e01f285abb": "1338ac20d12542d14345378e2fe2be26",
".git/objects/07/2d7c098201e41d19249b8c9366c38be5d3a43e": "8ffff375df5a870ef76e66301c8d9830",
".git/objects/08/53303fcc5fed6cd7552954640f6a4e83ad147a": "42c43e03520939fd124435070eb22395",
".git/objects/09/22147b8e63238fd9af55205419ab38ce79ed1a": "d4086e6116180928d6fad8cf233c72be",
".git/objects/09/87b84e6c7828249da3ccd56b800b04d98001a8": "bc589b4f5b4615c34e45761dde83999c",
".git/objects/09/a29927d8a2aaaf35b0e5afaa12a2143b69eec6": "9749ecb9841b7d638bcaaf303c1cec31",
".git/objects/0a/458e7e8702adc17900b60f889ed5ca9d31a650": "c7a8d5fed9e0b92ae5888876f6b6fbcd",
".git/objects/0a/8d5786eb04588c4460be2f32e019492a58e37f": "2a2f139faeab0cefe8a30ee8c8c6a05c",
".git/objects/0b/84f7d112f3be4a5ac8b9a57b914ccfdb3a5e04": "b69c96a0c0ef35031a57fa6a9fde1b61",
".git/objects/0c/3d1d6541d6c5fd3302080df4545b5e96ac4afa": "e045844b5de9a77ab123801c331fd7df",
".git/objects/0c/5a976c476c7294f0c809846dda0ea67e1d3605": "6271247b95272ac19581b9c7d0ca1638",
".git/objects/0f/c344c7e8b9e32ea1ad91f30ded22556352d7bf": "a8a30f28869f7378465338066f34d80d",
".git/objects/11/584811e0bf283c77c826ffa16146ca4684c504": "fb259545f445c21c9ce2ba1456154d8d",
".git/objects/12/21ca4701e286e1f2ea0813dd5c0ee0692445ae": "53d1fb3609e959a42576f64d8bc8b0b5",
".git/objects/13/40e243f34fbc58ac8e0db21a5c1bfadb6bf31c": "7d86497f653b338ed4f49ee234509866",
".git/objects/15/521e5240aa488532c79112a467e3dc7049ed95": "9ce4ca890ade545833578f468e872e95",
".git/objects/16/64fad406f54b1de0fe7d4f76d2a7272adb7312": "75546c5aa133ba43a1f1003367b19afc",
".git/objects/16/7389655fdf4c5fa954bb0cf4665b38719b6b8d": "acd8b1cd31e64524d17108b0b715d30e",
".git/objects/16/d24eb66db8bd109b1bee37d44450351af4961d": "b37ea0b1a6eb1d33c42660e49f57e97b",
".git/objects/18/4f81485bb6f4a05d6ff5cc37d3e15d23df26d8": "f639742457e2dfde1fc6b77883964116",
".git/objects/18/eb401097242a0ec205d5f8abd29a4c5e09c5a3": "4e08af90d04a082aab5eee741258a1dc",
".git/objects/19/09f3503bedbb4ee23380d71d976dedba5ae638": "413f2a36325cfe87e5208cdecd704284",
".git/objects/19/9fe070c8ca699ba880ed632b62770d5c58daf6": "c59bb43f8dd2a9bad952998394f79850",
".git/objects/1a/1874e2d0078a43e8b4c059925f358d3327df57": "bf17da88113e0775a0f868d7491c4df8",
".git/objects/1a/e5a3cb15c08e0410c79840efcd99cb7af7855c": "1763f86b61fe3858634c772f162fd3ac",
".git/objects/1c/0e4a00eaf34b394e2ba3b330bda50b65132aca": "13059f53fb9206e0bbef976527a85a89",
".git/objects/1c/ebb4ecfdce1b6a203b6a29cdc0b83945d7f27d": "b6e7a30570651836cd91f5428b536ba0",
".git/objects/1d/e2d9729329cf73fbd52cacfd87639e1cb5d238": "0bd96c2a5c6f3df729080632c3ec0788",
".git/objects/1e/27590e6ebcc9d9fd437da62abf5d8ff17d41b1": "1bb58146b532a52edbc74900bf62e418",
".git/objects/1f/45b5bcaac804825befd9117111e700e8fcb782": "7a9d811fd6ce7c7455466153561fb479",
".git/objects/1f/5dfdeb60e155e9f7aa05b6c8f7aaf40a0ba8e5": "8702afd5c074bda41122eec9bf3a58fa",
".git/objects/1f/cd1c3b25b0d521e0ac6d35c9de38a855e5a5c1": "027a314a23f2bf050010795eaa0ee50d",
".git/objects/20/0b4253923e5180e7368e5f5265b96a99a01d7e": "93703d9809d8a580260ca037b3c766b6",
".git/objects/20/1afe538261bd7f9a38bed0524669398070d046": "82a4d6c731c1d8cdc48bce3ab3c11172",
".git/objects/20/cb2f80169bf29d673844d2bb6a73bc04f3bfb8": "b807949265987310dc442dc3f9f492a2",
".git/objects/21/0e0d3d936f4ecf81325233cb1a13f9de6447df": "beb22903ff42a18a23ef0bdca18b782b",
".git/objects/21/8a8dabf6d020def493d3ca37f56354e7a85d66": "0789ce0657f27e1efb185cae3f04fa13",
".git/objects/23/7001bede880266b1079b93c77702e60ed92220": "03706554ee427811d4850089a766fca2",
".git/objects/23/8fcf328e2ac040251847060d712ded4cfc6278": "ce8bbf1d34685a138764f63a71265017",
".git/objects/24/7a0fade7b0b8f1314cf03edfced1f9c3892b07": "dd47c92b9601e1b8e7c65a829017c6fb",
".git/objects/25/8b3eee70f98b2ece403869d9fe41ff8d32b7e1": "05e38b9242f2ece7b4208c191bc7b258",
".git/objects/26/a16d031e1cb2e02da36083ab950f8a51bf4d87": "124f2b5286ed938a68575c2eef606b71",
".git/objects/27/0f55288ac4002f07343fcf0df64ad8a9d5e410": "e192ed6da5018ded5ddeded4706da9c4",
".git/objects/27/8e6ea3f19254141e2c1d0c3309578361f4abae": "b2a3ebe963597bc7587911e7dbddc14b",
".git/objects/28/39a8a183a1116fd9af5aa0b96923750a728841": "67f22bcbd7081491b0de6c8e1c159503",
".git/objects/2a/a374516767d0827f03783d8c73c9902f67bfbe": "2a95db9f5af383fe7ad648325f64ba1e",
".git/objects/2d/0471ef9f12c9641643e7de6ebf25c440812b41": "d92fd35a211d5e9c566342a07818e99e",
".git/objects/2d/ec39ae1a080ce42bbcd31fafc2992aa3ea9d73": "afd0e751cd62c1db7ca19099f7f1378d",
".git/objects/2e/4485c04854e7509ce8cdbff389e36127d72e28": "15ca78247e8f9a9f0b666dac29daf40e",
".git/objects/30/b29c477d6e8a2620267da40afac2ae575c6b85": "daf6720426433ef975bbcb0e7d78bf47",
".git/objects/31/15bf9a24e080a68b190a87d57231c4faee2db3": "c1f84b97f53ace1a00912dadc3e6f867",
".git/objects/31/3975e5ee90434ce3661c1cd4dfa7a8dec6fe6f": "86b02e1bb8e6cc98f89c81a67bca6bbf",
".git/objects/33/31e850d017c0924c249b9eab473ec31393512e": "8a82ca7074599e12c9883a1ad4de7774",
".git/objects/34/057ee3712a2e65b1134c3916f05c695e0b4bfc": "2a81689bb736e4b54032823b66866efa",
".git/objects/35/2b5453b93807d4efa01100ff452c314764e91f": "367d1fb5d81b6e70a006405d01a73052",
".git/objects/35/4fb85aad2b13935611ea704221ca9d8bc0914e": "35a012738ce2957a8266f87dfff55d6c",
".git/objects/35/9c871481a9f2f208a6d815ef11b3ac4b0bdb6c": "eb957509735745a651e5847f1593e029",
".git/objects/36/5b2b0a741c504b78fda1b14ef33ab7ee7fbfb1": "56deef284357d0bef50ca8eb93a5cd77",
".git/objects/37/e102b1030519404423979991c496307f09b59c": "1926e0ddb5574a922f5ba44550d87205",
".git/objects/37/e27576bff521522774d8e9bf65255ab9cde8ee": "b46095f33bd2f3d3dd34cb25ba06fb29",
".git/objects/38/22906aff08934c50aa301a9fc800e0f5daaa10": "79621adade733489d38678769474d8be",
".git/objects/38/de6261b28c7f28d91b3476c18461aaf391a4f7": "17c74a24b2f710b26f8d163611e3287e",
".git/objects/39/2e621bedef4bd130bc572ac76db4a7a42a22ca": "d778470973e81a5cc1b397cae3313337",
".git/objects/3b/251e85f8b980645da4ed05e26f9303f11734ed": "1b3f0be934ba4d2c881c71e3a632b481",
".git/objects/3b/51410c6f4b02083ea05379432ab8d64cf4cdd6": "de8ec2d98ed4244afd370f7fdc518f00",
".git/objects/3b/b0860a0981211a1ab11fced3e6dad7e9bc1834": "3f00fdcdb1bb283f5ce8fd548f00af7b",
".git/objects/3c/4030e1200a381ae89f147ddd24909f42c4412d": "d20923ba3ba33b4fcdf1b4e51bd70db9",
".git/objects/3d/24255fc2eca16b3cee4efd39ffc6d97c8734ac": "34451fc35568ca509a8fee69f8d56886",
".git/objects/3e/0a4177ccf3640dce974b4c4d7f0bff92edf0dc": "8eb597040b50c8bf91503a5d29f850e7",
".git/objects/3e/3ee19e526a8497d59ea6bdbd37b916fd2876c2": "c738ed73c39d41a1172eeb258033fff9",
".git/objects/3f/cc2027ec736f6f507af9fb98152da9cc30a581": "c3c6a1ca26c91d61632f6025f7b9069e",
".git/objects/40/6c1fc386358795cffb6d72642546dc899141da": "2f3b653748db01e46fef518631516c5f",
".git/objects/41/658f99376b4d9e511b649f58c56c1ff985b873": "a0d45c4cc67bd1da536660bd174e0a94",
".git/objects/42/c9d2385b9ba2de28c21f90e107dda62dc709f4": "b3ff38324d27921e037f00bc31016804",
".git/objects/43/c53d6785fc27dfaf48c69a6d715c2bc26ce4bb": "604240fc53b95be354a4f466767cf8d8",
".git/objects/43/e772bee15b91558bbf44e542541ef58265c656": "cadee70692880319d9dc2105a85f55f2",
".git/objects/46/4ab5882a2234c39b1a4dbad5feba0954478155": "2e52a767dc04391de7b4d0beb32e7fc4",
".git/objects/46/53d69b34a8021c7a372176cf079df0a360fd91": "e172f9e930d4034eb3036321fc2950cd",
".git/objects/46/72ac23e7ecac298989a55dd3613639853bb647": "7f03b4be05395d55e86d113e982d4540",
".git/objects/46/95e71aad76ed39455c19c7805bb1a66ce75cfd": "23fdc2415522686c0b2148e013bf573f",
".git/objects/49/a7985229f3e668a18bf26a72055a32c4a02071": "b8e375e43df4c34e65868935c90f55e4",
".git/objects/49/adebdb511c8c293b28db3f6792e5bac28cdc32": "ba6a3971e7f06834fd6ec3844372ce17",
".git/objects/4b/89533e37bbd5ac3bdad05317004785278492a6": "779796375f2ed8463f2b621c79fbe837",
".git/objects/4b/e4c316176374a11be0f53b749a24e31ee4438a": "f90be3d887f9a595d7805be9cb5531f9",
".git/objects/4c/90dacf3c1a8ad4cf7a2b66a7169680408e61f5": "4ece27f713a4caca13d9c8830215b07a",
".git/objects/4d/16a7b302a340ac9780aad524859f12c9471eae": "759747784f5882b0cc6f305046edf6ce",
".git/objects/4e/719512072432b8ee0d5328801681b8f9f3c833": "6346ee1dc0ca118a7eb20deea6c0840c",
".git/objects/50/166ca50a3a8a031703202267195a2cc67ba298": "01fa0529cb2e2ba5463e2d19e4fe15a2",
".git/objects/50/27bbe4c616110e9083d067026e47c929b4d3dd": "fbee9d17b936121da8b5ecfee58498b4",
".git/objects/50/b76ada22ad92683c56da4181e766e88f7838a9": "d4bf0257c7e70ee6b88d1cd1b710ea00",
".git/objects/54/1a4cd74cbe1a113744e7ace839838447d09c28": "aa4da312e084bcc08d2d48675f9590d3",
".git/objects/54/1b5e464aa29feda71be105305c3674cfc36785": "197643c46ea2c83ecbe95975caf2b2c7",
".git/objects/55/fe7eafcbf1fba9f99a6a8e1e1dcbde02b6266d": "d3568e6e8c03919787b8550d95f5cd4b",
".git/objects/56/5111a2db473c888154d505b444be53f34c04d8": "ed3dead7dd4eeb18bed9a8e74e272a49",
".git/objects/56/6ae3aa1528914653127708e695f13464004b1b": "ac23072c97da600e048a6983c2778b7f",
".git/objects/57/27ec7154ded5c9180f2711332694010d9fcc6e": "79fb4d41d261ab22eba53e6704776f5b",
".git/objects/57/ce1e8408388823fc3afa2dcdf51320515bb4ec": "6b1c7ed940ae12a7836dcb6ffd266e48",
".git/objects/57/ce9e2b190cc6dfb2931c09d7c014daa58c6846": "19f07cde0aa52b4358d416e213818b72",
".git/objects/58/356635d1dc89f2ed71c73cf27d5eaf97d956cd": "f61f92e39b9805320d2895056208c1b7",
".git/objects/58/b007afeab6938f7283db26299ce2de9475d842": "6c6cbea527763bb3cdff2cecfee91721",
".git/objects/59/0d52c7bfcda9ffcdb47e85651e502648acd817": "79be2e94e61567f0989b47534e131dd3",
".git/objects/5c/743433d206ffb577bd5488ea17806b3eac40fc": "2ca09b1de397e1750fdd4fc4db8f70a7",
".git/objects/5c/b969cc723dced6b2e9bd375af8b5e977c40aeb": "2a115a9c6ec0b0695e2c87b513c200c4",
".git/objects/5d/167b091daf9e992203fe88a2b436647ef61e7c": "58f7cceed11668e54d7aee0a5f0206b5",
".git/objects/5d/2b82357d5b70107eea211f4ef34bb97ca6d41e": "b4e51a31b86ea0a5a0d41a3f5e8d46d6",
".git/objects/5e/7b3ad4f43f865cadc0fdf02a15ae23591d1925": "c6e5a9a67190daaf023f3f0aadc2a299",
".git/objects/5e/ff845bb3c2f3a5b209ad901e78fcd1d1a54590": "f182d98827356c05860db928dc25235e",
".git/objects/60/43b1c8d1beffc76b5f92da39dc6b6e2f562296": "ac495a4f661ce82ec4a5733ebab7ffa1",
".git/objects/61/3b4c1d8e203dca1d5f250d96f2669e6dbe125c": "f95035de722df038ff90c7de327bd311",
".git/objects/62/98a4cceb648dd13a0a232ac040035e566b6aec": "c39a93ba1e074713cbdd3bf63b6b978e",
".git/objects/62/c89ee094658c7a9465824fdb42793a64ea557b": "133cd5da638f245b079d9e9cdc29ae38",
".git/objects/63/a09aeea8dd34178f80c6094ba554fadbcdfc2a": "f2df068ff0e7ccde7030081ed5877781",
".git/objects/63/a99be047d440372502ac426e1668d9f2c9bcf0": "df8a84d2ce7e5876651da190512fcad8",
".git/objects/63/bdc89623bfec99d032b1f21461f7a44e0397e3": "1493e32a0b291e9bc829336846819e76",
".git/objects/63/d19c0ed40c5e77eeb8cd26e38571c3ef3356f7": "0da8586ba1dd0200b477ec9d05bf9a81",
".git/objects/64/5eadcebd87f6d7bbe81e9ac494e5a192fb5300": "6ee139cb990589b56aa61d41df39a10e",
".git/objects/64/c6ff9a870d74fe0d9ef3ff8412205ac083ef66": "77c3dc12e89a16be90c08631bb865aba",
".git/objects/67/5d8660f703047170b4803533e26f187418999e": "92c7e3732051a6dc707850218658c09d",
".git/objects/67/d5c804c173bd1325ccde7baa864b39b757869e": "cc36de743ac065e6c2c0995b2ffb3a95",
".git/objects/69/a162884d76e796482baa64228e13300e9bc8fe": "8e1dbaf7d8bb4733bf2fdf4cf6d31d30",
".git/objects/6b/b0d3595cfe9b21f76f2eed7b1f12e3b15fa112": "2268ac7fdda11eea3912c00da2b1456f",
".git/objects/6e/3b8c24fe6a0fb96f925bb207007ced0d4eeabf": "272dbf0df9e8786dadadee35f1b5a5b1",
".git/objects/6f/18c13b4887d85e9b0b80c505bb491b5e55e1d5": "c7c66f02bffde8d28a9c95b7ca9c1855",
".git/objects/6f/c024f80e3f80ef50315d4428b509c4c898e0ff": "c1a9de19c5a6d8c8cb76cb60595c5604",
".git/objects/6f/e71ab91d16d827c912af0c917a0f107bf7987e": "c53319aab4f0a9e3499141dfc90d3d29",
".git/objects/70/6156ed46ae5d91c8243683016d64afa529cee5": "ee367c54927a8216d4dfe9fa97a93e0a",
".git/objects/70/dc863a90c164a9c331084176c9f55b3dbb857c": "2e4208d85c75ce7aaef7478fe96931a5",
".git/objects/71/3f932c591e8f661aa4a8e54c32c196262fd574": "66c6c54fbdf71902cb7321617d5fa33c",
".git/objects/71/96de1a35a98a6aaac6d6f04525cb35b071652d": "c0df366ee89a92337ed14af5433ab60b",
".git/objects/72/17300b0a1b89e2e96b60d39cdf199d56a6ba4d": "ec297d345e360f2d09a8b872872ccf7e",
".git/objects/73/7a0eb190811291b3d8357a1dd14a314c9255b6": "590c1f7672a2f7c3dd5597c996cdcd6b",
".git/objects/74/aeefda1619dfef0b30a00fc1bc928047d8fcdf": "516785ee4320fcae6f791eb496daebdf",
".git/objects/75/4370dbc5a8f248e9d8b107adea488169a2b398": "1b95739075703fb569077e45ecff6b41",
".git/objects/75/d6bc32fa54e1eb82b04a41964f2933f3b4143d": "4dcdc4388fd49eb5aad78960564b3685",
".git/objects/75/daf03229b1057d7847d6a740c6b72e2acfe09d": "12ddba293a5c6a767b058650997fe81d",
".git/objects/76/3d49d113091a7d4907a772533f08acc1a67652": "670cdab042a71115b4c859fd843b5681",
".git/objects/77/7de5de741b2532384d24a7b94773720c8baa22": "f5a045f99d40dab3255fd1f418565c97",
".git/objects/78/0532b097367fafd359fc6541b1c876f04c8028": "c0d5166ec7fe78203ad59741da8e1970",
".git/objects/78/7944583557b6c3f1cc624ee0dd6288edd42714": "8c7edf06a168ac86e579da84a5f4d9f6",
".git/objects/79/fc2084834b9182d3b674733ba301232dd8b497": "e4b6e152db6cbaa42ebab8048554104f",
".git/objects/7a/734820a50b0484623716aa4ad9b8fe6da44308": "4ded79b159d6673f98f7cc90e2f6416d",
".git/objects/7a/baf2d1221049f10cc922301a1beaa20711d246": "c275ee792d19d74e632cc8d309856332",
".git/objects/7a/e84017fe411929be5c678e2296b234db4f42f7": "0b4112522a09073d0e015cd2637fe836",
".git/objects/7d/4850027f9e27cd7438a079dd4c05543e9ce047": "37eed027a40bb8e3b2615b76cef47cd9",
".git/objects/7d/cbbe2f299c986f5976e9d322e4b8bb1e12b238": "450fc6f0a517f411e9dbf0af608e8b14",
".git/objects/7e/912da69a2419e0d4ab04b9e48ac6ae407cecba": "818e28635a102505478b492a592395e5",
".git/objects/7f/0f3d8d4edb47a28632a24346e57ed92cd05200": "4fad3858a671d9e1b85e41301a2a0585",
".git/objects/82/01dc85a079e3ff103952783acf4e2496ab7119": "0019b8db7f3d2b223b71684dff5aac2b",
".git/objects/83/437fc2e3d1cf14fbcf8d5c5ee3126c594e0a0a": "19e0445b294afaacb74061a8fdecd8bd",
".git/objects/83/ab022a1ead627329c76a9bc619b4154098fd03": "cacc555a268da586adfe6f611d06746e",
".git/objects/84/3ebe22ccd697c889a6ad6f188daff7751d5e4f": "ce508f6066c0de973ef1da41e4438de4",
".git/objects/84/f7ed864d55c10540b74227bf3a036e7fcf24e6": "4f3fa9c512194fdb028d026da75a7917",
".git/objects/85/6a39233232244ba2497a38bdd13b2f0db12c82": "eef4643a9711cce94f555ae60fecd388",
".git/objects/86/4d31621a78234bc44f60319945bf95072ed276": "f805e4bd89ff155dc273aa400b2bce72",
".git/objects/86/5559f0f523e4547c94d2df768417481d998790": "29bf2af4a8d92346ca5fa145498bc1a8",
".git/objects/86/aabccfb4bd486b1407e4cde99b81d7d193c365": "ece3df837140175c205aa48b296cc1f9",
".git/objects/87/fe885cdab8f01bf4124549d0a374b8e5e69c06": "178b220fe76bb89d39cb911c87f12482",
".git/objects/88/5216f31040fd27be64ba5c7b8e02bc00b9cb41": "b45292c7307e8c98093e12f6d234fd69",
".git/objects/88/cfd48dff1169879ba46840804b412fe02fefd6": "e42aaae6a4cbfbc9f6326f1fa9e3380c",
".git/objects/89/161d99246231b70b63d1afd940051328e683ae": "a52f508816e4cfa6b59dc346a4d4a6d6",
".git/objects/89/463d57ddaab0d991b930fdcb39c7bc2bc131ad": "84f718742217b9103e1aa986ba1f88de",
".git/objects/89/bcde5abdba99caf6b48117f0c1f34e3e8b4817": "ceed2b4b138eab5c2e6f2c2ccfe4ebc2",
".git/objects/8a/2e22344f6a21ae51ca8ff2b0747bb88667508a": "da265d7c683ffa782df6e036c84ef86a",
".git/objects/8a/aa46ac1ae21512746f852a42ba87e4165dfdd1": "1d8820d345e38b30de033aa4b5a23e7b",
".git/objects/8a/da6f0ff3a5068d52be50d1bf1b6c7e753b0314": "bfdfca651100d112cbee979b4654d53f",
".git/objects/8a/dc7ba15c95ee54024b59f46ffd4c6838f196ec": "93b286e42e46d7f2fa62e28777f7edaa",
".git/objects/8a/f5e260643429e708d9224852b567f403953272": "257bbf745e5f504466a41c15ea0e77fa",
".git/objects/8c/8c54ba9d649b37e844a05852916c06a2567685": "991ae0352fc1bde9c08a12dd31dff9c2",
".git/objects/8d/86742fb9967941a0aae546f88d54f21cfe8ae9": "66d6f94ec946b64366059b60b4734b66",
".git/objects/8d/c61501d45be7d34205ee7e035a7392621a3a56": "acc9525254e2960c3e25a43e5d6b382f",
".git/objects/8e/5c48bee73168d419fac4f803c33210ea781bc8": "56afca9d570d70a651a5afc2e7146ff4",
".git/objects/8e/a7f5f055f55819da4345250a3818507683ac40": "c742267c106685ba0d82263f0d2ed58c",
".git/objects/8f/6958f573f10408b964267224a92b973a16a4fb": "8c90552bfedc99213feb39f2a20627f2",
".git/objects/92/fe5d9c066481b6effdbff2ac7a7d2b4443a5fb": "309d7667dbef37ec735d4e9b88039ff7",
".git/objects/93/abc5e4854d2289a2444a28efc25b68cf74c8d7": "dba00caf51573064b2a77166de8e97a5",
".git/objects/94/050e96d5f7d59314c15c83ef10d07f479b3adf": "b40eb73b1019bf29dd7ac523d85f55e9",
".git/objects/94/30cde66e5db7c42af8892f150245513684f851": "eba9069d8805e9cb34bc5e75e9b0ff0c",
".git/objects/94/693e1fd09f8871419de2cc9a69ecae5845221e": "c041799314bf645167e81b4adbd804eb",
".git/objects/94/95936d9290621e1948f65906d4ee1ec06c4329": "2a1bd42f27d090cfc3efa06803ceb1ca",
".git/objects/94/f7d06e926d627b554eb130e3c3522a941d670a": "77a772baf4c39f0a3a9e45f3e4b285bb",
".git/objects/95/1cabd62848132c466e2eebca142dceb3fb2785": "a2affc8938fb9502e3f58ab93c981826",
".git/objects/95/29ab50da1251fdd4abf9263f22baff18e19a87": "93cda5d927fd58ea445decdda4642434",
".git/objects/95/f27889f3ca93b288263a7a83c0631003360ea2": "63468902f115784bfad1ec278c9fbc43",
".git/objects/96/9a0a2f95bcbe3dfb4fedec2e36a5acd480abf2": "ac40f62a32eb6d7ac1d930a802e68671",
".git/objects/98/7ee9c95ba3bdb11db658ccf783eab3af75d9af": "da8efe5d9bc6ca7910daea4c045a81ca",
".git/objects/98/e047af769d707f249f99d9bb326bd30312930f": "8a0598b7d28cda5518f259f278d96b14",
".git/objects/99/3f7554419c1a089cecb5d4c3429b9361136aae": "60f13fce2504765af2be334ec688e244",
".git/objects/99/4549202952d8c53c6fb0ca884de87bfdd3b153": "c02cca90029db1bc8204d6eda42fa65c",
".git/objects/9c/07b0fce336dee6bc5acab848e1d64981606f62": "c6a9b491e5eb41232357da6d14f9f97a",
".git/objects/9c/565a0c24663a3a445d8d9ad950ba3c52846c05": "5d66befa79cbff79a11e9be444797aef",
".git/objects/9d/567b3a57f8dacbc5353617bac45625ae7d5bb6": "f05a7e5cf07bdadff6946d4bb869b0eb",
".git/objects/9e/4c5b72e29921a272e741e8b7152cdf3272ecbc": "01385afab3a5ca5fdee82e9dd330d880",
".git/objects/9e/6db7a9d3a78dc8f1a83d86119e3694f5b63cb2": "0997065db66776c6622f1bf4ce5d722d",
".git/objects/9f/953d47d8757412efb250ad425ea769ae2edc01": "9ec72438270b50019136de9383a477d3",
".git/objects/9f/f7217e8b58657f9b4e53774404cc824adff216": "9c243f05873316bb0ba6ceb3fb8a8c00",
".git/objects/a1/67c5aecdf2e57daeb3792f8c2706452c54d448": "757a84a6ab88ee945de1e7f9ee457508",
".git/objects/a1/b4baceb621f697f21246a2a604bbdf436db018": "743b3b8e7d9c6f4de0aefa7e1c07cb23",
".git/objects/a2/f06df95b79aae079e128a69fc465ae8d540660": "426413882cc15b2b43c265b177ac6d10",
".git/objects/a3/01217f3fb6542a801330149fea405e08f1e1cd": "3f36ca836a1b1a83c4f448a55f53d101",
".git/objects/a3/a5b0f6e1fe7d685db1980e29af5c86e8fb8f87": "316f94122380974739fdbe832b836bb5",
".git/objects/a4/59149f48440d272ff83c1ade2bdb91f37adee4": "c38287b53e41107590db3c44e89cb383",
".git/objects/a4/d34cb596ae36861d3e4827b5dea38f012a3993": "227b163159d970a637f36f719a8d517a",
".git/objects/a5/e14095637b75b5bf567b9ac2cd2ad0b8cc7211": "8627836f3831b31288870fd1b9340555",
".git/objects/a6/9464e1bb5f096caf033886a850ba1744e92f8e": "77d78265f338780f2e5ee1e2e810bfe4",
".git/objects/a6/fe49d52d7334a796a3ac4f77d37c52f9f68a80": "430ae1a70df3aa0c02072ca79aed46c4",
".git/objects/a7/1208e52af3fdb8d1e76d849dc517758563d557": "a1933b41cc838af8fb5a676c893734bb",
".git/objects/a7/844e6342c1b9e9ae20a72606f0746ec7ce9f0a": "9b883a9635f803f92ad49e978d3fbe7a",
".git/objects/a8/8226d75c7185421b3ee678dab74f8103c1f816": "2446169473f586ed4850a6d14ef2b029",
".git/objects/a8/899c731c8bfde8ac2616fe2e6268efa34e610f": "95f3eeced934ec2ba603c72ded613b19",
".git/objects/a9/decd44b320c57ad221f76cb8a08fb9e0347bb1": "1aa54ae48c6e8d4330531886394e8220",
".git/objects/ab/cf79174c711f32d2de32fedd304cf9b4238e3e": "16f621f580a604079d727069a9a5a097",
".git/objects/ae/c847bedad33994d1f42895f276c3818b9d8580": "89de44c5a205c89d711b461225e30d98",
".git/objects/af/24f00eb2e51e8cff31587c26c476460643eb30": "ff9f8d647af22dbcd46b097870bc2657",
".git/objects/b1/3616e71954bff2982de249c933102d4d9a36b2": "bbdbdfd9f7a563ad180b0fb888b8a32a",
".git/objects/b1/a3f38d36cfb828f3f316616d4472ae3ccf044a": "b38df566d5ed2ace3d5ab2a14395c698",
".git/objects/b2/12dc8cd5308037b21bd52cb8fed4cbe583e9b1": "3d94d99db0d53cc8ce6d257893a77870",
".git/objects/b3/15ee7dee783060bcbc7b9cf3124c27236fa5dc": "cf2b41a32252f4bb2a67d5a33dc3fcf1",
".git/objects/b3/ebbd38f666d4ffa1a394c5de15582f9d7ca6c0": "23010709b2d5951ca2b3be3dd49f09df",
".git/objects/b4/1eb3b3122bdc175fcf698beaa3d8d912f0d678": "2525531476748e2d1671e77d89a589ea",
".git/objects/b4/e1c646527edf50d1ba466d9bbf9c2040686289": "c25aa16624cd97936357475c2e9ba6d1",
".git/objects/b5/59fba867bf98bd8dc4159fc94cba28ff314695": "71531564c73e70f5e0f6a3766d3de24f",
".git/objects/b6/fa776fea49082dd38e9046f954da45bf053aad": "e29871f194c1d31c86de705dae3ba8e4",
".git/objects/b7/49bfef07473333cf1dd31e9eed89862a5d52aa": "36b4020dca303986cad10924774fb5dc",
".git/objects/b9/29706c237b04adca5a6ca5ac2e8eceb1bb85d5": "a0d1fa447842012f779c524523b70692",
".git/objects/b9/2a0d854da9a8f73216c4a0ef07a0f0a44e4373": "f62d1eb7f51165e2a6d2ef1921f976f3",
".git/objects/b9/56171487ecea0ca60470ca95cf626915b60094": "60d77d9126ef91efc3f251e886158ebd",
".git/objects/ba/5317db6066f0f7cfe94eec93dc654820ce848c": "9b7629bf1180798cf66df4142eb19a4e",
".git/objects/ba/7b0671b52861028c5022ea0ee27dc8b96d6668": "14e820b779ddbacc896b169bebfd2875",
".git/objects/bb/61aebe064057aab3d431fb240e07986d8321d8": "72f1acf5bc74990c649b3c9c812c4723",
".git/objects/bd/202808cc37ce290e4d9a12ddd7da52152c0be8": "b095a73980c38cf0d7a8e4ec59ec9e3d",
".git/objects/bd/55bcb1477f2982ef1fca290464c6e3511d1562": "08b7197f50b26999de528a83b211fbe8",
".git/objects/be/57639e83cd44303116bbc5e1f8be4fb771fac5": "0cdea80017625ee79083503ef005ece2",
".git/objects/be/ced26d4c13c53d247d7f303cd67ccc10ebbe77": "c57cdc5a29c3a6c019deb84ef81e7bf0",
".git/objects/be/e8f5184ad17fbc2ddecde8007b7dbb1c113e9e": "0d714a52fb0047d4a7f85393dc5b0a56",
".git/objects/bf/3aaa69fbc03c89399cda7f3b6c9384e300c7ba": "910d400e49b51175569fe67b5a32c040",
".git/objects/bf/6dc2178742d085881f6df917876d9f3f299638": "dcaa270528c3abe8a0963d6c33f202dc",
".git/objects/c1/38b37a24896c2cd6b9bfc9db0475e1fafd3ea9": "a2ea091465e9d50adfdcd57c834f6fb4",
".git/objects/c1/dbc88ec70460d8387f079e90009c579b3dda46": "6fae729ef6532761bdfb0d4afeff5d2d",
".git/objects/c3/b4738d243da9244ed6944a469612e44d235b49": "1c50b671fbdbb387f5d5ff088ed5a464",
".git/objects/c4/b63a82bb4ae1924121f11c0620ab48de7ad6a0": "939eea0069f756c83b41948e37bb88cd",
".git/objects/c5/080e566e59c438648c9f36bcd55dc9706fa43b": "99d943f48f155e0c63b337622657f0cf",
".git/objects/c5/efabf20476bd64c0d49ebd9bfb31c7de359584": "181bf8e10e92d4e53630da18423eec7a",
".git/objects/c6/e33adc7ac7b497737b339711defac3d2fc2604": "9590ceb26b19db216ac8db0653913481",
".git/objects/c7/0deff1fff6ad00b98ef630e5595e2521690446": "3e73d246c927f057467d8eaff48c086f",
".git/objects/c7/7663172ca915a99a594ca17d06f527db05657d": "6335b074b18eb4ebe51f3a2c609a6ecc",
".git/objects/c7/92214533dcd4fc619016d3aac05f050b67a02b": "2a28ad5a0b7db5a41b7fd1833612119d",
".git/objects/c7/9eaa310e52990450f7eebfd10bb51524a3b59e": "17bdf2c1c73e6bcc17973efbaf43bd02",
".git/objects/c9/bf8af1b92c723b589cc9afadff1013fa0a0213": "632f11e7fee6909d99ecfd9eeab30973",
".git/objects/ca/6aaaae11ef779f9ff52ff7ae18d49b53dbde92": "00e5c95e762bff6a9e8a427fd5415901",
".git/objects/ca/7b3298d09ff11fec00c66ccbccc0d872c24cae": "8e1ad05fc82b14ebf49783393e231952",
".git/objects/ca/a68c37fd934124c44ee7e1dbdaac7299551225": "132b8e132b2e95a4ea9352c6810fa46c",
".git/objects/cb/a1a35d5f17a3e9eea35891562be57f793fd0a2": "62787eb444b294bb499a1474d24dd014",
".git/objects/cc/addacb173f92ab5598434a5d8185790c8e3d25": "e9bff5d7d0a152330f5ce82d5aaaf9d5",
".git/objects/cd/3560c66304d5d8f5fcd4362148a84953d7d8e7": "423a75917e7f498d312078e0481926d7",
".git/objects/cd/d0a006c66c0134dc5a506869a4e13c75d36a62": "a0dd0c27531924a68a8e5aa32e53b83e",
".git/objects/ce/064cd3c40bbe3ee1a0ac3c2a6b6271b13c7eed": "65efe2ef40a723888884347172fdb57a",
".git/objects/ce/6667156201940a2b46bc39632f89fe50c9b96f": "12529457ca78b09aad0f7d5bb0943a2d",
".git/objects/ce/aa6381478b4158f1c917c4df6ffe374355ab74": "ce2479f67df51bc62dd58676d658780b",
".git/objects/d0/b2474cfc66585d4a874e31241493edbc765d22": "801e4ecc5c5ebc7c5a969576e14c303a",
".git/objects/d1/098e7588881061719e47766c43f49be0c3e38e": "f17e6af17b09b0874aa518914cfe9d8c",
".git/objects/d1/935862c9b1229ffe13a62547777eb6c0ee1d1c": "7aa37ede126cb17a2fe7bd2c3d38c2c0",
".git/objects/d2/344ff7a8e807c771ba9912ae13e12b37866edf": "d424518776f1aba5ac130ffd02c3fed4",
".git/objects/d3/ac6caada1830614aba010046d8b5376b01718f": "4334209183d5b61b567b5a0d4713b2a3",
".git/objects/d3/b01dd42f3d9b97751dbb443798203c71d3d37e": "a4c72b78e8106e44ee08982e0a58213e",
".git/objects/d3/b2aa18309686976f3f1340a544dc6976f063cf": "252ff2ab5a89963e40ec9dacad2c0444",
".git/objects/d4/3532a2348cc9c26053ddb5802f0e5d4b8abc05": "3dad9b209346b1723bb2cc68e7e42a44",
".git/objects/d5/994685f370d1138af202996e3b61870f2e0dfe": "ea336e3250a552abbb40425ec0bf3105",
".git/objects/d6/9c56691fbdb0b7efa65097c7cc1edac12a6d3e": "868ce37a3a78b0606713733248a2f579",
".git/objects/d9/cc8774bcc2c395ce43a80757e2beb159d2f7c7": "352e3d5429297b845a56701947ed487e",
".git/objects/db/9cbe57d2c22d538171826296d0e6159d10276e": "65365368770bc0b9b487b6d169a3c6c1",
".git/objects/dc/31824b93fba16ba8ce8d44fa639b352d4987f7": "946b4f41444d66002658e3cfbb7f1c5c",
".git/objects/dc/e7c392c6ba3c80e4f718abdf760e655b3aced0": "c296aeda37f7faa9e6ca05587ae94df3",
".git/objects/de/7843720b79c2fe901f5b9a71d50e610bc72bfe": "2467e82889a7dc3a093bbe38925697a0",
".git/objects/e0/1c6b6753f0504f437ad654761197b11e24432e": "7424a6380ccc2fdecea3a12701999b98",
".git/objects/e0/4fd5635bf9251c250859eb1b4d6400bab6abdf": "e883dcff50d86138251048b9a55a4b98",
".git/objects/e2/d4b8dc04474ed4797bfcfa1e388b0b2c679bcb": "5079a55186d48300a1ee5cd61e96e9f5",
".git/objects/e2/e7fc8652ea5e4e8064ec60061669cf21a2352e": "b490bbf4a36fa5bc320ccfdfd5ee2d17",
".git/objects/e4/12da78ee59d45c90828eecde601c45b1500f04": "d49f6ece3bf13bcccb26287af7ca5256",
".git/objects/e5/7182b4e3777db8cc6b929c2b9b4dfd0589df6b": "834ea5508f5a26479c3fe7c90ff6ea99",
".git/objects/e5/a139243f041d6fb7af18b3b57c9a7d30331587": "b683521557184654ae7836e4d129d137",
".git/objects/e9/b6bfe98d7029f25a45d5b01fd1538b8d1cf30d": "c12cab63452be7da364105c6b499f778",
".git/objects/ea/c341d24220299ca340b802764664575cd4e53a": "f914f04087a7f79d8651220bf87a47ac",
".git/objects/eb/7d7fef40c7f5494d003a81f78f4a6b41452739": "68d5cc532e48fd49b6a1b62716231ded",
".git/objects/eb/9b4d76e525556d5d89141648c724331630325d": "37c0954235cbe27c4d93e74fe9a578ef",
".git/objects/ee/bb548069a67cddaca85b2a74c65cef275fc4af": "9d7f8d1c377092400df366e2ff3f4da2",
".git/objects/f2/04823a42f2d890f945f70d88b8e2d921c6ae26": "6b47f314ffc35cf6a1ced3208ecc857d",
".git/objects/f2/53a15685dc3aca51cecaa8b112b25ce8de733d": "54a67595beb10543ec5aea5e1404a0b6",
".git/objects/f2/6f1982fd2499db77ee5f9e0f635492107e1a7b": "36a4bebf001332e215bcb9ed8f29e2a7",
".git/objects/f5/daf8e4c13f62ce288c7b952e97f57275146d17": "b76f49efdf55c2ffb0362070e32f67a2",
".git/objects/f6/582cbb95f1d701fb876a34f59c97677ee6fbd6": "a58bddb83fb14614e1db02024483b615",
".git/objects/f6/effc71ceeb13bfeb556e15676b026ed1ae6011": "1322cdb2fda337f681d6ad6272e6cd47",
".git/objects/f7/18c8fc61863f46b78b85520e2d272e46aac8b4": "481685b28f0830db826923e2921cd143",
".git/objects/f9/2958670c1ccdc55a795d1bbdb0acddefab6c14": "1cb3422b9a38cee9cece46942d307854",
".git/objects/f9/bb20b124001ba56a41250321b34c1c19bc17e1": "bcafeb31e2f6755ecbf8d5e96b077413",
".git/objects/fa/567a419a954a7897803384533f697caaf114b4": "16d5abcdfe6c34532533989ea61179e8",
".git/objects/fd/618685d348e68110e22f4af18e017de2458fd5": "d1d206d1b2a10fbc75f817a4f5e6cc90",
".git/objects/fd/7a0947a79b44d7f68a3e018ef74917a06fb47b": "6b66f05a887f12c6607e6513486eaaf9",
".git/refs/heads/master": "6c6e101b36aa802668edd9001522ea4c",
".git/refs/remotes/origin/master": "6c6e101b36aa802668edd9001522ea4c",
"assets/AssetManifest.bin": "a1d0e4fd6e7eb66c3b376162f9ca13ca",
"assets/AssetManifest.bin.json": "efa69ee5e60bac6d6c99d39ec43f6950",
"assets/AssetManifest.json": "abc0cb616c68bf0cb1074484e979fc2e",
"assets/assets/images/2.jpg": "9ec11386356ecb1d28095854757be567",
"assets/assets/images/3.jpg": "3952ff7005e46de6bd4df191bfb5d466",
"assets/assets/images/4.jpg": "5d4f074f0bdfbeab31042f2c471f207c",
"assets/assets/images/6.jpg": "f7f9d7ce721b5f17800725b36b02b102",
"assets/assets/images/8.jpg": "1398e8fec022abbf265dafe6df57d3bb",
"assets/assets/images/anh-thien-nhien.jpg": "910eb4fb9d298d008cbb0b76295d4b25",
"assets/assets/images/bell-icon.svg": "5bb35285f0d5d3e37eb562657228ea2b",
"assets/assets/images/bell-outline.png": "ea8e4e4ff471ffeb42c1ae0fd63a81d0",
"assets/assets/images/bg-bathroom.jpg": "e2515b701c460b3317954d66a718fbb3",
"assets/assets/images/bg-bignews.jpg": "ba38fe8b315d5765e92da2b3b82b1829",
"assets/assets/images/bg-pattern-topo.png": "93f948ab59df535c39fcb0a1cada30d9",
"assets/assets/images/binhduong.png": "1fb5263115dfe19885b5ea856344080c",
"assets/assets/images/bookmark.png": "8b8b2290979c8f874935b287342c8099",
"assets/assets/images/cancel-icon.png": "3d6b90265ce0fc5c6aa63bcd9561a23e",
"assets/assets/images/cancel.svg": "db268c734ced2ca47b2cdfe5bbbce46f",
"assets/assets/images/check-alt-svgrepo-com.png": "60fdeb622d86a62b533aca10c8803d75",
"assets/assets/images/clock.png": "4e0e05f67e9c4ff63b01680acfbac30a",
"assets/assets/images/clock_fire.png": "3d4fc960b9f0dd4db549d987c43c0b3a",
"assets/assets/images/comment.png": "284917a6ba72a5709272d7cda4affd91",
"assets/assets/images/danang.png": "4587c502f75592d80eb55cded0d1b330",
"assets/assets/images/danang2.jpg": "9fd3f2b2e3694122762f8b5e29a6e3ac",
"assets/assets/images/dongnai.png": "a39d1c798ebb791e98754b02485c56ec",
"assets/assets/images/eye-off.png": "968fabfc3d2f75fa17bb06ce62a409e1",
"assets/assets/images/eye.png": "8dea5ead4bd23a2b63cf6f7bfcf247a3",
"assets/assets/images/facebook-wow-logo-svgrepo-com.png": "03197658dd0eb9e7e5df6135f3fa844f",
"assets/assets/images/faker.jpg": "a8d45f61e184889dfb65c6c94df92b3b",
"assets/assets/images/favorite-blank.jpg": "08591b9c7d03f000c1a27ca6c94d0706",
"assets/assets/images/flag.png": "f76b4cf2a021ae20d37f77864712aeb2",
"assets/assets/images/gallery.png": "06d30f85ced33f531adfbbbf3817c4c5",
"assets/assets/images/gallery.svg": "f50896fecc6a3e82017e93dfa2785fcf",
"assets/assets/images/gamtime.jpg": "5aea1bddae8eb566942116944f08c96f",
"assets/assets/images/google-icon.svg": "666aa9009ad6724a907e091039adc636",
"assets/assets/images/Greece.jpg": "e7df537644fa985e6adc5f6310aeb843",
"assets/assets/images/haiphong.png": "41a7eeae3f94bfc51ca741b8af67c161",
"assets/assets/images/hanoi.png": "3f4ae07feefbeb50355106b19569cf03",
"assets/assets/images/hcm.png": "a94ddd06353ba95fcb313965ea0ec092",
"assets/assets/images/heart-circle-color.svg": "70f4f45b7dc1beec048e6ca8d2a17c89",
"assets/assets/images/heart-circle-svgrepo-com.png": "59cb8c12364c3ceabafb8ccdca81feee",
"assets/assets/images/heart-circle.svg": "b48ea49c806706530217e2f169de6387",
"assets/assets/images/heart-color.svg": "81fe472c888e7747d011913d9424e0c7",
"assets/assets/images/heart-fullfill.svg": "5170ca89a8284898ae1e6914afc8f4fe",
"assets/assets/images/heart-ouline.png": "f7e385246841a78acce5dccfa678badb",
"assets/assets/images/heart-outline.svg": "9fc9a07011f263448893fda7d2293dfc",
"assets/assets/images/hungyen.png": "a78804b1578a3da34b830fe0c67339c2",
"assets/assets/images/huy2.jpg": "87911d547f36b18b297e6a59861b1bac",
"assets/assets/images/icon-agent.png": "1b811bb7893f0645933188b9353c83d7",
"assets/assets/images/icon-bell.png": "f7c2be08995ebf1951c1c4356796af36",
"assets/assets/images/icon-calculator.png": "d0e7f77b2835fdcbbf25ee7cafb48902",
"assets/assets/images/icon-house.png": "39d45986de9e5d84c68777cf1cecc887",
"assets/assets/images/icon-key.png": "8ee86af1b927c7e4840cf826febf8116",
"assets/assets/images/icon-pin.png": "37ffda2cc2e7e05ed76edfae27d2a23b",
"assets/assets/images/icon-plug.png": "b1c533be732a116514901853ca52cc2b",
"assets/assets/images/icon-quick-info-area.png": "6aa2ac5c38a876511fa167bb74164136",
"assets/assets/images/icon-quick-info-bed.png": "c3219128487eca78728e67c4e7f4b92e",
"assets/assets/images/icon-quick-info-garages.png": "f996f004bfaa3f64c7f331a14ab35446",
"assets/assets/images/icon-quick-info-shower.png": "5cee2ccd7b27b90e115f3876116e0255",
"assets/assets/images/icon-utensil.png": "0d04110ba71081be6fc725ef9ea133e6",
"assets/assets/images/icon-wheelchair.png": "db479fbd416d203ff60611fe31d10b02",
"assets/assets/images/img-detail-01.jpg": "fdb7a8342efbfbe1fc766508093226d4",
"assets/assets/images/img-detail-03.jpg": "08f65782fda1876261b5511574069293",
"assets/assets/images/img-detail-04.jpg": "61060401361467dccda282152211ad4e",
"assets/assets/images/img-detail-05.jpg": "f59db1dad6a7275fa5b4fcc3341b389d",
"assets/assets/images/img-person-01.jpg": "e500628733c4fdd789884dc011af44bf",
"assets/assets/images/img-person-03.jpg": "53ea2ddffdf29db2af3b27a9e1ab946e",
"assets/assets/images/img-person-04.jpg": "b7e93d0391d8f37c42d74063e93ca781",
"assets/assets/images/khanhhoa.png": "7d18c61389aec2b3af7e7d63fb545422",
"assets/assets/images/leonui.jpg": "ea88ca7553990a22b1993842bd7ce6b5",
"assets/assets/images/like.png": "deba7bc186e3cd2625f24ddf93ddbe1c",
"assets/assets/images/login-image.jpg": "788d7e8c7b81d27cb5503dcca2d4ce8d",
"assets/assets/images/logo-01.png": "851814247890ddab8eb4f73bde447625",
"assets/assets/images/logo-02.png": "39d262637d2b44dcdfb8987317a980e8",
"assets/assets/images/logo-03.png": "c9ec19b9cc3c1712090ebee2a8d4d671",
"assets/assets/images/logo-04.png": "5ddb8459de76c8e116d5133e56d1c420",
"assets/assets/images/logo-05.png": "57e2312c681a8b2558c83a02f594feaf",
"assets/assets/images/logo.png": "914b06e0a609099822c4a8e68cbdbf88",
"assets/assets/images/longan.png": "c9b361092d5f44be31dfefd11ffec43b",
"assets/assets/images/marker-svgrepo-com.png": "76354687e1199a7b8babdb03c32dde26",
"assets/assets/images/marker.jpg": "88b84e9331ce453c67cfec82b7e0ce84",
"assets/assets/images/messi.jpg": "d4974351da6cd29fbcabf50d48aba814",
"assets/assets/images/minus-svgrepo-com.png": "da6e5331e9372f1c1cc046aecff9f97b",
"assets/assets/images/more-horizontal-icon.svg": "85ab52254f05394571fb9adca7833986",
"assets/assets/images/more-horizontal-svgrepo-com.png": "ec347b1bb99002b581f0429cd9b34128",
"assets/assets/images/netherland.jpg": "db03f81725c241f4059a7200859d01a1",
"assets/assets/images/new2.jpg": "236f1a859fab27559ff98ba5990963d9",
"assets/assets/images/new3.jpg": "7888408989d2cd6c6aa0c9fc96659ace",
"assets/assets/images/news1.jpg": "25ccdab338e612c1f772f8c64c9abe33",
"assets/assets/images/news4.jpg": "4015bf5b08ccd073778e59c65477d140",
"assets/assets/images/news5.jpg": "6b8ec15a197de9cae9f912021ffc584d",
"assets/assets/images/optimus.png": "906bb6b14d10a45276c79212959adcdc",
"assets/assets/images/pinterest-svgrepo-com.png": "878924b12b3d17df414097e0ab23fcd4",
"assets/assets/images/property-visitcard.png": "61227cf23041c80f6ec20efe002a7b45",
"assets/assets/images/property1.jpg": "f0a96b1c736532eb6b2ec87b1c7a1982",
"assets/assets/images/property2.jpg": "cf4fd67d676f1dea59cc70165b4cc0a1",
"assets/assets/images/property3.jpg": "bcee46328f0fc827e317b7d865b9a1f3",
"assets/assets/images/quangnam.png": "dc5242e3b97e61d80b6dca81c9858ff1",
"assets/assets/images/quangninh.png": "e69c4f5b86fb796fd2f48c76f985745a",
"assets/assets/images/roket.png": "4ef9c01157a00435e612b3cba65a1b49",
"assets/assets/images/ronaldo.jpg": "147518448aa30dfad459bdef600c5746",
"assets/assets/images/search-user.png": "512065afda585bfc334dfc4f802bb805",
"assets/assets/images/Sectionals-header-2053.jpg": "2f71e1e7a5faae235d828e3facad3b09",
"assets/assets/images/send-icon.svg": "edcaaf1b669b5842e8bd68b4391e55e8",
"assets/assets/images/send-svgrepo-com.svg": "0fd5b857130d00338efc8f46769564e5",
"assets/assets/images/share.png": "fab19d79660d70cbdab7eb3ae0714f89",
"assets/assets/images/smile.png": "0cc39f416b76936b6c9700c58057f94c",
"assets/assets/images/sondoong.jpg": "d81db9b741a15426ee9cac17a77c06b7",
"assets/assets/images/spain.jpg": "d1b9d01b6f12126fb3e598b0e3d68cb4",
"assets/assets/images/Switzerland.jpg": "39a5132e253b01ed9923997db4c01a6a",
"assets/assets/images/sync-icon.png": "658c9fed0521a0af9f8c9e057d6dbdbe",
"assets/assets/images/tomcat.jpg": "cf5b7fe4ee0c50fccda16834e1f937c4",
"assets/assets/images/twitter-154-svgrepo-com.png": "c77b637c50de044f9aa894afd979a588",
"assets/assets/images/user-following.svg": "949081813b30970b2c227eb45cd6fb56",
"assets/assets/images/user-profile-ava.png": "d5d648b69fa619e561131f6c84c49d1f",
"assets/assets/images/VietNam.jpg": "5a4db839a3b99f9069f6991ea56ee1d0",
"assets/assets/images/vungtau.png": "ac0dba59bc101d57fab9d68882e4d0a1",
"assets/assets/images/youtube-168-svgrepo-com.png": "b5c2accb51964e8f33ae07fd3274757d",
"assets/assets/images/zalo.jpg": "cd19732ee995ae608682d0233c16fd1c",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "68b2079d8d580acd2d7d37f6b93c58f4",
"assets/images/2.jpg": "9ec11386356ecb1d28095854757be567",
"assets/images/3.jpg": "3952ff7005e46de6bd4df191bfb5d466",
"assets/images/4.jpg": "5d4f074f0bdfbeab31042f2c471f207c",
"assets/images/6.jpg": "f7f9d7ce721b5f17800725b36b02b102",
"assets/images/8.jpg": "1398e8fec022abbf265dafe6df57d3bb",
"assets/images/anh-thien-nhien.jpg": "910eb4fb9d298d008cbb0b76295d4b25",
"assets/images/bell-outline.png": "ea8e4e4ff471ffeb42c1ae0fd63a81d0",
"assets/images/bg-bathroom.jpg": "e2515b701c460b3317954d66a718fbb3",
"assets/images/bg-bignews.jpg": "ba38fe8b315d5765e92da2b3b82b1829",
"assets/images/bg-pattern-topo.png": "93f948ab59df535c39fcb0a1cada30d9",
"assets/images/binhduong.png": "1fb5263115dfe19885b5ea856344080c",
"assets/images/bookmark.png": "8b8b2290979c8f874935b287342c8099",
"assets/images/cancel-icon.png": "3d6b90265ce0fc5c6aa63bcd9561a23e",
"assets/images/cancel.svg": "db268c734ced2ca47b2cdfe5bbbce46f",
"assets/images/check-alt-svgrepo-com.png": "60fdeb622d86a62b533aca10c8803d75",
"assets/images/clock.png": "4e0e05f67e9c4ff63b01680acfbac30a",
"assets/images/clock_fire.png": "3d4fc960b9f0dd4db549d987c43c0b3a",
"assets/images/comment.png": "284917a6ba72a5709272d7cda4affd91",
"assets/images/danang.png": "4587c502f75592d80eb55cded0d1b330",
"assets/images/danang2.jpg": "9fd3f2b2e3694122762f8b5e29a6e3ac",
"assets/images/dongnai.png": "a39d1c798ebb791e98754b02485c56ec",
"assets/images/eye-off.png": "968fabfc3d2f75fa17bb06ce62a409e1",
"assets/images/eye.png": "8dea5ead4bd23a2b63cf6f7bfcf247a3",
"assets/images/facebook-wow-logo-svgrepo-com.png": "03197658dd0eb9e7e5df6135f3fa844f",
"assets/images/faker.jpg": "a8d45f61e184889dfb65c6c94df92b3b",
"assets/images/favorite-blank.jpg": "08591b9c7d03f000c1a27ca6c94d0706",
"assets/images/flag.png": "f76b4cf2a021ae20d37f77864712aeb2",
"assets/images/gallery.png": "06d30f85ced33f531adfbbbf3817c4c5",
"assets/images/gallery.svg": "f50896fecc6a3e82017e93dfa2785fcf",
"assets/images/gamtime.jpg": "5aea1bddae8eb566942116944f08c96f",
"assets/images/google-icon.svg": "666aa9009ad6724a907e091039adc636",
"assets/images/Greece.jpg": "e7df537644fa985e6adc5f6310aeb843",
"assets/images/haiphong.png": "41a7eeae3f94bfc51ca741b8af67c161",
"assets/images/hanoi.png": "3f4ae07feefbeb50355106b19569cf03",
"assets/images/hcm.png": "a94ddd06353ba95fcb313965ea0ec092",
"assets/images/heart-circle-svgrepo-com.png": "59cb8c12364c3ceabafb8ccdca81feee",
"assets/images/heart-fullfill.svg": "5170ca89a8284898ae1e6914afc8f4fe",
"assets/images/heart-ouline.png": "f7e385246841a78acce5dccfa678badb",
"assets/images/hungyen.png": "a78804b1578a3da34b830fe0c67339c2",
"assets/images/huy2.jpg": "87911d547f36b18b297e6a59861b1bac",
"assets/images/icon-agent.png": "1b811bb7893f0645933188b9353c83d7",
"assets/images/icon-bell.png": "f7c2be08995ebf1951c1c4356796af36",
"assets/images/icon-calculator.png": "d0e7f77b2835fdcbbf25ee7cafb48902",
"assets/images/icon-house.png": "39d45986de9e5d84c68777cf1cecc887",
"assets/images/icon-key.png": "8ee86af1b927c7e4840cf826febf8116",
"assets/images/icon-pin.png": "37ffda2cc2e7e05ed76edfae27d2a23b",
"assets/images/icon-plug.png": "b1c533be732a116514901853ca52cc2b",
"assets/images/icon-quick-info-area.png": "6aa2ac5c38a876511fa167bb74164136",
"assets/images/icon-quick-info-bed.png": "c3219128487eca78728e67c4e7f4b92e",
"assets/images/icon-quick-info-garages.png": "f996f004bfaa3f64c7f331a14ab35446",
"assets/images/icon-quick-info-shower.png": "5cee2ccd7b27b90e115f3876116e0255",
"assets/images/icon-utensil.png": "0d04110ba71081be6fc725ef9ea133e6",
"assets/images/icon-wheelchair.png": "db479fbd416d203ff60611fe31d10b02",
"assets/images/img-detail-01.jpg": "fdb7a8342efbfbe1fc766508093226d4",
"assets/images/img-detail-03.jpg": "08f65782fda1876261b5511574069293",
"assets/images/img-detail-04.jpg": "61060401361467dccda282152211ad4e",
"assets/images/img-detail-05.jpg": "f59db1dad6a7275fa5b4fcc3341b389d",
"assets/images/img-person-01.jpg": "e500628733c4fdd789884dc011af44bf",
"assets/images/img-person-03.jpg": "53ea2ddffdf29db2af3b27a9e1ab946e",
"assets/images/img-person-04.jpg": "b7e93d0391d8f37c42d74063e93ca781",
"assets/images/khanhhoa.png": "7d18c61389aec2b3af7e7d63fb545422",
"assets/images/leonui.jpg": "ea88ca7553990a22b1993842bd7ce6b5",
"assets/images/like.png": "deba7bc186e3cd2625f24ddf93ddbe1c",
"assets/images/login-image.jpg": "788d7e8c7b81d27cb5503dcca2d4ce8d",
"assets/images/logo-01.png": "851814247890ddab8eb4f73bde447625",
"assets/images/logo-02.png": "39d262637d2b44dcdfb8987317a980e8",
"assets/images/logo-03.png": "c9ec19b9cc3c1712090ebee2a8d4d671",
"assets/images/logo-04.png": "5ddb8459de76c8e116d5133e56d1c420",
"assets/images/logo-05.png": "57e2312c681a8b2558c83a02f594feaf",
"assets/images/logo.png": "914b06e0a609099822c4a8e68cbdbf88",
"assets/images/longan.png": "c9b361092d5f44be31dfefd11ffec43b",
"assets/images/marker-svgrepo-com.png": "76354687e1199a7b8babdb03c32dde26",
"assets/images/marker.jpg": "88b84e9331ce453c67cfec82b7e0ce84",
"assets/images/messi.jpg": "d4974351da6cd29fbcabf50d48aba814",
"assets/images/minus-svgrepo-com.png": "da6e5331e9372f1c1cc046aecff9f97b",
"assets/images/more-horizontal-svgrepo-com.png": "ec347b1bb99002b581f0429cd9b34128",
"assets/images/netherland.jpg": "db03f81725c241f4059a7200859d01a1",
"assets/images/new2.jpg": "236f1a859fab27559ff98ba5990963d9",
"assets/images/new3.jpg": "7888408989d2cd6c6aa0c9fc96659ace",
"assets/images/news1.jpg": "25ccdab338e612c1f772f8c64c9abe33",
"assets/images/news4.jpg": "4015bf5b08ccd073778e59c65477d140",
"assets/images/news5.jpg": "6b8ec15a197de9cae9f912021ffc584d",
"assets/images/optimus.png": "906bb6b14d10a45276c79212959adcdc",
"assets/images/pinterest-svgrepo-com.png": "878924b12b3d17df414097e0ab23fcd4",
"assets/images/property-visitcard.png": "61227cf23041c80f6ec20efe002a7b45",
"assets/images/property1.jpg": "f0a96b1c736532eb6b2ec87b1c7a1982",
"assets/images/property2.jpg": "cf4fd67d676f1dea59cc70165b4cc0a1",
"assets/images/property3.jpg": "bcee46328f0fc827e317b7d865b9a1f3",
"assets/images/quangnam.png": "dc5242e3b97e61d80b6dca81c9858ff1",
"assets/images/quangninh.png": "e69c4f5b86fb796fd2f48c76f985745a",
"assets/images/roket.png": "4ef9c01157a00435e612b3cba65a1b49",
"assets/images/ronaldo.jpg": "147518448aa30dfad459bdef600c5746",
"assets/images/search-user.png": "512065afda585bfc334dfc4f802bb805",
"assets/images/Sectionals-header-2053.jpg": "2f71e1e7a5faae235d828e3facad3b09",
"assets/images/send-icon.svg": "edcaaf1b669b5842e8bd68b4391e55e8",
"assets/images/share.png": "fab19d79660d70cbdab7eb3ae0714f89",
"assets/images/smile.png": "0cc39f416b76936b6c9700c58057f94c",
"assets/images/sondoong.jpg": "d81db9b741a15426ee9cac17a77c06b7",
"assets/images/spain.jpg": "d1b9d01b6f12126fb3e598b0e3d68cb4",
"assets/images/Switzerland.jpg": "39a5132e253b01ed9923997db4c01a6a",
"assets/images/sync-icon.png": "658c9fed0521a0af9f8c9e057d6dbdbe",
"assets/images/tomcat.jpg": "cf5b7fe4ee0c50fccda16834e1f937c4",
"assets/images/twitter-154-svgrepo-com.png": "c77b637c50de044f9aa894afd979a588",
"assets/images/user-profile-ava.png": "d5d648b69fa619e561131f6c84c49d1f",
"assets/images/VietNam.jpg": "5a4db839a3b99f9069f6991ea56ee1d0",
"assets/images/vungtau.png": "ac0dba59bc101d57fab9d68882e4d0a1",
"assets/images/youtube-168-svgrepo-com.png": "b5c2accb51964e8f33ae07fd3274757d",
"assets/images/zalo.jpg": "cd19732ee995ae608682d0233c16fd1c",
"assets/NOTICES": "038d18fba719ceb1d95824e0a79408c8",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "e986ebe42ef785b27164c36a9abc7818",
"assets/packages/fluttertoast/assets/toastify.css": "a85675050054f179444bc5ad70ffc635",
"assets/packages/fluttertoast/assets/toastify.js": "56e2c9cedd97f10e7e5f1cebd85d53e3",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "738255d00768497e86aa4ca510cce1e1",
"canvaskit/canvaskit.js.symbols": "74a84c23f5ada42fe063514c587968c6",
"canvaskit/canvaskit.wasm": "9251bb81ae8464c4df3b072f84aa969b",
"canvaskit/chromium/canvaskit.js": "901bb9e28fac643b7da75ecfd3339f3f",
"canvaskit/chromium/canvaskit.js.symbols": "ee7e331f7f5bbf5ec937737542112372",
"canvaskit/chromium/canvaskit.wasm": "399e2344480862e2dfa26f12fa5891d7",
"canvaskit/skwasm.js": "5d4f9263ec93efeb022bb14a3881d240",
"canvaskit/skwasm.js.symbols": "c3c05bd50bdf59da8626bbe446ce65a3",
"canvaskit/skwasm.wasm": "4051bfc27ba29bf420d17aa0c3a98bce",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "383e55f7f3cce5be08fcf1f3881f585c",
"flutter_bootstrap.js": "128d61e1aa9c56329a931f7a5f22b00a",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "a486b1d1705d39342538db6c67137f5f",
"/": "a486b1d1705d39342538db6c67137f5f",
"main.dart.js": "8422249b4e659064d2aa1c8c459b6777",
"manifest.json": "e766e75b3470d6a6e9530e35a7917ef3",
"version.json": "d3583cf57f8fe2afda3a86b31d0d1eda"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
