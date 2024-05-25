'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "8ad5ab2707f5e6bc1a8ea84b49475a82",
"assets/AssetManifest.bin.json": "34f72ff171ae8f241cccca5c5c9f6c6c",
"assets/AssetManifest.json": "b3b2d9427a88ccb55eec94385b8259b0",
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
"assets/assets/images/eye-off.png": "968fabfc3d2f75fa17bb06ce62a409e1",
"assets/assets/images/eye.png": "8dea5ead4bd23a2b63cf6f7bfcf247a3",
"assets/assets/images/facebook-wow-logo-svgrepo-com.png": "03197658dd0eb9e7e5df6135f3fa844f",
"assets/assets/images/faker.jpg": "a8d45f61e184889dfb65c6c94df92b3b",
"assets/assets/images/flag.png": "f76b4cf2a021ae20d37f77864712aeb2",
"assets/assets/images/gallery.png": "06d30f85ced33f531adfbbbf3817c4c5",
"assets/assets/images/gamtime.jpg": "5aea1bddae8eb566942116944f08c96f",
"assets/assets/images/Greece.jpg": "e7df537644fa985e6adc5f6310aeb843",
"assets/assets/images/heart-circle-svgrepo-com.png": "59cb8c12364c3ceabafb8ccdca81feee",
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
"assets/assets/images/leonui.jpg": "ea88ca7553990a22b1993842bd7ce6b5",
"assets/assets/images/like.png": "deba7bc186e3cd2625f24ddf93ddbe1c",
"assets/assets/images/login-image.jpg": "788d7e8c7b81d27cb5503dcca2d4ce8d",
"assets/assets/images/logo-01.png": "851814247890ddab8eb4f73bde447625",
"assets/assets/images/logo-02.png": "39d262637d2b44dcdfb8987317a980e8",
"assets/assets/images/logo-03.png": "c9ec19b9cc3c1712090ebee2a8d4d671",
"assets/assets/images/logo-04.png": "5ddb8459de76c8e116d5133e56d1c420",
"assets/assets/images/logo-05.png": "57e2312c681a8b2558c83a02f594feaf",
"assets/assets/images/logo.png": "914b06e0a609099822c4a8e68cbdbf88",
"assets/assets/images/marker-svgrepo-com.png": "76354687e1199a7b8babdb03c32dde26",
"assets/assets/images/marker.jpg": "88b84e9331ce453c67cfec82b7e0ce84",
"assets/assets/images/messi.jpg": "d4974351da6cd29fbcabf50d48aba814",
"assets/assets/images/minus-svgrepo-com.png": "da6e5331e9372f1c1cc046aecff9f97b",
"assets/assets/images/more-horizontal-svgrepo-com.png": "ec347b1bb99002b581f0429cd9b34128",
"assets/assets/images/netherland.jpg": "db03f81725c241f4059a7200859d01a1",
"assets/assets/images/new2.jpg": "236f1a859fab27559ff98ba5990963d9",
"assets/assets/images/news1.jpg": "25ccdab338e612c1f772f8c64c9abe33",
"assets/assets/images/optimus.png": "906bb6b14d10a45276c79212959adcdc",
"assets/assets/images/pinterest-svgrepo-com.png": "878924b12b3d17df414097e0ab23fcd4",
"assets/assets/images/property1.jpg": "f0a96b1c736532eb6b2ec87b1c7a1982",
"assets/assets/images/property2.jpg": "cf4fd67d676f1dea59cc70165b4cc0a1",
"assets/assets/images/property3.jpg": "bcee46328f0fc827e317b7d865b9a1f3",
"assets/assets/images/roket.png": "4ef9c01157a00435e612b3cba65a1b49",
"assets/assets/images/ronaldo.jpg": "147518448aa30dfad459bdef600c5746",
"assets/assets/images/Sectionals-header-2053.jpg": "2f71e1e7a5faae235d828e3facad3b09",
"assets/assets/images/share.png": "fab19d79660d70cbdab7eb3ae0714f89",
"assets/assets/images/smile.png": "0cc39f416b76936b6c9700c58057f94c",
"assets/assets/images/sondoong.jpg": "d81db9b741a15426ee9cac17a77c06b7",
"assets/assets/images/spain.jpg": "d1b9d01b6f12126fb3e598b0e3d68cb4",
"assets/assets/images/Switzerland.jpg": "39a5132e253b01ed9923997db4c01a6a",
"assets/assets/images/sync-icon.png": "658c9fed0521a0af9f8c9e057d6dbdbe",
"assets/assets/images/tomcat.jpg": "cf5b7fe4ee0c50fccda16834e1f937c4",
"assets/assets/images/twitter-154-svgrepo-com.png": "c77b637c50de044f9aa894afd979a588",
"assets/assets/images/user-profile-ava.png": "d5d648b69fa619e561131f6c84c49d1f",
"assets/assets/images/VietNam.jpg": "5a4db839a3b99f9069f6991ea56ee1d0",
"assets/assets/images/youtube-168-svgrepo-com.png": "b5c2accb51964e8f33ae07fd3274757d",
"assets/assets/images/zalo.jpg": "cd19732ee995ae608682d0233c16fd1c",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "54927d627c3137bb313c8d0138734edd",
"assets/images/2.jpg": "9ec11386356ecb1d28095854757be567",
"assets/images/3.jpg": "3952ff7005e46de6bd4df191bfb5d466",
"assets/images/4.jpg": "5d4f074f0bdfbeab31042f2c471f207c",
"assets/images/6.jpg": "f7f9d7ce721b5f17800725b36b02b102",
"assets/images/8.jpg": "1398e8fec022abbf265dafe6df57d3bb",
"assets/images/anh-thien-nhien.jpg": "910eb4fb9d298d008cbb0b76295d4b25",
"assets/images/bg-bathroom.jpg": "e2515b701c460b3317954d66a718fbb3",
"assets/images/check-alt-svgrepo-com.png": "60fdeb622d86a62b533aca10c8803d75",
"assets/images/faker.jpg": "a8d45f61e184889dfb65c6c94df92b3b",
"assets/images/gamtime.jpg": "5aea1bddae8eb566942116944f08c96f",
"assets/images/huy2.jpg": "87911d547f36b18b297e6a59861b1bac",
"assets/images/icon-agent.png": "1b811bb7893f0645933188b9353c83d7",
"assets/images/icon-calculator.png": "d0e7f77b2835fdcbbf25ee7cafb48902",
"assets/images/icon-house.png": "39d45986de9e5d84c68777cf1cecc887",
"assets/images/icon-pin.png": "37ffda2cc2e7e05ed76edfae27d2a23b",
"assets/images/img-detail-01.jpg": "fdb7a8342efbfbe1fc766508093226d4",
"assets/images/img-detail-03.jpg": "08f65782fda1876261b5511574069293",
"assets/images/img-detail-04.jpg": "61060401361467dccda282152211ad4e",
"assets/images/img-detail-05.jpg": "f59db1dad6a7275fa5b4fcc3341b389d",
"assets/images/img-person-01.jpg": "e500628733c4fdd789884dc011af44bf",
"assets/images/img-person-03.jpg": "53ea2ddffdf29db2af3b27a9e1ab946e",
"assets/images/img-person-04.jpg": "b7e93d0391d8f37c42d74063e93ca781",
"assets/images/login-image.jpg": "788d7e8c7b81d27cb5503dcca2d4ce8d",
"assets/images/login_desktop.dart": "d0a7edce62cfd4023b6846e97551781b",
"assets/images/logo-01.png": "851814247890ddab8eb4f73bde447625",
"assets/images/logo-02.png": "39d262637d2b44dcdfb8987317a980e8",
"assets/images/logo-03.png": "c9ec19b9cc3c1712090ebee2a8d4d671",
"assets/images/logo-04.png": "5ddb8459de76c8e116d5133e56d1c420",
"assets/images/logo-05.png": "57e2312c681a8b2558c83a02f594feaf",
"assets/images/logo.png": "914b06e0a609099822c4a8e68cbdbf88",
"assets/images/marker-svgrepo-com.png": "76354687e1199a7b8babdb03c32dde26",
"assets/images/marker.jpg": "88b84e9331ce453c67cfec82b7e0ce84",
"assets/images/messi.jpg": "d4974351da6cd29fbcabf50d48aba814",
"assets/images/optimus.png": "906bb6b14d10a45276c79212959adcdc",
"assets/images/pinterest-svgrepo-com.png": "878924b12b3d17df414097e0ab23fcd4",
"assets/images/property1.jpg": "f0a96b1c736532eb6b2ec87b1c7a1982",
"assets/images/property2.jpg": "cf4fd67d676f1dea59cc70165b4cc0a1",
"assets/images/property3.jpg": "bcee46328f0fc827e317b7d865b9a1f3",
"assets/images/ronaldo.jpg": "147518448aa30dfad459bdef600c5746",
"assets/images/Sectionals-header-2053.jpg": "2f71e1e7a5faae235d828e3facad3b09",
"assets/images/tomcat.jpg": "cf5b7fe4ee0c50fccda16834e1f937c4",
"assets/images/twitter-154-svgrepo-com.png": "c77b637c50de044f9aa894afd979a588",
"assets/images/youtube-168-svgrepo-com.png": "b5c2accb51964e8f33ae07fd3274757d",
"assets/NOTICES": "2ba1b8a5f4924fb278c104f39988bc4f",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "e986ebe42ef785b27164c36a9abc7818",
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
"flutter_bootstrap.js": "e98df0f5839bbfe0531386584a080841",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "41239467a9f89754a0a638583ee8bd3e",
"/": "41239467a9f89754a0a638583ee8bd3e",
"main.dart.js": "547dba2118bc729540f0a60d38b2644d",
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
