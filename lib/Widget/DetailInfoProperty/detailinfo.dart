import 'package:flutter/material.dart';
import 'package:my_real_estate/Widget/DetailInfoProperty/detail_info_desktop.dart';
import 'package:my_real_estate/extensions/hover_extension.dart';
import 'detail_info_mobile.dart';
import 'detail_info_tablet.dart';
import 'package:responsive_builder/responsive_builder.dart';
import '../PropertyCardWidget/property_card.dart';

class DetailPropertyInfo extends StatelessWidget {
  const DetailPropertyInfo({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map> detailItems = [
      {'key': 'ID:', 'value': '#156461'},
      {'key': 'Category:', 'value': 'Apartments'},
      {'key': 'Status:', 'value': 'Sale'},
      {'key': 'Area:', 'value': '248m²'},
      {'key': 'Rooms:', 'value': '6'},
      {'key': 'Bathrooms:', 'value': '2'},
      {'key': 'Garages:', 'value': '1'},
    ];
    bool isMobile = MediaQuery.of(context).size.width < 600;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: isMobile ? 10 : 50),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Details',
            style: TextStyle(fontSize: 24, color: Colors.black54),
          ),
          const SizedBox(
            height: 35,
          ),
          Container(
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(3.0),
                boxShadow: const [
                  BoxShadow(
                      offset: Offset(0, 0),
                      blurRadius: 7,
                      spreadRadius: -1,
                      color: Colors.grey)
                ]),
            child: Column(
              children: [
                ...detailItems.map((item) => Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            item['key'],
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          Text(
                            item['value'],
                            style: const TextStyle(
                                fontSize: 16, color: Colors.black54),
                          )
                        ],
                      ),
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}

class QuickInfo extends StatelessWidget {
  const QuickInfo({super.key});

  @override
  Widget build(BuildContext context) {
    double isMobileWidth = MediaQuery.of(context).size.width;
    bool isTablet = MediaQuery.of(context).size.width >= 600 &&
        MediaQuery.of(context).size.width <= 950;
    bool isMobile = MediaQuery.of(context).size.width < 600;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: isTablet ? 50 : 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Quick Info',
            style: TextStyle(fontSize: 24, color: Colors.black54),
          ),
          const SizedBox(
            height: 35,
          ),
          Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(3.0),
                  boxShadow: const [
                    BoxShadow(
                        offset: Offset(0, 0),
                        blurRadius: 7,
                        spreadRadius: -1,
                        color: Colors.grey)
                  ]),
              child: isMobile
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          width: isMobileWidth,
                          height: 100,
                          decoration: const BoxDecoration(
                              border: Border(
                                  top: BorderSide(
                                      color: Colors.grey, width: 0.3)),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'assets/images/icon-quick-info-shower.png'),
                                  fit: BoxFit.contain)),
                          child: const Center(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Bathrooms',
                                  style: TextStyle(
                                      color: Colors.black54, fontSize: 14),
                                ),
                                Text(
                                  '2',
                                  style: TextStyle(fontSize: 20),
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: isMobileWidth,
                          height: 100,
                          decoration: const BoxDecoration(
                              border: Border(
                                  top: BorderSide(
                                      color: Colors.grey, width: 0.3)),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'assets/images/icon-quick-info-bed.png'),
                                  fit: BoxFit.contain)),
                          child: const Center(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Bedrooms',
                                  style: TextStyle(
                                      color: Colors.black54, fontSize: 14),
                                ),
                                Text(
                                  '3',
                                  style: TextStyle(fontSize: 20),
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: isMobileWidth,
                          height: 100,
                          decoration: const BoxDecoration(
                            border: Border(
                                top:
                                    BorderSide(color: Colors.grey, width: 0.3)),
                            image: DecorationImage(
                                image: NetworkImage(
                                    'assets/images/icon-quick-info-area.png'),
                                fit: BoxFit.contain),
                          ),
                          child: const Center(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Area',
                                  style: TextStyle(
                                      color: Colors.black54, fontSize: 14),
                                ),
                                Text(
                                  '248m²',
                                  style: TextStyle(fontSize: 20),
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: isMobileWidth,
                          height: 100,
                          decoration: const BoxDecoration(
                              border: Border(
                                  top: BorderSide(
                                      color: Colors.grey, width: 0.3)),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'assets/images/icon-quick-info-garages.png'),
                                  fit: BoxFit.contain)),
                          child: const Center(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Garages',
                                  style: TextStyle(
                                      color: Colors.black54, fontSize: 14),
                                ),
                                Text(
                                  '1',
                                  style: TextStyle(fontSize: 20),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    )
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Container(
                            width: isTablet ? 100 : 200,
                            height: isTablet ? 100 : 200,
                            decoration: const BoxDecoration(
                                border: Border(
                                    right: BorderSide(
                                        color: Colors.grey, width: 0.3)),
                                image: DecorationImage(
                                    image: NetworkImage(
                                        'assets/images/icon-quick-info-shower.png'),
                                    fit: BoxFit.cover)),
                            child: const Center(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Bathrooms',
                                    style: TextStyle(
                                        color: Colors.black54, fontSize: 14),
                                  ),
                                  Text(
                                    '2',
                                    style: TextStyle(fontSize: 20),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            width: isTablet ? 100 : 200,
                            height: isTablet ? 100 : 200,
                            decoration: const BoxDecoration(
                                border: Border(
                                    right: BorderSide(
                                        color: Colors.grey, width: 0.3)),
                                image: DecorationImage(
                                    image: NetworkImage(
                                        'assets/images/icon-quick-info-bed.png'),
                                    fit: BoxFit.cover)),
                            child: const Center(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Bedrooms',
                                    style: TextStyle(
                                        color: Colors.black54, fontSize: 14),
                                  ),
                                  Text(
                                    '3',
                                    style: TextStyle(fontSize: 20),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            width: isTablet ? 100 : 200,
                            height: isTablet ? 100 : 200,
                            decoration: const BoxDecoration(
                              border: Border(
                                  right: BorderSide(
                                      color: Colors.grey, width: 0.3)),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'assets/images/icon-quick-info-area.png'),
                                  fit: BoxFit.cover),
                            ),
                            child: const Center(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Area',
                                    style: TextStyle(
                                        color: Colors.black54, fontSize: 14),
                                  ),
                                  Text(
                                    '248m²',
                                    style: TextStyle(fontSize: 20),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            width: isTablet ? 100 : 200,
                            height: isTablet ? 100 : 200,
                            decoration: const BoxDecoration(
                                border: Border(
                                    right: BorderSide(
                                        color: Colors.grey, width: 0.3)),
                                image: DecorationImage(
                                    image: NetworkImage(
                                        'assets/images/icon-quick-info-garages.png'),
                                    fit: BoxFit.cover)),
                            child: const Center(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Garages',
                                    style: TextStyle(
                                        color: Colors.black54, fontSize: 14),
                                  ),
                                  Text(
                                    '1',
                                    style: TextStyle(fontSize: 20),
                                  )
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ))
        ],
      ),
    );
  }
}

class Description extends StatelessWidget {
  const Description({super.key});

  @override
  Widget build(BuildContext context) {
    bool isTablet = MediaQuery.of(context).size.width >= 600 &&
        MediaQuery.of(context).size.width <= 950;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: isTablet ? 50 : 10),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Description',
            style: TextStyle(fontSize: 24, color: Colors.black54),
          ),
          SizedBox(
            height: 35,
          ),
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In dictum ac augue et suscipit. Vivamus ac tellus ut massa bibendum aliquam vitae ac diam. Aenean in enim volutpat, accumsan erat non, porta massa. Nulla ac porta orci. Quisque condimentum fermentum isl, lacinia tempor erat venenatis non. Integer ut malesuada est, nec pulvinar magna. Vestibulum tincidunt malesuada mi eget mattis. Phasellus quis purus porta, auctor dolor sed, eleifend tortor. Vestibulum placerat tristique turpis, eu suscipit nulla elementum porttitor. Duis eu varius libero.',
            style: TextStyle(color: Colors.black45),
          )
        ],
      ),
    );
  }
}

class Features extends StatelessWidget {
  const Features({super.key});

  @override
  Widget build(BuildContext context) {
    bool isTablet = MediaQuery.of(context).size.width >= 600 &&
        MediaQuery.of(context).size.width <= 1000;
    bool isMobile = MediaQuery.of(context).size.width < 600;
    return Container(
        padding: EdgeInsets.symmetric(horizontal: isTablet ? 50 : 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Features',
              style: TextStyle(fontSize: 24, color: Colors.black54),
            ),
            const SizedBox(height: 35),
            isMobile
                ? Column(
                    children: [
                      ListTile(
                        title: Row(
                          children: [
                            Image.asset(
                              'assets/images/icon-bell.png',
                              width: 15,
                              height: 15,
                              color: Colors.black54,
                            ),
                            const SizedBox(width: 10),
                            const Text('Door Bell',
                                style: TextStyle(
                                    color: Colors.black54, fontSize: 16))
                          ],
                        ),
                        onTap: () {},
                      ),
                      ListTile(
                        title: const Row(
                          children: [
                            Icon(
                              Icons.wifi,
                              color: Colors.black54,
                              size: 15,
                            ),
                            SizedBox(width: 10),
                            Text('Wi-Fi',
                                style: TextStyle(
                                    color: Colors.black54, fontSize: 16))
                          ],
                        ),
                        onTap: () {},
                      ),
                      ListTile(
                        title: Row(
                          children: [
                            Image.asset(
                              'assets/images/icon-utensil.png',
                              width: 15,
                              height: 15,
                              color: Colors.black54,
                            ),
                            const SizedBox(width: 10),
                            const Text('Restaurant nearby',
                                style: TextStyle(
                                    color: Colors.black54, fontSize: 16))
                          ],
                        ),
                        onTap: () {},
                      ),
                      ListTile(
                        title: Row(
                          children: [
                            Image.asset(
                              'assets/images/icon-plug.png',
                              width: 15,
                              height: 15,
                              color: Colors.black54,
                            ),
                            const SizedBox(width: 10),
                            const Text('230V Plugs',
                                style: TextStyle(
                                    color: Colors.black54, fontSize: 16))
                          ],
                        ),
                        onTap: () {},
                      ),
                      ListTile(
                        title: Row(
                          children: [
                            Image.asset(
                              'assets/images/icon-wheelchair.png',
                              width: 15,
                              height: 15,
                              color: Colors.black54,
                            ),
                            const SizedBox(width: 10),
                            const Text('Accessible',
                                style: TextStyle(
                                    color: Colors.black54, fontSize: 16))
                          ],
                        ),
                        onTap: () {},
                      ),
                      ListTile(
                        title: const Row(
                          children: [
                            Icon(
                              Icons.phone,
                              color: Colors.black54,
                              size: 15,
                            ),
                            SizedBox(width: 10),
                            Text('Phone',
                                style: TextStyle(
                                    color: Colors.black54, fontSize: 16))
                          ],
                        ),
                        onTap: () {},
                      ),
                      ListTile(
                        title: const Row(
                          children: [
                            Icon(
                              Icons.directions_train,
                              color: Colors.black54,
                              size: 15,
                            ),
                            SizedBox(width: 10),
                            Text('Train Station',
                                style: TextStyle(
                                    color: Colors.black54, fontSize: 16))
                          ],
                        ),
                        onTap: () {},
                      ),
                      ListTile(
                        title: Row(
                          children: [
                            Image.asset(
                              'assets/images/icon-key.png',
                              width: 15,
                              height: 15,
                              color: Colors.black54,
                            ),
                            const SizedBox(width: 10),
                            const Text('Secure Key',
                                style: TextStyle(
                                    color: Colors.black54, fontSize: 16))
                          ],
                        ),
                        onTap: () {},
                      ),
                    ],
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            ListTile(
                              title: Row(
                                children: [
                                  Image.asset(
                                    'assets/images/icon-bell.png',
                                    width: 15,
                                    height: 15,
                                    color: Colors.black54,
                                  ),
                                  const SizedBox(width: 10),
                                  const Text('Door Bell',
                                      style: TextStyle(
                                          color: Colors.black54, fontSize: 16))
                                ],
                              ),
                              onTap: () {},
                            ),
                            ListTile(
                              title: const Row(
                                children: [
                                  Icon(
                                    Icons.wifi,
                                    color: Colors.black54,
                                    size: 15,
                                  ),
                                  SizedBox(width: 10),
                                  Text('Wi-Fi',
                                      style: TextStyle(
                                          color: Colors.black54, fontSize: 16))
                                ],
                              ),
                              onTap: () {},
                            ),
                            ListTile(
                              title: Row(
                                children: [
                                  Image.asset(
                                    'assets/images/icon-utensil.png',
                                    width: 15,
                                    height: 15,
                                    color: Colors.black54,
                                  ),
                                  const SizedBox(width: 10),
                                  const Text('Restaurant nearby',
                                      style: TextStyle(
                                          color: Colors.black54, fontSize: 16))
                                ],
                              ),
                              onTap: () {},
                            ),
                            ListTile(
                              title: Row(
                                children: [
                                  Image.asset(
                                    'assets/images/icon-plug.png',
                                    width: 15,
                                    height: 15,
                                    color: Colors.black54,
                                  ),
                                  const SizedBox(width: 10),
                                  const Text('230V Plugs',
                                      style: TextStyle(
                                          color: Colors.black54, fontSize: 16))
                                ],
                              ),
                              onTap: () {},
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            ListTile(
                              title: Row(
                                children: [
                                  Image.asset(
                                    'assets/images/icon-wheelchair.png',
                                    width: 15,
                                    height: 15,
                                    color: Colors.black54,
                                  ),
                                  const SizedBox(width: 10),
                                  const Text('Accessible',
                                      style: TextStyle(
                                          color: Colors.black54, fontSize: 16))
                                ],
                              ),
                              onTap: () {},
                            ),
                            ListTile(
                              title: const Row(
                                children: [
                                  Icon(
                                    Icons.phone,
                                    color: Colors.black54,
                                    size: 15,
                                  ),
                                  SizedBox(width: 10),
                                  Text('Phone',
                                      style: TextStyle(
                                          color: Colors.black54, fontSize: 16))
                                ],
                              ),
                              onTap: () {},
                            ),
                            ListTile(
                              title: const Row(
                                children: [
                                  Icon(
                                    Icons.directions_train,
                                    color: Colors.black54,
                                    size: 15,
                                  ),
                                  SizedBox(width: 10),
                                  Text('Train Station',
                                      style: TextStyle(
                                          color: Colors.black54, fontSize: 16))
                                ],
                              ),
                              onTap: () {},
                            ),
                            ListTile(
                              title: Row(
                                children: [
                                  Image.asset(
                                    'assets/images/icon-key.png',
                                    width: 15,
                                    height: 15,
                                    color: Colors.black54,
                                  ),
                                  const SizedBox(width: 10),
                                  const Text('Secure Key',
                                      style: TextStyle(
                                          color: Colors.black54, fontSize: 16))
                                ],
                              ),
                              onTap: () {},
                            ),
                          ],
                        ),
                      )
                    ],
                  )
          ],
        ));
  }
}

class Amenities extends StatelessWidget {
  const Amenities({super.key});

  @override
  Widget build(BuildContext context) {
    bool isTablet = MediaQuery.of(context).size.width >= 600 &&
        MediaQuery.of(context).size.width <= 1200;
    bool isMobile = MediaQuery.of(context).size.width < 600;
    List<String> amenities = [
      'Air Conditioning',
      'Swimming Pool',
      'Central Heating',
      'Laundry Room',
      'Gym',
      'Alarm',
      'Window Covering',
      'Internet'
    ];

    return Container(
        padding: EdgeInsets.symmetric(horizontal: isTablet ? 50 : 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Amenities',
              style: TextStyle(fontSize: 24, color: Colors.black54),
            ),
            const SizedBox(height: 35),
            isMobile
                ? Column(
                    children: [
                      ...amenities.map((amenity) => ListTile(
                            title: Row(
                              children: [
                                Container(
                                  width: 7,
                                  height: 7,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xff0000ff),
                                  ),
                                ),
                                const SizedBox(width: 10),
                                Text(amenity,
                                    style: const TextStyle(
                                        color: Colors.black54, fontSize: 16))
                              ],
                            ),
                            onTap: () {},
                          ))
                    ],
                  )
                : Row(
                    mainAxisAlignment: isTablet
                        ? MainAxisAlignment.spaceBetween
                        : MainAxisAlignment.start,
                    children: [
                      Container(
                        margin:
                            EdgeInsets.fromLTRB(0, 0, isTablet ? 0 : 200, 0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            for (int i = 0; i < 4; i++)
                              Row(
                                children: [
                                  Container(
                                    width: 7,
                                    height: 7,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color(0xff0000ff),
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  Text(amenities[i],
                                      style: TextStyle(
                                          color: Colors.black54,
                                          fontSize: isTablet ? 16 : 20))
                                ],
                              ),
                          ],
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          for (int i = 4; i < amenities.length; i++)
                            Row(
                              children: [
                                Container(
                                  width: 7,
                                  height: 7,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xff0000ff),
                                  ),
                                ),
                                const SizedBox(width: 10),
                                Text(amenities[i],
                                    style: TextStyle(
                                        color: Colors.black54,
                                        fontSize: isTablet ? 16 : 20))
                              ],
                            ),
                        ],
                      ),
                    ],
                  )
          ],
        ));
  }
}

class ContactAgent extends StatelessWidget {
  const ContactAgent({super.key});

  @override
  Widget build(BuildContext context) {
    bool isBigTablet = MediaQuery.of(context).size.width < 1540;
    bool isMobile = MediaQuery.of(context).size.width < 600;
    return Container(
      padding: EdgeInsets.all(isMobile ? 10.0 : 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Text(
            'Contact the Agent',
            style: TextStyle(fontSize: 24, color: Colors.black54),
          ),
          const SizedBox(
            height: 35,
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(3.0),
                boxShadow: const [
                  BoxShadow(
                      offset: Offset(0, 0),
                      blurRadius: 7,
                      spreadRadius: -1,
                      color: Colors.grey)
                ]),
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                isBigTablet
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: 100,
                            height: 100,
                            margin: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        'assets/images/gamtime.jpg'),
                                    fit: BoxFit.cover),
                                shape: BoxShape.circle),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'Tran Lam Huy',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Container(
                                margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                                child: const Wrap(
                                  children: [
                                    Icon(
                                      Icons.phone,
                                      color: Colors.black54,
                                      size: 20,
                                    ),
                                    Text(
                                      '+1 602-380-1472',
                                      style: TextStyle(color: Colors.black54),
                                    )
                                  ],
                                ),
                              )
                            ],
                          )
                        ],
                      )
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: 100,
                            height: 100,
                            margin: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        'assets/images/gamtime.jpg'),
                                    fit: BoxFit.cover),
                                shape: BoxShape.circle),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'Tran Lam Huy',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Container(
                                margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                                child: const Wrap(
                                  children: [
                                    Icon(
                                      Icons.phone,
                                      color: Colors.black54,
                                      size: 20,
                                    ),
                                    Text(
                                      '+1 602-380-1472',
                                      style: TextStyle(color: Colors.black54),
                                    )
                                  ],
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                Container(
                  height: 35,
                  margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: const TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Your Name',
                        contentPadding: EdgeInsets.fromLTRB(10, 10, 0, 0)),
                  ),
                ),
                Container(
                  height: 35,
                  margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: const TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Your Email',
                        contentPadding: EdgeInsets.fromLTRB(10, 10, 0, 0)),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: const TextField(
                    maxLines: 4,
                    decoration: InputDecoration(
                      hintText:
                          "Hi, I want to have more information about property #12393",
                      border: OutlineInputBorder(),
                      contentPadding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                        style: TextButton.styleFrom(
                            backgroundColor: const Color(0xff0000ff),
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(2.0))),
                            padding: const EdgeInsets.symmetric(
                                vertical: 14, horizontal: 16)),
                        onPressed: () {},
                        child: const Text('Send a Message',
                            style: TextStyle(color: Colors.white))),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Location extends StatelessWidget {
  const Location({super.key});

  @override
  Widget build(BuildContext context) {
    double fullWidth = MediaQuery.of(context).size.width;
    bool isMobile = MediaQuery.of(context).size.width < 600;
    bool isDesktop = MediaQuery.of(context).size.width > 950;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: isMobile ? 10.0 : 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Text(
            'Location',
            style: TextStyle(fontSize: 24, color: Colors.black54),
          ),
          const SizedBox(
            height: 25,
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(0, 0, 0, 20),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(3.0),
                boxShadow: const [
                  BoxShadow(
                      offset: Offset(0, 0),
                      blurRadius: 7,
                      spreadRadius: -1,
                      color: Colors.grey)
                ]),
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.place,
                            color: Colors.black54,
                          ),
                          Text(
                            ' Address:',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      Text(
                        '1350, Arbutus Drive, LD',
                        style: TextStyle(color: Colors.black54),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  decoration: const BoxDecoration(
                      border: Border(
                          top: BorderSide(color: Colors.grey, width: 0.3))),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.phone,
                            color: Colors.black54,
                          ),
                          Text(
                            ' Phone:',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      Text(
                        '+1 602-232-1233',
                        style: TextStyle(color: Colors.black54),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  decoration: const BoxDecoration(
                      border: Border(
                          top: BorderSide(color: Colors.grey, width: 0.3))),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.email,
                            color: Colors.black54,
                          ),
                          Text(
                            ' Email:',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      Text(
                        'tlhuy02@gmail.com',
                        style: TextStyle(color: Colors.black54),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  decoration: const BoxDecoration(
                      border: Border(
                          top: BorderSide(color: Colors.grey, width: 0.3))),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.social_distance,
                            color: Colors.black54,
                          ),
                          Text(
                            ' Contact:',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      Text(
                        'www.myrealestate.com',
                        style: TextStyle(color: Colors.black54),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: isDesktop ? 60 : fullWidth * 0.2,
                height: 40,
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(3.0),
                    boxShadow: const [
                      BoxShadow(
                          offset: Offset(0, 0),
                          blurRadius: 7,
                          spreadRadius: -1,
                          color: Colors.grey)
                    ]),
                child: Image.asset(
                  'assets/images/bookmark.png',
                  width: isDesktop ? 70 : fullWidth * 0.2,
                  height: 10,
                ),
              ),
              Container(
                width: isDesktop ? 70 : fullWidth * 0.2,
                height: 40,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(3.0),
                    boxShadow: const [
                      BoxShadow(
                          offset: Offset(0, 0),
                          blurRadius: 7,
                          spreadRadius: -1,
                          color: Colors.grey)
                    ]),
                child: const Icon(Icons.print),
              ),
              Container(
                width: isDesktop ? 70 : fullWidth * 0.2,
                height: 40,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(3.0),
                    boxShadow: const [
                      BoxShadow(
                          offset: Offset(0, 0),
                          blurRadius: 7,
                          spreadRadius: -1,
                          color: Colors.grey)
                    ]),
                child: const Icon(Icons.warning_amber_outlined),
              ),
              Container(
                width: isDesktop ? 70 : fullWidth * 0.2,
                height: 40,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(3.0),
                    boxShadow: const [
                      BoxShadow(
                          offset: Offset(0, 0),
                          blurRadius: 7,
                          spreadRadius: -1,
                          color: Colors.grey)
                    ]),
                child: const Icon(Icons.share),
              )
            ],
          )
        ],
      ),
    );
  }
}

class SimilarProperty extends StatelessWidget {
  const SimilarProperty({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDesktop = MediaQuery.of(context).size.width > 950;
    return Center(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: isDesktop
            ? const Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SimilarCardDesktop(
                    url: 'assets/images/property1.jpg',
                    property_name: 'Big Luxury Apartment',
                    area: '248m²',
                    num_bed: '2',
                    num_bath: '1',
                    address: '123 street, san Francisco, CA',
                  ),
                  SimilarCardDesktop(
                    url: 'assets/images/property2.jpg',
                    property_name: 'Cozy Design Studio',
                    area: '348m²',
                    num_bed: '2',
                    num_bath: '1',
                    address: '123 street, san Francisco, CA',
                  ),
                  SimilarCardDesktop(
                    url: 'assets/images/property3.jpg',
                    property_name: 'Family Vila',
                    area: '328m²',
                    num_bed: '2',
                    num_bath: '1',
                    address: '123 street, san Francisco, CA',
                  ),
                  SimilarCardDesktop(
                    url: 'assets/images/img-detail-03.jpg',
                    property_name: 'Vila Millano',
                    area: '243m²',
                    num_bed: '2',
                    num_bath: '1',
                    address: '123 street, san Francisco, CA',
                  ),
                ],
              )
            : const Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  PropertyCard(
                    url: 'assets/images/property1.jpg',
                    nameAparment: 'Big Luxury Apartment',
                    price: '200,000\$',
                    maxWidth: 900,
                    address: '123 street, san Francisco, CA',
                  ),
                  PropertyCard(
                    url: 'assets/images/property2.jpg',
                    nameAparment: 'Family Vila',
                    price: '200,000\$',
                    maxWidth: 900,
                    address: '123 street, san Francisco, CA',
                  ),
                  PropertyCard(
                    url: 'assets/images/property3.jpg',
                    nameAparment: 'Cozy Design Studio',
                    price: '200,000\$',
                    maxWidth: 900,
                    address: '123 street, san Francisco, CA',
                  ),
                  PropertyCard(
                    url: 'assets/images/img-detail-03.jpg',
                    nameAparment: 'Vila Millano',
                    price: '200,000\$',
                    maxWidth: 900,
                    address: '123 street, san Francisco, CA',
                  ),
                ],
              ),
      ),
    );
  }
}

class DetailInfoLayout extends StatelessWidget {
  const DetailInfoLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
        mobile: (BuildContext context) => const DetailInfoMobile(),
        tablet: (BuildContext context) => const DetailInfoTablet(),
        desktop: (BuildContext context) => const DetailInfoDesktop());
  }
}

class SimilarCardDesktop extends StatelessWidget {
  const SimilarCardDesktop(
      {super.key,
      required this.url,
      required this.property_name,
      required this.area,
      required this.num_bed,
      required this.num_bath,
      required this.address});
  final String url;
  final String property_name;
  final String area;
  final String num_bed;
  final String num_bath;
  final String address;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
                offset: Offset(0, 0),
                blurRadius: 7,
                spreadRadius: -1,
                color: Colors.grey)
          ],
          borderRadius: BorderRadius.circular(4.0)),
      margin: const EdgeInsets.symmetric(vertical: 15),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            url,
            width: 200,
            height: 200,
            fit: BoxFit.fill,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            property_name,
                            style: const TextStyle(fontSize: 22),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.place,
                                  size: 20,
                                  color: Color(0xff7b7bfb),
                                ),
                                Opacity(
                                    opacity: 0.7,
                                    child: Text(
                                      address,
                                      style: const TextStyle(fontSize: 18),
                                    ))
                              ],
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text('Area',
                                  style: TextStyle(
                                      color: Colors.black54, fontSize: 13)),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 30.0),
                                child: Text('Bedrooms',
                                    style: TextStyle(
                                        color: Colors.black54, fontSize: 13)),
                              ),
                              Text('Bathrooms',
                                  style: TextStyle(
                                      color: Colors.black54, fontSize: 13)),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(area,
                                    style: const TextStyle(fontSize: 13)),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(40.0, 0, 80, 0),
                                  child: Text(num_bed,
                                      style: const TextStyle(fontSize: 13)),
                                ),
                                Text(num_bath,
                                    style: const TextStyle(fontSize: 13)),
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 246, 245, 245),
                      border: Border(
                          top: BorderSide(color: Colors.grey, width: 0.5))),
                  child: RichText(
                      text: const TextSpan(children: [
                    TextSpan(
                      text: '    DETAIL ',
                      style: TextStyle(fontSize: 13),
                    ),
                    TextSpan(
                        text: '   > ',
                        style: TextStyle(color: Colors.blue, fontSize: 16)),
                  ])),
                )
              ],
            ),
          )
        ],
      ),
    ).showCursorOnHover.moveUpOnHover;
  }
}

class RatingSection extends StatelessWidget {
  const RatingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
