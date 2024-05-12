'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {".git/COMMIT_EDITMSG": "f6186e94d14bafbf0e9d1d3f0d7e677c",
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
".git/index": "6f6f84ad06fe2afc387d79fdb1ab6ffc",
".git/info/exclude": "036208b4a1ab4a235d75c181e685e5a3",
".git/logs/HEAD": "ccf9485f6087e2579b7ed61837319ceb",
".git/logs/refs/heads/master": "f6b2cb38660793ede1074e570c8789da",
".git/logs/refs/remotes/origin/master": "e3a8c28cbd2c911899e5319878a6426d",
".git/objects/01/69708caac7529ba7bb48aa27bbd6b0b6967c66": "4744d49fcea23cd2b39f39dd152a5c88",
".git/objects/03/145bebce9fd291615f8187972d92a620744936": "5ea85ef3257d30f947108c9535324557",
".git/objects/07/74c17c0fa7a7e87e24a6935830998d92b52c75": "cd62ee54b7ceea7b2a7804e69b1d9134",
".git/objects/0a/6aac82ad685f42295dec4bc5c092b87e928470": "a696981cee29c36719a87168d12cbe11",
".git/objects/16/5ce0ddf03a820a38f48cba9aa0c9df9b6e6b79": "71df17c95c3124eada62b59e7dabda78",
".git/objects/16/64fad406f54b1de0fe7d4f76d2a7272adb7312": "75546c5aa133ba43a1f1003367b19afc",
".git/objects/1a/1281cf1dd5f018185c549a96851a1ee284197b": "b0fe4541349caf22bd689ef0e14ec44c",
".git/objects/1f/45b5bcaac804825befd9117111e700e8fcb782": "7a9d811fd6ce7c7455466153561fb479",
".git/objects/1f/cd1c3b25b0d521e0ac6d35c9de38a855e5a5c1": "027a314a23f2bf050010795eaa0ee50d",
".git/objects/20/1afe538261bd7f9a38bed0524669398070d046": "82a4d6c731c1d8cdc48bce3ab3c11172",
".git/objects/25/8b3eee70f98b2ece403869d9fe41ff8d32b7e1": "05e38b9242f2ece7b4208c191bc7b258",
".git/objects/35/068cca1c9ef49a1b528da655d1a678aa8935e5": "95e0a3cfc8d0bdf4a9c894604e359b1e",
".git/objects/36/5b2b0a741c504b78fda1b14ef33ab7ee7fbfb1": "56deef284357d0bef50ca8eb93a5cd77",
".git/objects/38/22906aff08934c50aa301a9fc800e0f5daaa10": "79621adade733489d38678769474d8be",
".git/objects/3d/24255fc2eca16b3cee4efd39ffc6d97c8734ac": "34451fc35568ca509a8fee69f8d56886",
".git/objects/46/4ab5882a2234c39b1a4dbad5feba0954478155": "2e52a767dc04391de7b4d0beb32e7fc4",
".git/objects/4a/39079e580dc9be820cba2fae41238c49eaa798": "ada1a19fea32fbb6719120809b9eae60",
".git/objects/4b/89533e37bbd5ac3bdad05317004785278492a6": "779796375f2ed8463f2b621c79fbe837",
".git/objects/5a/7b05e1be311772247124911182fda78fde2cec": "d38bfbb93663df272dc4920186bd1040",
".git/objects/5a/98017f3f52c89f29e12feca5e7b565cb978af9": "99227e668407000f0034d890e6a5858c",
".git/objects/5b/5073dff1c753500a966afe7da5505e25f5e40d": "13e3591744682f9fdacb82ea1a4744ed",
".git/objects/5e/ff845bb3c2f3a5b209ad901e78fcd1d1a54590": "f182d98827356c05860db928dc25235e",
".git/objects/67/5d8660f703047170b4803533e26f187418999e": "92c7e3732051a6dc707850218658c09d",
".git/objects/68/acf71e80e9beb26eea1b76453734d9ba5b6589": "dc7b76f7d7674d3766ad8951e2e7b9d9",
".git/objects/6b/b0d3595cfe9b21f76f2eed7b1f12e3b15fa112": "2268ac7fdda11eea3912c00da2b1456f",
".git/objects/6e/3b8c24fe6a0fb96f925bb207007ced0d4eeabf": "272dbf0df9e8786dadadee35f1b5a5b1",
".git/objects/6f/9cad4c116bc8d72e2497226abb5c05ee64982c": "0d104480d68c1652a53721377a02a882",
".git/objects/71/7117947090611c3967f8681ab1ac0f79bca7fc": "ad4e74c0da46020e04043b5cf7f91098",
".git/objects/71/7809363ed19bdd7e1d78f6e421e40a96bc29e3": "9414a3044cb191cc3f57340f57c3dc93",
".git/objects/78/0532b097367fafd359fc6541b1c876f04c8028": "c0d5166ec7fe78203ad59741da8e1970",
".git/objects/7f/03effba3abb4a46663da4dcb80f260b47c2d20": "9336cb9c9d56ae3dcd283141a45e49ee",
".git/objects/85/0f21d6ba04038ab00484ce16b89177b330a61d": "dc9b20091e93df0e7c1dcc1d7c963be7",
".git/objects/85/6a39233232244ba2497a38bdd13b2f0db12c82": "eef4643a9711cce94f555ae60fecd388",
".git/objects/88/cfd48dff1169879ba46840804b412fe02fefd6": "e42aaae6a4cbfbc9f6326f1fa9e3380c",
".git/objects/8a/aa46ac1ae21512746f852a42ba87e4165dfdd1": "1d8820d345e38b30de033aa4b5a23e7b",
".git/objects/8d/0666c4fae05a85f1639039239c89e83da22d15": "583ea8830092ba6ecf88c17375ecebc1",
".git/objects/94/bfb1463ad8331bfd687bc751b8920b133da744": "fd2d8c0d844b234856b36b93f652048f",
".git/objects/98/e047af769d707f249f99d9bb326bd30312930f": "8a0598b7d28cda5518f259f278d96b14",
".git/objects/9b/b367f4bce113eda40ade55d8003b1451df5054": "4d9ae7f7e01d3ca0f64c1074f93b7867",
".git/objects/af/742adee0a85dd21ea96cbd84182e30e085d6cf": "aa25b932ec40efacb1efe27e7cf25d82",
".git/objects/b0/da2f4b271e5880452d6b351629fae75d905600": "e6d69608c8325c739dd81208bc8a4aa3",
".git/objects/b5/0254288cc6319d153c4af1d64870d95ee2436f": "468a6506934a07c970a4739eae75eedd",
".git/objects/b7/49bfef07473333cf1dd31e9eed89862a5d52aa": "36b4020dca303986cad10924774fb5dc",
".git/objects/b9/2a0d854da9a8f73216c4a0ef07a0f0a44e4373": "f62d1eb7f51165e2a6d2ef1921f976f3",
".git/objects/ba/5317db6066f0f7cfe94eec93dc654820ce848c": "9b7629bf1180798cf66df4142eb19a4e",
".git/objects/c1/38b37a24896c2cd6b9bfc9db0475e1fafd3ea9": "a2ea091465e9d50adfdcd57c834f6fb4",
".git/objects/c5/f4bc2a4da91586f3005813077f0d0aa9040f82": "3191028b787554cee4652f5050144bff",
".git/objects/c6/e33adc7ac7b497737b339711defac3d2fc2604": "9590ceb26b19db216ac8db0653913481",
".git/objects/c7/7d77ff105e9801553e71cf55fabe4c559d3153": "7ff600fab769f40d5576cd07e98515b0",
".git/objects/cb/a1a35d5f17a3e9eea35891562be57f793fd0a2": "62787eb444b294bb499a1474d24dd014",
".git/objects/cb/a71233d101e57ea2668e8df3fd67ce597998e6": "430bc9330d18d2d4a04d2444a3555d33",
".git/objects/ce/6667156201940a2b46bc39632f89fe50c9b96f": "12529457ca78b09aad0f7d5bb0943a2d",
".git/objects/d4/3532a2348cc9c26053ddb5802f0e5d4b8abc05": "3dad9b209346b1723bb2cc68e7e42a44",
".git/objects/d6/9c56691fbdb0b7efa65097c7cc1edac12a6d3e": "868ce37a3a78b0606713733248a2f579",
".git/objects/d6/b730c1a05d8e92b4be50828282031b084003e3": "2d5979976f131831aff5e15b118809fd",
".git/objects/dd/a4b57aa0dc048982d4261886cbe21d4f61955c": "94b57369a6ed35b295883b0621d10b4b",
".git/objects/e0/4fd5635bf9251c250859eb1b4d6400bab6abdf": "e883dcff50d86138251048b9a55a4b98",
".git/objects/e2/d4b8dc04474ed4797bfcfa1e388b0b2c679bcb": "5079a55186d48300a1ee5cd61e96e9f5",
".git/objects/e5/7182b4e3777db8cc6b929c2b9b4dfd0589df6b": "834ea5508f5a26479c3fe7c90ff6ea99",
".git/objects/e8/2c5850db3a3482d0c954a4dc122c02de555ce7": "d357cd906b3805bf81477f5527cca086",
".git/objects/eb/9b4d76e525556d5d89141648c724331630325d": "37c0954235cbe27c4d93e74fe9a578ef",
".git/objects/f2/04823a42f2d890f945f70d88b8e2d921c6ae26": "6b47f314ffc35cf6a1ced3208ecc857d",
".git/objects/f2/6f1982fd2499db77ee5f9e0f635492107e1a7b": "36a4bebf001332e215bcb9ed8f29e2a7",
".git/objects/f9/2958670c1ccdc55a795d1bbdb0acddefab6c14": "1cb3422b9a38cee9cece46942d307854",
".git/refs/heads/master": "e51361e6d9f52e086fa9dc49faa4b0bd",
".git/refs/remotes/origin/master": "e51361e6d9f52e086fa9dc49faa4b0bd",
"assets/AssetManifest.bin": "98e4db6cdc0998d84055f1fa83214375",
"assets/AssetManifest.bin.json": "7e161f1163b07179ac05facf6991cf58",
"assets/AssetManifest.json": "8736bc78af5dd8459d5b35227f2f85e7",
"assets/assets/images/bg-bathroom.jpg": "e2515b701c460b3317954d66a718fbb3",
"assets/assets/images/check-alt-svgrepo-com.png": "60fdeb622d86a62b533aca10c8803d75",
"assets/assets/images/icon-agent.png": "1b811bb7893f0645933188b9353c83d7",
"assets/assets/images/icon-calculator.png": "d0e7f77b2835fdcbbf25ee7cafb48902",
"assets/assets/images/icon-house.png": "39d45986de9e5d84c68777cf1cecc887",
"assets/assets/images/icon-pin.png": "37ffda2cc2e7e05ed76edfae27d2a23b",
"assets/assets/images/logo-01.png": "851814247890ddab8eb4f73bde447625",
"assets/assets/images/logo-02.png": "39d262637d2b44dcdfb8987317a980e8",
"assets/assets/images/logo-03.png": "c9ec19b9cc3c1712090ebee2a8d4d671",
"assets/assets/images/logo-04.png": "5ddb8459de76c8e116d5133e56d1c420",
"assets/assets/images/logo-05.png": "57e2312c681a8b2558c83a02f594feaf",
"assets/assets/images/logo.png": "914b06e0a609099822c4a8e68cbdbf88",
"assets/assets/images/marker-svgrepo-com.png": "76354687e1199a7b8babdb03c32dde26",
"assets/assets/images/marker.jpg": "88b84e9331ce453c67cfec82b7e0ce84",
"assets/assets/images/pinterest-svgrepo-com.png": "878924b12b3d17df414097e0ab23fcd4",
"assets/assets/images/property1.jpg": "f0a96b1c736532eb6b2ec87b1c7a1982",
"assets/assets/images/property2.jpg": "cf4fd67d676f1dea59cc70165b4cc0a1",
"assets/assets/images/property3.jpg": "bcee46328f0fc827e317b7d865b9a1f3",
"assets/assets/images/Sectionals-header-2053.jpg": "2f71e1e7a5faae235d828e3facad3b09",
"assets/assets/images/twitter-154-svgrepo-com.png": "c77b637c50de044f9aa894afd979a588",
"assets/assets/images/youtube-168-svgrepo-com.png": "b5c2accb51964e8f33ae07fd3274757d",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "46292324e8971a94f471fa0497951723",
"assets/NOTICES": "f1d40a88d5d00607478f7225d5dfdc43",
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
"index.html": "3d39fc2bc5a1b9098639b8a7cf7abeee",
"/": "3d39fc2bc5a1b9098639b8a7cf7abeee",
"main.dart.js": "cff08bc45420d52f1a66906b76430e55",
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
