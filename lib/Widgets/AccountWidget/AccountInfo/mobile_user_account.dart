import 'dart:convert';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:my_real_estate/Widgets/AccountWidget/AccountInfo/desktop_user_account.dart';
import 'package:my_real_estate/Widgets/FooterWidget/footer.dart';
import 'package:my_real_estate/Widgets/PropertyCardWidget/property_card.dart';
import 'package:autoscale_tabbarview/autoscale_tabbarview.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MobileUserAccount extends StatefulWidget {
  const MobileUserAccount({super.key});

  @override
  State<MobileUserAccount> createState() => _MobileUserAccountState();
}

class _MobileUserAccountState extends State<MobileUserAccount> {
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
    return DefaultTabController(
      length: 2,
      child: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Container(
                  height: 130,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'assets/images/user-profile-ava.png'),
                          fit: BoxFit.cover)),
                ),
                const SizedBox(
                  height: 20,
                ),
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
                    )
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
                  height: 30,
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Share my contact:',
                      style: TextStyle(fontSize: 16),
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.facebook,
                          size: 25,
                          color: Colors.blue,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Image.asset(
                          'assets/images/zalo.jpg',
                          width: 25,
                          height: 25,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Icon(
                          Icons.share,
                          size: 25,
                        )
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                OutlinedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor:
                        const WidgetStatePropertyAll<Color>(Colors.transparent),
                    shape: WidgetStateProperty.all<OutlinedBorder>(
                      const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(4.0)),
                      ),
                    ),
                    side: WidgetStateProperty.all<BorderSide>(
                      const BorderSide(
                        color: Colors.black54,
                      ),
                    ),
                    padding: WidgetStateProperty.all<EdgeInsetsGeometry>(
                        const EdgeInsets.symmetric(
                            horizontal: 40.0, vertical: 10)),
                  ),
                  child: const Text(
                    'All properties (60)',
                    style: TextStyle(color: Colors.black54, fontSize: 14),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
          const Center(
            child: TabBar(
              indicatorColor: Colors.blue,
              labelColor: Colors.blue,
              tabs: [
                Tab(text: 'Sale Posts (55)'),
                Tab(text: 'Rent Posts (10)'),
              ],
            ),
          ),
          const AutoScaleTabBarView(children: [
            ListSaleProperty(),
            ListRentProperty(),
          ]),
          const SizedBox(height: 30),
          const PageSplit(),
          const SizedBox(height: 100),
          const Footer()
        ],
      ),
    );
  }
}

class ListSaleProperty extends StatelessWidget {
  const ListSaleProperty({super.key});

  @override
  Widget build(BuildContext context) {
    List<PropertyCard> propertycards = [
      const PropertyCard(
          url: 'assets/images/img-detail-01.jpg',
          nameAparment: 'Vinhomes Smart',
          address: '📍 1350 Arbutus Drive',
          price: '\$45,900',
          maxWidth: 369),
      const PropertyCard(
        nameAparment: 'Big luxury Apartment',
        address: '📍 1350 Arbutus Drive',
        url: 'assets/images/property1.jpg',
        price: '\$350,000',
        maxWidth: 369,
      ),
      const PropertyCard(
        nameAparment: 'Cozy Design Studio',
        address: '📍 4831 Worthington Drive',
        url: 'assets/images/property2.jpg',
        price: '\$125,000',
        maxWidth: 369,
      ),
      const PropertyCard(
        nameAparment: 'Family Vila',
        address: '📍 4127 Winding Way',
        url: 'assets/images/property3.jpg',
        price: '\$45,900',
        maxWidth: 369,
      ),
      const PropertyCard(
        nameAparment: 'Family Vila',
        address: '📍 4127 Winding Way',
        url: 'assets/images/img-detail-03.jpg',
        price: '\$45,900',
        maxWidth: 369,
      ),
      const PropertyCard(
        nameAparment: 'Family Vila',
        address: '📍 4127 Winding Way',
        url: 'assets/images/img-detail-04.jpg',
        price: '\$45,900',
        maxWidth: 369,
      ),
      const PropertyCard(
        nameAparment: 'Family Vila',
        address: '📍 4127 Winding Way',
        url: 'assets/images/img-detail-05.jpg',
        price: '\$45,900',
        maxWidth: 369,
      )
    ];
    return Column(
      children: [...propertycards],
    );
  }
}

class ListRentProperty extends StatelessWidget {
  const ListRentProperty({super.key});

  @override
  Widget build(BuildContext context) {
    List<PropertyCard> propertycards = [
      const PropertyCard(
        nameAparment: 'Cozy Design Studio',
        address: '📍 4831 Worthington Drive',
        url: 'assets/images/property2.jpg',
        price: '\$125,000',
        maxWidth: 369,
      ),
      const PropertyCard(
        nameAparment: 'Family Vila',
        address: '📍 4127 Winding Way',
        url: 'assets/images/property3.jpg',
        price: '\$45,900',
        maxWidth: 369,
      ),
      const PropertyCard(
        nameAparment: 'Family Vila',
        address: '📍 4127 Winding Way',
        url: 'assets/images/img-detail-03.jpg',
        price: '\$45,900',
        maxWidth: 369,
      ),
      const PropertyCard(
        nameAparment: 'Family Vila',
        address: '📍 4127 Winding Way',
        url: 'assets/images/img-detail-04.jpg',
        price: '\$45,900',
        maxWidth: 369,
      ),
      const PropertyCard(
        nameAparment: 'Family Vila',
        address: '📍 4127 Winding Way',
        url: 'assets/images/img-detail-05.jpg',
        price: '\$45,900',
        maxWidth: 369,
      )
    ];
    return Column(
      children: [...propertycards],
    );
  }
}
