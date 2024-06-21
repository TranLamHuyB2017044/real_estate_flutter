import 'package:flutter/material.dart';
import 'package:my_real_estate/Widgets/FooterWidget/footer.dart';
import 'package:my_real_estate/extensions/hover_extension.dart';

class MobileNews extends StatefulWidget {
  const MobileNews({super.key});

  @override
  State<MobileNews> createState() => _MobileNewsState();
}

class _MobileNewsState extends State<MobileNews> {
  @override
  Widget build(BuildContext context) {
    List<String> mostViewerContent = [
      'Inside the prestigious Victoria Ave home that has set a new price record for SA',
      'St Georges home with club-size tennis court sells after just three days on market',
      'This Millswood renovation will have homebuyers standing at attention',
      'Former home of Small World Bakery in Langhorne Creek listed for sale',
      'Developers eye off four-title investment opportunity in Bridgewater, Adelaide Hills'
    ];
    return ListView(
      children: [
        Container(
          decoration: const BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.grey, width: 0.3)),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: const Stack(children: [
            Row(
              children: [
                Icon(
                  Icons.home,
                  color: Colors.grey,
                  size: 25,
                ),
                Text(
                  ' > ',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  ' News',
                  style: TextStyle(color: Colors.grey, fontSize: 18),
                ),
              ],
            ),
            Positioned(
              right: 0,
              top: 0,
              bottom: 0,
              child: Icon(
                Icons.search,
                color: Colors.grey,
                size: 25,
              ),
            )
          ]),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 50),
              child: const Column(
                children: [
                  Text(
                    'Latest Property News',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    'Read the latest real estate & finance news, property market trends and housing information and insights.',
                    style: TextStyle(fontSize: 14),
                    textAlign: TextAlign.justify,
                  )
                ],
              ),
            ),
            const BigNews(),
            const NewsWithoutImage(
              time: '25/05/2024 07:50 ',
              content:
                  'Market Watch: Geelong - the regional Victorian city giving Melbourne a run for its money',
            ),
            const NewsWithoutImage(
              time: '24/05/2024 11:57 ',
              content:
                  'New housing supply: Mirvac’s new hotly contested Riverlands project',
            ),
            const NewsWithoutImage(
              time: '25/05/2024 00:00 ',
              content:
                  'Moving House? 11 tips to keep your new neighbours on side',
            ),
            const SizedBox(
              height: 20,
            ),
            const NewsImage(
                url: 'assets/images/new3.jpg',
                time: '23/05/2024 15:00',
                title:
                    'Balhannah estate in the Adelaide Hills is the ultimate lifestyle escape',
                content:
                    'Mark Ker and partner Harvey Stanton bought the property at 276 Junction Rd about three-and-a-half years ago and have since extensively renovated it, transforming it into a grand entertainer and the ultimate lifestyle property.'),
            const NewsImage(
                url: 'assets/images/news4.jpg',
                time: '23/05/2024 08:58',
                title:
                    'Balhannah estate in the Adelaide Hills is the ultimate lifestyle escape',
                content:
                    'Mark Ker and partner Harvey Stanton bought the property at 276 Junction Rd about three-and-a-half years ago and have since extensively renovated it, transforming it into a grand entertainer and the ultimate lifestyle property.'),
            const NewsImage(
                url: 'assets/images/news5.jpg',
                time: '23/05/2024 07:50',
                title:
                    'Balhannah estate in the Adelaide Hills is the ultimate lifestyle escape',
                content:
                    'Mark Ker and partner Harvey Stanton bought the property at 276 Junction Rd about three-and-a-half years ago and have since extensively renovated it, transforming it into a grand entertainer and the ultimate lifestyle property.'),
            MostViewed(content: mostViewerContent),
            const PropertyCity(),
            const NewsImage(
                url: 'assets/images/img-detail-05.jpg',
                time: '22/05/2024 15:00',
                title: 'Brand-new homes available in riverside NSW hidden gem',
                content:
                    'Just as the seasons have changed, so too has the home and now offers a contemporary aesthetic, and a free-flowing floorplan more suited to family life and perfect for entertaining.'),
            const NewsImage(
                url: 'assets/images/img-detail-03.jpg',
                time: '22/05/2024 08:58',
                title:
                    'Balhannah estate in the Adelaide Hills is the ultimate lifestyle escape',
                content:
                    'The home has up to five bedrooms, or four and a study, with the master suite complete with a luxe ensuite.'),
            const NewsImage(
                url: 'assets/images/login-image.jpg',
                time: '22/05/2024 11:50',
                title: 'The real estate act that wowed Ryan Reynolds',
                content:
                    'Mark Ker and partner Harvey Stanton bought the property at 276 Junction Rd about three-and-a-half years ago and have since extensively renovated it, transforming it into a grand entertainer and the ultimate lifestyle property.'),
            const SizedBox(
              height: 20,
            ),
            const TopicSection(
              topic: 'Hot topic',
            ),
            const TopicSection(
              topic: 'Sale/Rent properties in Ha Noi',
            ),
            const TopicSection(
              topic: 'Sale/Rent properties in Ho Chi Minh',
            ),
            const TopicSection(
              topic: 'Hot topic at',
            ),
          ]),
        ),
        const SizedBox(
          height: 50,
        ),
        const Footer()
      ],
    );
  }
}

class BigNews extends StatelessWidget {
  const BigNews({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 350,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: const AssetImage('assets/images/bg-bignews.jpg'),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.6), BlendMode.darken))),
        ),
        const Positioned(
          bottom: 50,
          left: 20,
          right: 20,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                '27/05/2024 09:00 - news',
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Home’s epic infinity pool boasts mountain, Yarra Valley views',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white),
              )
            ],
          ),
        )
      ],
    );
  }
}

class NewsWithoutImage extends StatelessWidget {
  const NewsWithoutImage(
      {super.key, required this.time, required this.content});
  final String time;
  final String content;

  @override
  Widget build(BuildContext context) {
    bool isDesktop = MediaQuery.of(context).size.width > 950;
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
      decoration: BoxDecoration(
          border: isDesktop
              ? null
              : const Border(
                  bottom: BorderSide(color: Colors.grey, width: 0.3))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 15,
          ),
          Text(
            '$time - news',
            style: const TextStyle(color: Colors.grey, fontSize: 14),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            content,
            style: const TextStyle(height: 1.3, fontSize: 18),
          )
        ],
      ),
    );
  }
}

class NewsImage extends StatelessWidget {
  const NewsImage(
      {super.key,
      required this.url,
      required this.time,
      required this.content,
      required this.title});
  final String url;
  final String time;
  final String title;
  final String content;
  @override
  Widget build(BuildContext context) {
    bool isBigTablet = MediaQuery.of(context).size.width > 768;
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5.0),
          boxShadow: const [
            BoxShadow(
                offset: Offset(0, 0),
                blurRadius: 7,
                spreadRadius: -1,
                color: Colors.grey)
          ]),
      child: isBigTablet
          ? Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(5.0),
                              bottomLeft: Radius.circular(5.0)),
                          image: DecorationImage(
                            image: AssetImage(url),
                            fit: BoxFit.cover,
                          )),
                    ),
                    Positioned(
                      top: 10,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 5),
                        decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.8),
                            borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(5.0),
                                bottomRight: Radius.circular(5.0))),
                        child: const Text(
                          'Latest News',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    )
                  ],
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(
                                height: 15,
                              ),
                              Text(
                                '$time - news',
                                style: const TextStyle(
                                    color: Colors.grey, fontSize: 14),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                title,
                                style: const TextStyle(
                                    height: 1.3,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700),
                              )
                            ],
                          ),
                        ),
                        Text(
                          content,
                          style: const TextStyle(
                            fontSize: 15,
                          ),
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                )
              ],
            )
          : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                      height: 160,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(url), fit: BoxFit.cover)),
                    ),
                    Positioned(
                      top: 10,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 5),
                        decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.8),
                            borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(5.0),
                                bottomRight: Radius.circular(5.0))),
                        child: const Text(
                          'Latest News',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 15,
                            ),
                            Text(
                              '$time - news',
                              style: const TextStyle(
                                  color: Colors.grey, fontSize: 14),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              title,
                              style: const TextStyle(
                                  height: 1.3,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700),
                            )
                          ],
                        ),
                      ),
                      Text(
                        content,
                        style: const TextStyle(
                          fontSize: 15,
                        ),
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                )
              ],
            ),
    );
  }
}

class MostViewed extends StatelessWidget {
  const MostViewed({super.key, required this.content});
  final List<String> content;
  @override
  Widget build(BuildContext context) {
    bool isDesktop = MediaQuery.of(context).size.width > 950;

    return Container(
      margin: const EdgeInsets.fromLTRB(0, 30, 0, 0),
      decoration: BoxDecoration(
          color: Colors.white,
          border: isDesktop ? null : Border.all(color: Colors.grey, width: 0.3),
          borderRadius: BorderRadius.circular(5.0)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 20),
            decoration: const BoxDecoration(
                border:
                    Border(bottom: BorderSide(color: Colors.grey, width: 0.2))),
            child: const Text(
              'Top 5 most viewer news',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              textAlign: TextAlign.center,
            ),
          ),
          for (int i = 1; i < 6; i++)
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              decoration: const BoxDecoration(
                border:
                    Border(bottom: BorderSide(color: Colors.grey, width: 0.2)),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.blue.withOpacity(0.4),
                    ),
                    child: Text(
                      i.toString(),
                      style: const TextStyle(color: Colors.blueAccent),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    flex: 3,
                    child: Text(
                      content[i - 1],
                      style: const TextStyle(fontSize: 15, height: 1.3),
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.start,
                      maxLines: 2,
                    ),
                  )
                ],
              ),
            )
        ],
      ),
    );
  }
}

class PropertyCity extends StatelessWidget {
  const PropertyCity({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDesktop = MediaQuery.of(context).size.width > 950;

    List<Map<String, String>> citiesCard = [
      {
        'city': 'Hà Nội',
        'url': 'assets/images/hanoi.png',
      },
      {
        'city': 'Hồ Chí Minh',
        'url': 'assets/images/hcm.png',
      },
      {
        'city': 'Bà Rịa - Vũng Tàu',
        'url': 'assets/images/vungtau.png',
      },
      {
        'city': 'Bình Dương',
        'url': 'assets/images/binhduong.png',
      },
      {
        'city': 'Đà Nẵng',
        'url': 'assets/images/danang.png',
      },
      {
        'city': 'Đồng Nai',
        'url': 'assets/images/dongnai.png',
      },
      {
        'city': 'Hải Phòng',
        'url': 'assets/images/haiphong.png',
      },
      {
        'city': 'Hưng Yên',
        'url': 'assets/images/hungyen.png',
      },
      {
        'city': 'Khánh Hòa',
        'url': 'assets/images/khanhhoa.png',
      },
      {
        'city': 'Long An',
        'url': 'assets/images/longan.png',
      },
      {
        'city': 'Quảng Nam',
        'url': 'assets/images/quangnam.png',
      },
      {
        'city': 'Quảng Ninh',
        'url': 'assets/images/quangninh.png',
      },
    ];
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 30, 0, 0),
      decoration: BoxDecoration(
          color: Colors.white,
          border: isDesktop ? null : Border.all(color: Colors.grey, width: 0.3),
          borderRadius: BorderRadius.circular(5.0)),
      child: Column(
        children: [
          Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 20),
              decoration: const BoxDecoration(
                  border: Border(
                      bottom: BorderSide(color: Colors.grey, width: 0.3))),
              child: const Text(
                'Most vibrant property market in cities',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                textAlign: TextAlign.center,
              )),
          const SizedBox(
            height: 30,
          ),
          Wrap(
            spacing: 15,
            runSpacing: 15,
            children: [
              ...citiesCard.map((item) => Stack(children: [
                    Container(
                      height: 80,
                      width: 120,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: DecorationImage(
                              image: AssetImage(item['url']!),
                              fit: BoxFit.cover,
                              colorFilter: ColorFilter.mode(
                                  Colors.black.withOpacity(0.4),
                                  BlendMode.darken))),
                    ),
                    Positioned(
                        bottom: 10,
                        left: 0,
                        right: 0,
                        child: Text(
                          item['city']!,
                          style: const TextStyle(
                              color: Colors.white, fontSize: 14),
                          textAlign: TextAlign.center,
                        ))
                  ]))
            ],
          ),
          const SizedBox(
            height: 30,
          )
        ],
      ),
    );
  }
}

class TopicSection extends StatelessWidget {
  const TopicSection({super.key, required this.topic});
  final String topic;

  @override
  Widget build(BuildContext context) {
    bool isDesktop = MediaQuery.of(context).size.width > 950;

    return Container(
      decoration: BoxDecoration(
          border: isDesktop
              ? null
              : const Border(
                  bottom: BorderSide(color: Colors.grey, width: 0.2))),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            topic,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          const Text('>', style: TextStyle(fontSize: 18))
        ],
      ),
    ).showCursorOnHover;
  }
}
