'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {".git/COMMIT_EDITMSG": "fb6b759239eba6ff9813cab468ce25db",
".git/config": "38cd81d7e6f119e49b43000569f53fe7",
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
".git/index": "cc585d58897f2ab36ca2b0fc68c39804",
".git/info/exclude": "036208b4a1ab4a235d75c181e685e5a3",
".git/logs/HEAD": "92f87f2671bce932bb87f7df0ba52b8f",
".git/logs/refs/heads/master": "2bcb1b1204af219ca61c7abfca67b861",
".git/logs/refs/remotes/origin/master": "71bce89bed13f30204a8822e370b0579",
".git/objects/01/69708caac7529ba7bb48aa27bbd6b0b6967c66": "4744d49fcea23cd2b39f39dd152a5c88",
".git/objects/03/145bebce9fd291615f8187972d92a620744936": "5ea85ef3257d30f947108c9535324557",
".git/objects/05/d6f43a48561f6e9f0fb66b08e233f2b15d5eff": "7752571747b4dbe97ed6daee6d2d23a4",
".git/objects/07/74c17c0fa7a7e87e24a6935830998d92b52c75": "cd62ee54b7ceea7b2a7804e69b1d9134",
".git/objects/09/67ad4ef533e01e1317bf2071d20935508ee955": "79c0cb4770cfa12bf5761db9e72521ad",
".git/objects/0a/458e7e8702adc17900b60f889ed5ca9d31a650": "c7a8d5fed9e0b92ae5888876f6b6fbcd",
".git/objects/0a/6aac82ad685f42295dec4bc5c092b87e928470": "a696981cee29c36719a87168d12cbe11",
".git/objects/0f/d2842ba3d232e4081c6a0d5bc9c8987f4685a1": "893c2e8d642e3ca9dcdcdd82bfe26b52",
".git/objects/0f/fff767aafc21cf6d533da85e75ad0c7bcc1209": "cbfa068d0c0104a61242469255e3e09a",
".git/objects/14/ef8d352ef977b04dec40caa1206fde2ebe0286": "a9270c7f6d9df8edb663c33fccf90af7",
".git/objects/15/a4cc9079421174d3bb0b4ce8df8a2039ac6edb": "363e10eb06e84d213dbf58fd9fb538c8",
".git/objects/16/5ce0ddf03a820a38f48cba9aa0c9df9b6e6b79": "71df17c95c3124eada62b59e7dabda78",
".git/objects/16/64fad406f54b1de0fe7d4f76d2a7272adb7312": "75546c5aa133ba43a1f1003367b19afc",
".git/objects/19/7c85e5bf3bae583012e68bcea8fb789a4ab803": "faa0a2cd94f37a62c968ec43d7eef81e",
".git/objects/1a/1281cf1dd5f018185c549a96851a1ee284197b": "b0fe4541349caf22bd689ef0e14ec44c",
".git/objects/1a/1874e2d0078a43e8b4c059925f358d3327df57": "bf17da88113e0775a0f868d7491c4df8",
".git/objects/1c/33a1a755745e23f001d5177975ea3bb989daa4": "0ce3ea022696a2582663b3c47fd0a76e",
".git/objects/1f/2c82cca72a2ad01213a13efa00599d0931c877": "46e9ac1a9cce5a03536d2956f7d43700",
".git/objects/1f/45b5bcaac804825befd9117111e700e8fcb782": "7a9d811fd6ce7c7455466153561fb479",
".git/objects/1f/cd1c3b25b0d521e0ac6d35c9de38a855e5a5c1": "027a314a23f2bf050010795eaa0ee50d",
".git/objects/20/1afe538261bd7f9a38bed0524669398070d046": "82a4d6c731c1d8cdc48bce3ab3c11172",
".git/objects/21/8a8dabf6d020def493d3ca37f56354e7a85d66": "0789ce0657f27e1efb185cae3f04fa13",
".git/objects/21/bd897ba077f81445b60a35d37febfd13d3b7c5": "7c3ac3930adac078f1573fbd0ea3dc00",
".git/objects/23/8fcf328e2ac040251847060d712ded4cfc6278": "ce8bbf1d34685a138764f63a71265017",
".git/objects/24/f25aed51be6a272229179a1e8f05414becc86f": "eb9cf3fae7ce93ea6d59e33b6f255b16",
".git/objects/25/8b3eee70f98b2ece403869d9fe41ff8d32b7e1": "05e38b9242f2ece7b4208c191bc7b258",
".git/objects/26/a16d031e1cb2e02da36083ab950f8a51bf4d87": "124f2b5286ed938a68575c2eef606b71",
".git/objects/29/4f8ebdfea7857a8a90ac8a45b291a769ca5d80": "6cdb8b1d7f0be2ece2089115ea330e99",
".git/objects/2a/25ceff30b8c81e26cc9d358412a8f28477ba05": "75e29e64c55876f701e770ba4791a13d",
".git/objects/2c/892476639972b4f717e7420cd23d0f71d89ffa": "751dfe2471a2f99e8faece5ef63250e2",
".git/objects/2c/9d5534d39c2f60c24f615a7be8adb1f862197f": "d1c28df3cbaf3cf9d371ebe518ff70cd",
".git/objects/30/059c48864e04ab81a9274cbe6ee1ef152870d9": "c039a7379cb41d58f8ea9589da4b8abc",
".git/objects/33/31e850d017c0924c249b9eab473ec31393512e": "8a82ca7074599e12c9883a1ad4de7774",
".git/objects/35/068cca1c9ef49a1b528da655d1a678aa8935e5": "95e0a3cfc8d0bdf4a9c894604e359b1e",
".git/objects/35/4fb85aad2b13935611ea704221ca9d8bc0914e": "35a012738ce2957a8266f87dfff55d6c",
".git/objects/35/9c871481a9f2f208a6d815ef11b3ac4b0bdb6c": "eb957509735745a651e5847f1593e029",
".git/objects/36/5b2b0a741c504b78fda1b14ef33ab7ee7fbfb1": "56deef284357d0bef50ca8eb93a5cd77",
".git/objects/38/22906aff08934c50aa301a9fc800e0f5daaa10": "79621adade733489d38678769474d8be",
".git/objects/3d/24255fc2eca16b3cee4efd39ffc6d97c8734ac": "34451fc35568ca509a8fee69f8d56886",
".git/objects/3d/c2a5e25bcb5025bf6ca751ba756c37d120f7cd": "26d16eb2a65f1951d5c83d35c4cd69dc",
".git/objects/3f/23c8f99fc93025f675bdfaafe774306d014419": "5f1771e16cc82fd7ac74c3ad36a672f5",
".git/objects/3f/fa75ccaf576b020b249295be98a59a326167c6": "aecb959ff15e79f671463e965e18f1d0",
".git/objects/40/04cd287b7cf65c50739254dadb5ada1bd3e42b": "166317cb2579043a32c247bfecfbfc6c",
".git/objects/40/0ed4cafcc4381bad9d76b68774d87526871929": "4d869235f37696bc50d4cd85bf116cca",
".git/objects/42/c9d2385b9ba2de28c21f90e107dda62dc709f4": "b3ff38324d27921e037f00bc31016804",
".git/objects/46/4ab5882a2234c39b1a4dbad5feba0954478155": "2e52a767dc04391de7b4d0beb32e7fc4",
".git/objects/47/9b14d93a6f1bebbcd498e16d2f8edd8f6dbc47": "02bffa3f5abe7a15a960c9ebf41cbee6",
".git/objects/47/c66a6991b7eb453d11f22931c03137b3c24bd7": "d6d3ccdd2f87c724e0d6f0b7e722a413",
".git/objects/4a/39079e580dc9be820cba2fae41238c49eaa798": "ada1a19fea32fbb6719120809b9eae60",
".git/objects/4b/89533e37bbd5ac3bdad05317004785278492a6": "779796375f2ed8463f2b621c79fbe837",
".git/objects/4d/16a7b302a340ac9780aad524859f12c9471eae": "759747784f5882b0cc6f305046edf6ce",
".git/objects/4d/ec0b01969782d0680905d3a7e330b0805a1a2c": "86e2b922c5a0013d28e921e212740fad",
".git/objects/4f/d234b61e86e21261874cd6992f3c83b28165fd": "5f12e5e3f8fc8e8459cfd61b826926b1",
".git/objects/55/6b0b414653776e6001a9311870894e936d9b29": "43f237517d147f6de040707613c8960d",
".git/objects/56/6ae3aa1528914653127708e695f13464004b1b": "ac23072c97da600e048a6983c2778b7f",
".git/objects/56/d2cfaef2af476e7818e4b2db32d6332a2de2c5": "6ace652a771185f05e78b56d9f3fa929",
".git/objects/57/27ec7154ded5c9180f2711332694010d9fcc6e": "79fb4d41d261ab22eba53e6704776f5b",
".git/objects/57/ce1e8408388823fc3afa2dcdf51320515bb4ec": "6b1c7ed940ae12a7836dcb6ffd266e48",
".git/objects/58/b2dc2e6b6caaa05d2ee63ff8fd908b5f3adeda": "c857a06667b5edc846a462f908ad667a",
".git/objects/59/77c140c04e68769558560a73df8c1ba796cb91": "7d052fba2b008bd7943e77ca42cab835",
".git/objects/5a/7b05e1be311772247124911182fda78fde2cec": "d38bfbb93663df272dc4920186bd1040",
".git/objects/5a/98017f3f52c89f29e12feca5e7b565cb978af9": "99227e668407000f0034d890e6a5858c",
".git/objects/5b/5073dff1c753500a966afe7da5505e25f5e40d": "13e3591744682f9fdacb82ea1a4744ed",
".git/objects/5c/b969cc723dced6b2e9bd375af8b5e977c40aeb": "2a115a9c6ec0b0695e2c87b513c200c4",
".git/objects/5e/ff845bb3c2f3a5b209ad901e78fcd1d1a54590": "f182d98827356c05860db928dc25235e",
".git/objects/60/43b1c8d1beffc76b5f92da39dc6b6e2f562296": "ac495a4f661ce82ec4a5733ebab7ffa1",
".git/objects/61/3b4c1d8e203dca1d5f250d96f2669e6dbe125c": "f95035de722df038ff90c7de327bd311",
".git/objects/61/a4f00cf74139d780764ce2d50681d0aee20a59": "b015e59217d3e137d13dc4ccfe75949c",
".git/objects/63/83321642077e840a2c43a58a365bc38af5ffaf": "74016ae63a925d2178739ed01a7177c2",
".git/objects/64/5eadcebd87f6d7bbe81e9ac494e5a192fb5300": "6ee139cb990589b56aa61d41df39a10e",
".git/objects/65/1305c48369be21752c58b92a08c53e2ad1e799": "76c830356d94f0949aca305810ac5ce6",
".git/objects/67/5d8660f703047170b4803533e26f187418999e": "92c7e3732051a6dc707850218658c09d",
".git/objects/68/acf71e80e9beb26eea1b76453734d9ba5b6589": "dc7b76f7d7674d3766ad8951e2e7b9d9",
".git/objects/68/bde0f768e0b1978662c4668f160e26e23cd48c": "3bc90923fd43bfd5a6e7fd06620130a7",
".git/objects/6b/b0d3595cfe9b21f76f2eed7b1f12e3b15fa112": "2268ac7fdda11eea3912c00da2b1456f",
".git/objects/6e/3b8c24fe6a0fb96f925bb207007ced0d4eeabf": "272dbf0df9e8786dadadee35f1b5a5b1",
".git/objects/6f/6545e564a1472ae6b82b3b5117f5f37c79394d": "7b4bc9a5a271b9b9a8f1706c4942fcb6",
".git/objects/6f/9cad4c116bc8d72e2497226abb5c05ee64982c": "0d104480d68c1652a53721377a02a882",
".git/objects/6f/e71ab91d16d827c912af0c917a0f107bf7987e": "c53319aab4f0a9e3499141dfc90d3d29",
".git/objects/71/7117947090611c3967f8681ab1ac0f79bca7fc": "ad4e74c0da46020e04043b5cf7f91098",
".git/objects/71/7809363ed19bdd7e1d78f6e421e40a96bc29e3": "9414a3044cb191cc3f57340f57c3dc93",
".git/objects/72/db6ca0677cfb16e6bd058e541315382100abba": "83854115fc61bcae81a4cf41f6cfd9be",
".git/objects/78/0532b097367fafd359fc6541b1c876f04c8028": "c0d5166ec7fe78203ad59741da8e1970",
".git/objects/78/7944583557b6c3f1cc624ee0dd6288edd42714": "8c7edf06a168ac86e579da84a5f4d9f6",
".git/objects/78/d67a30c82b8577a42b13bc02c9fc2f455db6a7": "a1402c478dfcfed887f6f54aa9ecce28",
".git/objects/78/d9cc86338b686b2abcd62394ec1f6074223aaf": "fa72ab781007ab2c8234fe6bdb77ff0a",
".git/objects/79/fc2084834b9182d3b674733ba301232dd8b497": "e4b6e152db6cbaa42ebab8048554104f",
".git/objects/7d/4850027f9e27cd7438a079dd4c05543e9ce047": "37eed027a40bb8e3b2615b76cef47cd9",
".git/objects/7f/03effba3abb4a46663da4dcb80f260b47c2d20": "9336cb9c9d56ae3dcd283141a45e49ee",
".git/objects/7f/0f3d8d4edb47a28632a24346e57ed92cd05200": "4fad3858a671d9e1b85e41301a2a0585",
".git/objects/80/47706527db2f0cab4b14e45fc6fc0ba4bb9ba5": "6ab211cc1287137cbccd2323dbab2db5",
".git/objects/81/7c42affae77463d36c81b1dd53ca0d348a25f5": "0623475c67f523573318b1fff30938e1",
".git/objects/82/01dc85a079e3ff103952783acf4e2496ab7119": "0019b8db7f3d2b223b71684dff5aac2b",
".git/objects/85/0f21d6ba04038ab00484ce16b89177b330a61d": "dc9b20091e93df0e7c1dcc1d7c963be7",
".git/objects/85/16fbf37ac4ce556e0cf19c9801d58fe24d7d86": "eb7c2ae1dc4dfe4f3c4b4473865227e1",
".git/objects/85/6a39233232244ba2497a38bdd13b2f0db12c82": "eef4643a9711cce94f555ae60fecd388",
".git/objects/87/53deb284c4c7b8a9749fd456cadfce3b47e9b6": "0a0b91702d1d66bf4290ee6b8262462b",
".git/objects/88/5216f31040fd27be64ba5c7b8e02bc00b9cb41": "b45292c7307e8c98093e12f6d234fd69",
".git/objects/88/cfd48dff1169879ba46840804b412fe02fefd6": "e42aaae6a4cbfbc9f6326f1fa9e3380c",
".git/objects/89/be9700116219312359a7b4a5bf16ef820abe9c": "d9a563e9613d79d2585956b7af1a3e0c",
".git/objects/8a/aa46ac1ae21512746f852a42ba87e4165dfdd1": "1d8820d345e38b30de033aa4b5a23e7b",
".git/objects/8c/9cc84414440b55a124dc99a85b052684f40944": "60ab44233491725c3595520bb1ac4f92",
".git/objects/8c/a49b560c3363c567145a1df49a9c9868e167d9": "26b3ca28d7836212c1a8c7e7b39df987",
".git/objects/8d/0666c4fae05a85f1639039239c89e83da22d15": "583ea8830092ba6ecf88c17375ecebc1",
".git/objects/93/c00d7d1db9ee68e11b8b497296318be2c1689c": "290c8d0515f0a43031422a87908346eb",
".git/objects/94/693e1fd09f8871419de2cc9a69ecae5845221e": "c041799314bf645167e81b4adbd804eb",
".git/objects/94/bfb1463ad8331bfd687bc751b8920b133da744": "fd2d8c0d844b234856b36b93f652048f",
".git/objects/95/5a921782a8a60d807aa03a3feb4e8f82ac5b04": "a01e78dd175b4807d3ead7a1c7196c61",
".git/objects/98/e047af769d707f249f99d9bb326bd30312930f": "8a0598b7d28cda5518f259f278d96b14",
".git/objects/9b/134cb43b20b74037a69c0c2e2f4a8e9d2f59fa": "1c2aebb22f8d943b18b77b0782dc704b",
".git/objects/9b/b367f4bce113eda40ade55d8003b1451df5054": "4d9ae7f7e01d3ca0f64c1074f93b7867",
".git/objects/a1/00ab0ce5d0b2ef57be2d5b5b0335a9a3fe5d66": "e4b60c96a26f953b06044a0ae2daa9d7",
".git/objects/a1/555b260e4e99f6330d690c0cf630e9da260076": "ac43c79f3c68286333595f4268611803",
".git/objects/a4/1f36fcd7a0a4da2f5b2b2493913188b5a69662": "0d046308392dd7af2913eb8938d4b85e",
".git/objects/a5/969b411885a52b53d0375c8d92f8da3806ae3c": "e3a2b6b16cbcf292c57bb6c1a205ad0b",
".git/objects/a5/e75211ef1627b7f977e43b30ba96425d643f97": "967e7f0a53456d51a5b646faa737f027",
".git/objects/a7/844e6342c1b9e9ae20a72606f0746ec7ce9f0a": "9b883a9635f803f92ad49e978d3fbe7a",
".git/objects/ae/c847bedad33994d1f42895f276c3818b9d8580": "89de44c5a205c89d711b461225e30d98",
".git/objects/af/742adee0a85dd21ea96cbd84182e30e085d6cf": "aa25b932ec40efacb1efe27e7cf25d82",
".git/objects/b0/da2f4b271e5880452d6b351629fae75d905600": "e6d69608c8325c739dd81208bc8a4aa3",
".git/objects/b3/15ee7dee783060bcbc7b9cf3124c27236fa5dc": "cf2b41a32252f4bb2a67d5a33dc3fcf1",
".git/objects/b5/0254288cc6319d153c4af1d64870d95ee2436f": "468a6506934a07c970a4739eae75eedd",
".git/objects/b7/49bfef07473333cf1dd31e9eed89862a5d52aa": "36b4020dca303986cad10924774fb5dc",
".git/objects/b8/544215964d5aaed203d5725a857b0c8ebb43ed": "c721c436866add7a96308f80b6e699a2",
".git/objects/b9/2a0d854da9a8f73216c4a0ef07a0f0a44e4373": "f62d1eb7f51165e2a6d2ef1921f976f3",
".git/objects/b9/56171487ecea0ca60470ca95cf626915b60094": "60d77d9126ef91efc3f251e886158ebd",
".git/objects/ba/5317db6066f0f7cfe94eec93dc654820ce848c": "9b7629bf1180798cf66df4142eb19a4e",
".git/objects/c1/38b37a24896c2cd6b9bfc9db0475e1fafd3ea9": "a2ea091465e9d50adfdcd57c834f6fb4",
".git/objects/c5/080e566e59c438648c9f36bcd55dc9706fa43b": "99d943f48f155e0c63b337622657f0cf",
".git/objects/c5/f4bc2a4da91586f3005813077f0d0aa9040f82": "3191028b787554cee4652f5050144bff",
".git/objects/c6/e33adc7ac7b497737b339711defac3d2fc2604": "9590ceb26b19db216ac8db0653913481",
".git/objects/c7/7d77ff105e9801553e71cf55fabe4c559d3153": "7ff600fab769f40d5576cd07e98515b0",
".git/objects/c7/95052879bad8beaea533a69b85b6c6b8b208e2": "52cb4cb27e46921fcd38e2a4b05d4853",
".git/objects/ca/a68c37fd934124c44ee7e1dbdaac7299551225": "132b8e132b2e95a4ea9352c6810fa46c",
".git/objects/cb/a1a35d5f17a3e9eea35891562be57f793fd0a2": "62787eb444b294bb499a1474d24dd014",
".git/objects/cb/a71233d101e57ea2668e8df3fd67ce597998e6": "430bc9330d18d2d4a04d2444a3555d33",
".git/objects/cc/53f78526db926622df5f309a890859a5269924": "660e39d16b9dae7e4f025b1de52dae0a",
".git/objects/cc/b66be5bbcbd4710b596b165395159119610b4f": "7a9f5a6c1b52e820091d6cfdfb5e3212",
".git/objects/ce/064cd3c40bbe3ee1a0ac3c2a6b6271b13c7eed": "65efe2ef40a723888884347172fdb57a",
".git/objects/ce/6667156201940a2b46bc39632f89fe50c9b96f": "12529457ca78b09aad0f7d5bb0943a2d",
".git/objects/d0/411c5a428b25861b5b55b4bf97a614a80dfd96": "c892f2ae4b00b3152c54809f49bd1b11",
".git/objects/d0/41b007d75d6414781b0c33108275ad47b5ca39": "bc2700416caed46aad3aea659462c8ee",
".git/objects/d0/b2474cfc66585d4a874e31241493edbc765d22": "801e4ecc5c5ebc7c5a969576e14c303a",
".git/objects/d1/aa71eccdede4a2a2e00f3622eaf17a1e7be932": "5c96ef578dad0d5836f8ad09a301feb2",
".git/objects/d4/3532a2348cc9c26053ddb5802f0e5d4b8abc05": "3dad9b209346b1723bb2cc68e7e42a44",
".git/objects/d5/e3ed012dc0c79ba54fb2831e043d33ee4e3629": "7953edc655bf1813f2902f2d35203c5e",
".git/objects/d6/9c56691fbdb0b7efa65097c7cc1edac12a6d3e": "868ce37a3a78b0606713733248a2f579",
".git/objects/d6/b730c1a05d8e92b4be50828282031b084003e3": "2d5979976f131831aff5e15b118809fd",
".git/objects/d8/7fe3e59a6979441af792c9de94b241334e3a6f": "f79f072f1a8dbdf4b4b85497e9fde4f0",
".git/objects/d9/faf33bbe512d6752d82eadf5e4607a6298ba93": "19d28ac86880744789bf20ec8cc994c2",
".git/objects/dd/a4b57aa0dc048982d4261886cbe21d4f61955c": "94b57369a6ed35b295883b0621d10b4b",
".git/objects/e0/4fd5635bf9251c250859eb1b4d6400bab6abdf": "e883dcff50d86138251048b9a55a4b98",
".git/objects/e2/3e180a7b49939729b8ff8a4e3531fa2745e3da": "5a2e52588258f93fb7f1da90cd826bc0",
".git/objects/e2/d4b8dc04474ed4797bfcfa1e388b0b2c679bcb": "5079a55186d48300a1ee5cd61e96e9f5",
".git/objects/e2/e7fc8652ea5e4e8064ec60061669cf21a2352e": "b490bbf4a36fa5bc320ccfdfd5ee2d17",
".git/objects/e5/7182b4e3777db8cc6b929c2b9b4dfd0589df6b": "834ea5508f5a26479c3fe7c90ff6ea99",
".git/objects/e7/5d074d950f1af82638e4bacfa5b5a8aecbec2d": "7aad35a4295f016ef576e90eedb84d97",
".git/objects/e8/2c5850db3a3482d0c954a4dc122c02de555ce7": "d357cd906b3805bf81477f5527cca086",
".git/objects/e9/cfbed1b674b458fe158f2ff715ce4f443b20ca": "8fe496d6ffbf2b2a8cf34ec1adc41c5b",
".git/objects/ea/19795423e4a1fb2a942961c270bd2c64771a89": "2653c58fef4f41323543b6273a99fa04",
".git/objects/eb/9b4d76e525556d5d89141648c724331630325d": "37c0954235cbe27c4d93e74fe9a578ef",
".git/objects/f2/04823a42f2d890f945f70d88b8e2d921c6ae26": "6b47f314ffc35cf6a1ced3208ecc857d",
".git/objects/f2/6f1982fd2499db77ee5f9e0f635492107e1a7b": "36a4bebf001332e215bcb9ed8f29e2a7",
".git/objects/f6/41431e6ad60fc2f6c9c70a1ff5c4831d09f27f": "b8ccb9878472ab50548da02dbcbec2c6",
".git/objects/f6/582cbb95f1d701fb876a34f59c97677ee6fbd6": "a58bddb83fb14614e1db02024483b615",
".git/objects/f6/973b6212891ea70468626ea13fa27f2dadc309": "0bf079346dc569a605ffaefcce2cc023",
".git/objects/f7/18c8fc61863f46b78b85520e2d272e46aac8b4": "481685b28f0830db826923e2921cd143",
".git/objects/f7/ee69db8904f2761857d08abf4db5f0b95a7bc3": "82775b737815de91fc5b1c1a700281e6",
".git/objects/f8/e52779f6bfbe3b136fe10b626808f42a5cdca9": "d69fa37bfb3cdc49a1745be0e025301e",
".git/objects/f9/2958670c1ccdc55a795d1bbdb0acddefab6c14": "1cb3422b9a38cee9cece46942d307854",
".git/objects/f9/7919bb191506aaf1133fb13e7cf1764c0259ea": "26a3b64aa7c0ec0fe203d539ffb546d6",
".git/objects/f9/8a2971a3e2516c7de1b2b1ab7622afb75fc625": "72eccb8bbc5c9f43ee4a9592918c2da4",
".git/objects/f9/bb20b124001ba56a41250321b34c1c19bc17e1": "bcafeb31e2f6755ecbf8d5e96b077413",
".git/objects/fa/ba549e38ec2a55ffad00d1284a9af239b71972": "ac343f4276b5f2f773adde3507bc2578",
".git/objects/fb/c6dad40fcab8160755828edf7b59f62331a858": "d5d7ce11fa0eef4afbfd77676ad877a9",
".git/objects/fc/9fce5181bc820ca383e3c7d689f7c700de93c4": "d03863506aa49494201ecfe2608e7e69",
".git/objects/fd/2c4137326a4d177cfd1e161edf69171209ca9f": "621be2e2709d8d451d756180371a6071",
".git/refs/heads/master": "c71b5ffbfd8b6c49f7c155ba17fa18ed",
".git/refs/remotes/origin/master": "c71b5ffbfd8b6c49f7c155ba17fa18ed",
"assets/AssetManifest.bin": "c8c72cf27670bcd12d7b03661561ead4",
"assets/AssetManifest.bin.json": "49675d987e8c810e2af59090d3d06a76",
"assets/AssetManifest.json": "6ef4a7487d724ce00ac6a1050323c6a6",
"assets/assets/images/2.jpg": "9ec11386356ecb1d28095854757be567",
"assets/assets/images/3.jpg": "3952ff7005e46de6bd4df191bfb5d466",
"assets/assets/images/4.jpg": "5d4f074f0bdfbeab31042f2c471f207c",
"assets/assets/images/6.jpg": "f7f9d7ce721b5f17800725b36b02b102",
"assets/assets/images/8.jpg": "1398e8fec022abbf265dafe6df57d3bb",
"assets/assets/images/anh-thien-nhien.jpg": "910eb4fb9d298d008cbb0b76295d4b25",
"assets/assets/images/bg-bathroom.jpg": "e2515b701c460b3317954d66a718fbb3",
"assets/assets/images/bg-pattern-topo.png": "93f948ab59df535c39fcb0a1cada30d9",
"assets/assets/images/bookmark.png": "8b8b2290979c8f874935b287342c8099",
"assets/assets/images/cancel-icon.png": "3d6b90265ce0fc5c6aa63bcd9561a23e",
"assets/assets/images/check-alt-svgrepo-com.png": "60fdeb622d86a62b533aca10c8803d75",
"assets/assets/images/clock.png": "4e0e05f67e9c4ff63b01680acfbac30a",
"assets/assets/images/clock_fire.png": "3d4fc960b9f0dd4db549d987c43c0b3a",
"assets/assets/images/comment.png": "284917a6ba72a5709272d7cda4affd91",
"assets/assets/images/danang2.jpg": "9fd3f2b2e3694122762f8b5e29a6e3ac",
"assets/assets/images/eye-off-svgrepo-com.png": "968fabfc3d2f75fa17bb06ce62a409e1",
"assets/assets/images/facebook-wow-logo-svgrepo-com.png": "03197658dd0eb9e7e5df6135f3fa844f",
"assets/assets/images/flag.png": "f76b4cf2a021ae20d37f77864712aeb2",
"assets/assets/images/gallery.png": "06d30f85ced33f531adfbbbf3817c4c5",
"assets/assets/images/gamtime.jpg": "5aea1bddae8eb566942116944f08c96f",
"assets/assets/images/Greece.jpg": "e7df537644fa985e6adc5f6310aeb843",
"assets/assets/images/heart-circle-svgrepo-com.png": "59cb8c12364c3ceabafb8ccdca81feee",
"assets/assets/images/icon-agent.png": "1b811bb7893f0645933188b9353c83d7",
"assets/assets/images/icon-calculator.png": "d0e7f77b2835fdcbbf25ee7cafb48902",
"assets/assets/images/icon-house.png": "39d45986de9e5d84c68777cf1cecc887",
"assets/assets/images/icon-pin.png": "37ffda2cc2e7e05ed76edfae27d2a23b",
"assets/assets/images/img-person-01.jpg": "e500628733c4fdd789884dc011af44bf",
"assets/assets/images/img-person-03.jpg": "53ea2ddffdf29db2af3b27a9e1ab946e",
"assets/assets/images/img-person-04.jpg": "b7e93d0391d8f37c42d74063e93ca781",
"assets/assets/images/leonui.jpg": "ea88ca7553990a22b1993842bd7ce6b5",
"assets/assets/images/like.png": "deba7bc186e3cd2625f24ddf93ddbe1c",
"assets/assets/images/logo-01.png": "851814247890ddab8eb4f73bde447625",
"assets/assets/images/logo-02.png": "39d262637d2b44dcdfb8987317a980e8",
"assets/assets/images/logo-03.png": "c9ec19b9cc3c1712090ebee2a8d4d671",
"assets/assets/images/logo-04.png": "5ddb8459de76c8e116d5133e56d1c420",
"assets/assets/images/logo-05.png": "57e2312c681a8b2558c83a02f594feaf",
"assets/assets/images/logo.png": "914b06e0a609099822c4a8e68cbdbf88",
"assets/assets/images/marker-svgrepo-com.png": "76354687e1199a7b8babdb03c32dde26",
"assets/assets/images/marker.jpg": "88b84e9331ce453c67cfec82b7e0ce84",
"assets/assets/images/minus-svgrepo-com.png": "da6e5331e9372f1c1cc046aecff9f97b",
"assets/assets/images/more-horizontal-svgrepo-com.png": "ec347b1bb99002b581f0429cd9b34128",
"assets/assets/images/netherland.jpg": "db03f81725c241f4059a7200859d01a1",
"assets/assets/images/new2.jpg": "236f1a859fab27559ff98ba5990963d9",
"assets/assets/images/news1.jpg": "25ccdab338e612c1f772f8c64c9abe33",
"assets/assets/images/pinterest-svgrepo-com.png": "878924b12b3d17df414097e0ab23fcd4",
"assets/assets/images/property1.jpg": "f0a96b1c736532eb6b2ec87b1c7a1982",
"assets/assets/images/property2.jpg": "cf4fd67d676f1dea59cc70165b4cc0a1",
"assets/assets/images/property3.jpg": "bcee46328f0fc827e317b7d865b9a1f3",
"assets/assets/images/roket.png": "4ef9c01157a00435e612b3cba65a1b49",
"assets/assets/images/Sectionals-header-2053.jpg": "2f71e1e7a5faae235d828e3facad3b09",
"assets/assets/images/share.png": "fab19d79660d70cbdab7eb3ae0714f89",
"assets/assets/images/smile.png": "0cc39f416b76936b6c9700c58057f94c",
"assets/assets/images/sondoong.jpg": "d81db9b741a15426ee9cac17a77c06b7",
"assets/assets/images/spain.jpg": "d1b9d01b6f12126fb3e598b0e3d68cb4",
"assets/assets/images/Switzerland.jpg": "39a5132e253b01ed9923997db4c01a6a",
"assets/assets/images/twitter-154-svgrepo-com.png": "c77b637c50de044f9aa894afd979a588",
"assets/assets/images/VietNam.jpg": "5a4db839a3b99f9069f6991ea56ee1d0",
"assets/assets/images/youtube-168-svgrepo-com.png": "b5c2accb51964e8f33ae07fd3274757d",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "46292324e8971a94f471fa0497951723",
"assets/images/2.jpg": "9ec11386356ecb1d28095854757be567",
"assets/images/3.jpg": "3952ff7005e46de6bd4df191bfb5d466",
"assets/images/4.jpg": "5d4f074f0bdfbeab31042f2c471f207c",
"assets/images/6.jpg": "f7f9d7ce721b5f17800725b36b02b102",
"assets/images/8.jpg": "1398e8fec022abbf265dafe6df57d3bb",
"assets/images/anh-thien-nhien.jpg": "910eb4fb9d298d008cbb0b76295d4b25",
"assets/images/bg-bathroom.jpg": "e2515b701c460b3317954d66a718fbb3",
"assets/images/check-alt-svgrepo-com.png": "60fdeb622d86a62b533aca10c8803d75",
"assets/images/gamtime.jpg": "5aea1bddae8eb566942116944f08c96f",
"assets/images/icon-agent.png": "1b811bb7893f0645933188b9353c83d7",
"assets/images/icon-calculator.png": "d0e7f77b2835fdcbbf25ee7cafb48902",
"assets/images/icon-house.png": "39d45986de9e5d84c68777cf1cecc887",
"assets/images/icon-pin.png": "37ffda2cc2e7e05ed76edfae27d2a23b",
"assets/images/img-person-01.jpg": "e500628733c4fdd789884dc011af44bf",
"assets/images/img-person-03.jpg": "53ea2ddffdf29db2af3b27a9e1ab946e",
"assets/images/img-person-04.jpg": "b7e93d0391d8f37c42d74063e93ca781",
"assets/images/logo-01.png": "851814247890ddab8eb4f73bde447625",
"assets/images/logo-02.png": "39d262637d2b44dcdfb8987317a980e8",
"assets/images/logo-03.png": "c9ec19b9cc3c1712090ebee2a8d4d671",
"assets/images/logo-04.png": "5ddb8459de76c8e116d5133e56d1c420",
"assets/images/logo-05.png": "57e2312c681a8b2558c83a02f594feaf",
"assets/images/logo.png": "914b06e0a609099822c4a8e68cbdbf88",
"assets/images/marker-svgrepo-com.png": "76354687e1199a7b8babdb03c32dde26",
"assets/images/marker.jpg": "88b84e9331ce453c67cfec82b7e0ce84",
"assets/images/pinterest-svgrepo-com.png": "878924b12b3d17df414097e0ab23fcd4",
"assets/images/property1.jpg": "f0a96b1c736532eb6b2ec87b1c7a1982",
"assets/images/property2.jpg": "cf4fd67d676f1dea59cc70165b4cc0a1",
"assets/images/property3.jpg": "bcee46328f0fc827e317b7d865b9a1f3",
"assets/images/Sectionals-header-2053.jpg": "2f71e1e7a5faae235d828e3facad3b09",
"assets/images/twitter-154-svgrepo-com.png": "c77b637c50de044f9aa894afd979a588",
"assets/images/youtube-168-svgrepo-com.png": "b5c2accb51964e8f33ae07fd3274757d",
"assets/NOTICES": "a209a1b7f1721f3ea9215701f505fff3",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "e986ebe42ef785b27164c36a9abc7818",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "c86fbd9e7b17accae76e5ad116583dc4",
"canvaskit/canvaskit.js.symbols": "38cba9233b92472a36ff011dc21c2c9f",
"canvaskit/canvaskit.wasm": "3d2a2d663e8c5111ac61a46367f751ac",
"canvaskit/chromium/canvaskit.js": "43787ac5098c648979c27c13c6f804c3",
"canvaskit/chromium/canvaskit.js.symbols": "4525682ef039faeb11f24f37436dca06",
"canvaskit/chromium/canvaskit.wasm": "f5934e694f12929ed56a671617acd254",
"canvaskit/skwasm.js": "445e9e400085faead4493be2224d95aa",
"canvaskit/skwasm.js.symbols": "741d50ffba71f89345996b0aa8426af8",
"canvaskit/skwasm.wasm": "e42815763c5d05bba43f9d0337fa7d84",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "c71a09214cb6f5f8996a531350400a9a",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "ab72e1c26b97a8cea8087cacc93563ea",
"/": "ab72e1c26b97a8cea8087cacc93563ea",
"main.dart.js": "d3416391809877cd65d7424585291790",
"manifest.json": "e766e75b3470d6a6e9530e35a7917ef3",
"version.json": "d3583cf57f8fe2afda3a86b31d0d1eda"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
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
