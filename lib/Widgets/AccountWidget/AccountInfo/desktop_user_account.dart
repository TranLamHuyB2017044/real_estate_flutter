import 'dart:convert';

import 'package:autoscale_tabbarview/autoscale_tabbarview.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_real_estate/Widgets/FooterWidget/footer.dart';
import 'package:my_real_estate/extensions/hover_extension.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DesktopUserAccount extends StatefulWidget {
  const DesktopUserAccount({super.key});

  @override
  State<DesktopUserAccount> createState() => _DesktopUserAccountState();
}

class _DesktopUserAccountState extends State<DesktopUserAccount> {
  User? OAuthLogin = FirebaseAuth.instance.currentUser;
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  Map<String, dynamic> userInfo = {};

  Future<void> getUserInfo() async {
    final SharedPreferences prefs = await _prefs;
    String? userLogin = prefs.getString('userInfo');
    if (userLogin != null) {
      setState(() {
        userInfo = jsonDecode(userLogin);
      });
    }
  }

  @override
  void initState() {
    getUserInfo();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    bool isBigTablet = MediaQuery.of(context).size.width >= 950 &&
        MediaQuery.of(context).size.width <= 1430;
    return ListView(
      children: [
        Container(
          height: 200,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage('/assets/images/user-profile-ava.png'),
                  fit: BoxFit.cover)),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: isBigTablet ? 50 : 150),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 50,
                          backgroundImage: NetworkImage(OAuthLogin == null
                              ? 'assets/images/tomcat.jpg'
                              : '${OAuthLogin!.photoURL}'),
                        ),
                        const SizedBox(width: 20),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              OAuthLogin != null
                                  ? '${OAuthLogin!.displayName}'
                                  : '${userInfo['fullname']}',
                              style: const TextStyle(fontSize: 20),
                            ),
                            const Text(
                              'Professional Agent',
                              style: TextStyle(color: Colors.grey),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    const Row(
                      children: [
                        Icon(
                          Icons.confirmation_num_outlined,
                          size: 20,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Certificate Agent',
                          style: TextStyle(color: Colors.black54, fontSize: 16),
                        )
                      ],
                    ),
                    const Row(
                      children: [
                        Icon(
                          Icons.description_outlined,
                          size: 20,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          '20 posts',
                          style: TextStyle(color: Colors.black54, fontSize: 16),
                        )
                      ],
                    ),
                    const Row(
                      children: [
                        Icon(
                          Icons.remove_red_eye_outlined,
                          size: 20,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          '12.700+ post views',
                          style: TextStyle(color: Colors.black54, fontSize: 16),
                        )
                      ],
                    ),
                    const Row(
                      children: [
                        Icon(
                          Icons.calendar_month,
                          size: 20,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Member since: 12.05.2013',
                          style: TextStyle(color: Colors.black54, fontSize: 16),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Share my contact:',
                          style: TextStyle(fontSize: 16),
                        ),
                        const SizedBox(height: 30),
                        Row(
                          children: [
                            const Icon(
                              Icons.facebook,
                              size: 35,
                              color: Colors.blue,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Image.asset(
                              'assets/images/zalo.jpg',
                              width: 35,
                              height: 35,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Icon(
                              Icons.share,
                              size: 35,
                            )
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                  flex: isBigTablet ? 2 : 3,
                  child: const DefaultTabController(
                      length: 2,
                      child: Column(children: [
                        Center(
                          child: TabBar(
                            indicatorColor: Colors.blue,
                            labelColor: Colors.blue,
                            tabs: [
                              Tab(text: 'Sale Posts (55)'),
                              Tab(text: 'Rent Posts (10)'),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        AutoScaleTabBarView(children: [
                          ListSalePropertyDesktop(),
                          ListRentPropertyDesktop(),
                        ]),
                        SizedBox(height: 30),
                        PageSplit(),
                      ])))
            ],
          ),
        ),
        const SizedBox(height: 100),
        const Footer()
      ],
    );
  }
}

class PropertyCardDesktop extends StatelessWidget {
  const PropertyCardDesktop(
      {super.key,
      required this.url,
      required this.nameAparment,
      required this.address,
      required this.price,
      required this.maxWidth});
  final double maxWidth;
  final String nameAparment;
  final String url;
  final String address;
  final String price;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.goNamed('Detail Page');
      },
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: maxWidth,
          ),
          child: Stack(
            children: [
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: maxWidth,
                        height: 150,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(url),
                            ),
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(3),
                                topRight: Radius.circular(3))),
                      ),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(15, 0, 0, 30),
                          width: maxWidth,
                          decoration:
                              const BoxDecoration(color: Colors.black45),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                nameAparment,
                                style: const TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                              Text(address,
                                  style: const TextStyle(
                                      color: Colors.white70, fontSize: 14)),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    width: maxWidth,
                    color: Colors.white,
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Area',
                              style: TextStyle(color: Colors.black45),
                            ),
                            Text(
                              '325m²',
                              style: TextStyle(color: Colors.black),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Bedrooms',
                                style: TextStyle(color: Colors.black45),
                              ),
                              Text(
                                '2',
                                style: TextStyle(color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Bathrooms',
                              style: TextStyle(color: Colors.black45),
                            ),
                            Text(
                              '1',
                              style: TextStyle(color: Colors.black),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 2),
                    decoration: const BoxDecoration(
                      border: Border(
                        top: BorderSide(color: Colors.grey, width: 0.5),
                      ),
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(3),
                          bottomLeft: Radius.circular(3)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          offset: Offset(
                            5.0,
                            5.0,
                          ),
                          blurRadius: 10.0,
                          spreadRadius: 2.0,
                        ),
                        BoxShadow(
                          color: Colors.white,
                          offset: Offset(0.0, 0.0),
                          blurRadius: 0.0,
                          spreadRadius: 0.0,
                        ),
                      ],
                    ),
                    width: maxWidth,
                    height: 30,
                    child: RichText(
                      text: const TextSpan(
                          text: 'DETAIL',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w100),
                          children: [
                            TextSpan(
                                text: '  >',
                                style:
                                    TextStyle(color: Colors.blue, fontSize: 20))
                          ]),
                    ),
                  ),
                ],
              ),
              Positioned(
                left: 20,
                bottom: 100,
                top: 130,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      color: Colors.white,
                      border: Border.all(color: Colors.black12, width: 0.2),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(
                            5.0,
                            5.0,
                          ),
                          blurRadius: 10.0,
                          spreadRadius: 2.0,
                        ),
                        BoxShadow(
                          color: Colors.white,
                          offset: Offset(0.0, 0.0),
                          blurRadius: 0.0,
                          spreadRadius: 0.0,
                        ),
                      ]),
                  padding:
                      const EdgeInsets.symmetric(vertical: 4, horizontal: 16),
                  child: Text(
                    price,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
              )
            ],
          ),
        ),
      ).showCursorOnHover,
    );
  }
}

class ListSalePropertyDesktop extends StatelessWidget {
  const ListSalePropertyDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    List<PropertyCardDesktop> propertycardDesktops = [
      const PropertyCardDesktop(
          url: 'assets/images/img-detail-01.jpg',
          nameAparment: 'Vinhomes Smart',
          address: '📍 1350 Arbutus Drive',
          price: '\$45,900',
          maxWidth: 220),
      const PropertyCardDesktop(
        nameAparment: 'Big luxury Apartment',
        address: '📍 1350 Arbutus Drive',
        url: 'assets/images/property1.jpg',
        price: '\$350,000',
        maxWidth: 220,
      ),
      const PropertyCardDesktop(
        nameAparment: 'Cozy Design Studio',
        address: '📍 4831 Worthington Drive',
        url: 'assets/images/property2.jpg',
        price: '\$125,000',
        maxWidth: 220,
      ),
      const PropertyCardDesktop(
        nameAparment: 'Family Vila',
        address: '📍 4127 Winding Way',
        url: 'assets/images/property3.jpg',
        price: '\$45,900',
        maxWidth: 220,
      ),
      const PropertyCardDesktop(
        nameAparment: 'Family Vila',
        address: '📍 4127 Winding Way',
        url: 'assets/images/img-detail-03.jpg',
        price: '\$45,900',
        maxWidth: 220,
      ),
      const PropertyCardDesktop(
        nameAparment: 'Family Vila',
        address: '📍 4127 Winding Way',
        url: 'assets/images/img-detail-04.jpg',
        price: '\$45,900',
        maxWidth: 220,
      ),
      const PropertyCardDesktop(
        nameAparment: 'Family Vila',
        address: '📍 4127 Winding Way',
        url: 'assets/images/img-detail-05.jpg',
        price: '\$45,900',
        maxWidth: 220,
      ),
      const PropertyCardDesktop(
          url: 'assets/images/img-detail-01.jpg',
          nameAparment: 'Vinhomes Smart',
          address: '📍 1350 Arbutus Drive',
          price: '\$45,900',
          maxWidth: 220),
      const PropertyCardDesktop(
        nameAparment: 'Big luxury Apartment',
        address: '📍 1350 Arbutus Drive',
        url: 'assets/images/property1.jpg',
        price: '\$350,000',
        maxWidth: 220,
      ),
    ];
    return Wrap(
      children: [...propertycardDesktops],
    );
  }
}

class ListRentPropertyDesktop extends StatelessWidget {
  const ListRentPropertyDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    List<PropertyCardDesktop> propertycardDesktops = [
      const PropertyCardDesktop(
          url: 'assets/images/img-detail-01.jpg',
          nameAparment: 'Vinhomes Smart',
          address: '📍 1350 Arbutus Drive',
          price: '\$45,900',
          maxWidth: 220),
      const PropertyCardDesktop(
        nameAparment: 'Big luxury Apartment',
        address: '📍 1350 Arbutus Drive',
        url: 'assets/images/property1.jpg',
        price: '\$350,000',
        maxWidth: 220,
      ),
      const PropertyCardDesktop(
        nameAparment: 'Cozy Design Studio',
        address: '📍 4831 Worthington Drive',
        url: 'assets/images/property2.jpg',
        price: '\$125,000',
        maxWidth: 220,
      ),
      const PropertyCardDesktop(
        nameAparment: 'Family Vila',
        address: '📍 4127 Winding Way',
        url: 'assets/images/property3.jpg',
        price: '\$45,900',
        maxWidth: 220,
      ),
      const PropertyCardDesktop(
        nameAparment: 'Family Vila',
        address: '📍 4127 Winding Way',
        url: 'assets/images/img-detail-03.jpg',
        price: '\$45,900',
        maxWidth: 220,
      ),
      const PropertyCardDesktop(
        nameAparment: 'Family Vila',
        address: '📍 4127 Winding Way',
        url: 'assets/images/img-detail-04.jpg',
        price: '\$45,900',
        maxWidth: 220,
      ),
      const PropertyCardDesktop(
        nameAparment: 'Family Vila',
        address: '📍 4127 Winding Way',
        url: 'assets/images/img-detail-05.jpg',
        price: '\$45,900',
        maxWidth: 220,
      )
    ];
    return Wrap(
      children: [...propertycardDesktops],
    );
  }
}

class PageSplit extends StatelessWidget {
  const PageSplit({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            decoration: const BoxDecoration(color: Color(0xff0468d7)),
            child: const Text(
              '1',
              style: TextStyle(color: Colors.white, fontSize: 16),
            )).showCursorOnHover,
        const SizedBox(width: 20),
        GestureDetector(
          child: const Text(
            '2',
            style: TextStyle(fontSize: 16),
          ),
        ).showCursorOnHover,
        const SizedBox(width: 20),
        GestureDetector(
          child: const Text(
            '3',
            style: TextStyle(fontSize: 16),
          ),
        ).showCursorOnHover,
        const SizedBox(width: 20),
        GestureDetector(
          child: const Text(
            'Next',
            style: TextStyle(fontSize: 16),
          ),
        ).showCursorOnHover,
      ],
    );
  }
}
