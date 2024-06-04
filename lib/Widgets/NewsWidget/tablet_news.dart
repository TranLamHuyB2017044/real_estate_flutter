import 'package:flutter/material.dart';
import 'package:my_real_estate/Widgets/FooterWidget/footer.dart';
import 'package:my_real_estate/Widgets/NewsWidget/mobile_news.dart';

class TabletNews extends StatefulWidget {
  const TabletNews({super.key});

  @override
  State<TabletNews> createState() => _TabletNewsState();
}

class _TabletNewsState extends State<TabletNews> {
  @override
  Widget build(BuildContext context) {
    bool isBigTablet = MediaQuery.of(context).size.width > 768;
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
          padding: EdgeInsets.symmetric(horizontal: isBigTablet ? 100 : 15),
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
