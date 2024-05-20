import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../CarouselWidget/carousel.dart';
import '../FooterWidget/footer.dart';
import '../GoogleMapWidget/google_map.dart';
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
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Quick Info',
            style: TextStyle(fontSize: 24, color: Colors.black54),
          ),
          SizedBox(
            height: 35,
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(3.0),
                boxShadow: [
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
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          Text(
                            item['value'],
                            style:
                                TextStyle(fontSize: 16, color: Colors.black54),
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
        MediaQuery.of(context).size.width <= 1000;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Quick Info',
            style: TextStyle(fontSize: 24, color: Colors.black54),
          ),
          SizedBox(
            height: 35,
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(3.0),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 0),
                      blurRadius: 7,
                      spreadRadius: -1,
                      color: Colors.grey)
                ]),
            child: isTablet ? Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        border: Border(
                            right: BorderSide(color: Colors.grey, width: 0.3)),
                        image: DecorationImage(
                  
                            image: NetworkImage(
                                'assets/images/icon-quick-info-shower.png'),
                            fit: BoxFit.cover)),
                    child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Bathrooms',
                            style: TextStyle(color: Colors.black54, fontSize: 14),
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
                    width: isMobileWidth,
                    height: 100,
                    decoration: BoxDecoration(
                        border: Border(
                            right: BorderSide(color: Colors.grey, width: 0.3)),
                        image: DecorationImage(
                            image: NetworkImage(
                                'assets/images/icon-quick-info-bed.png'),
                            fit: BoxFit.contain)),
                    child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Bedrooms',
                            style: TextStyle(color: Colors.black54, fontSize: 14),
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
                    width: isMobileWidth,
                    height: 100,
                    decoration: BoxDecoration(
                      border:
                      Border(right: BorderSide(color: Colors.grey, width: 0.3)),
                      image: DecorationImage(
                          image: NetworkImage(
                              'assets/images/icon-quick-info-area.png'),
                          fit: BoxFit.contain),
                    ),
                    child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Area',
                            style: TextStyle(color: Colors.black54, fontSize: 14),
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
                    width: isMobileWidth,
                    height: 100,
                    decoration: BoxDecoration(
                        border: Border(
                            right: BorderSide(color: Colors.grey, width: 0.3)),
                        image: DecorationImage(
                            image: NetworkImage(
                                'assets/images/icon-quick-info-garages.png'),
                            fit: BoxFit.contain)),
                    child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Garages',
                            style: TextStyle(color: Colors.black54, fontSize: 14),
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
            ) :Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  width: isMobileWidth,
                  height: 100,
                  decoration: BoxDecoration(
                      border: Border(
                          top: BorderSide(color: Colors.grey, width: 0.3)),
                      image: DecorationImage(
                          image: NetworkImage(
                              'assets/images/icon-quick-info-shower.png'),
                          fit: BoxFit.contain)),
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Bathrooms',
                          style: TextStyle(color: Colors.black54, fontSize: 14),
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
                  decoration: BoxDecoration(
                      border: Border(
                          top: BorderSide(color: Colors.grey, width: 0.3)),
                      image: DecorationImage(
                          image: NetworkImage(
                              'assets/images/icon-quick-info-bed.png'),
                          fit: BoxFit.contain)),
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Bedrooms',
                          style: TextStyle(color: Colors.black54, fontSize: 14),
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
                  decoration: BoxDecoration(
                    border:
                        Border(top: BorderSide(color: Colors.grey, width: 0.3)),
                    image: DecorationImage(
                        image: NetworkImage(
                            'assets/images/icon-quick-info-area.png'),
                        fit: BoxFit.contain),
                  ),
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Area',
                          style: TextStyle(color: Colors.black54, fontSize: 14),
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
                  decoration: BoxDecoration(
                      border: Border(
                          top: BorderSide(color: Colors.grey, width: 0.3)),
                      image: DecorationImage(
                          image: NetworkImage(
                              'assets/images/icon-quick-info-garages.png'),
                          fit: BoxFit.contain)),
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Garages',
                          style: TextStyle(color: Colors.black54, fontSize: 14),
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
            ),
          )
        ],
      ),
    );
  }
}

class Description extends StatelessWidget {
  const Description({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
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
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Features',
              style: TextStyle(fontSize: 24, color: Colors.black54),
            ),
            SizedBox(height: 35),
            isTablet ? Row(
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
                           SizedBox(width: 10),
                           Text('Door Bell',
                               style: TextStyle(color: Colors.black54, fontSize: 16))
                         ],
                       ),
                       onTap: () {},
                     ),
                     ListTile(
                       title: Row(
                         children: [
                           Icon(
                             Icons.wifi,
                             color: Colors.black54,
                             size: 15,
                           ),
                           SizedBox(width: 10),
                           Text('Wi-Fi',
                               style: TextStyle(color: Colors.black54, fontSize: 16))
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
                           SizedBox(width: 10),
                           Text('Restaurant nearby',
                               style: TextStyle(color: Colors.black54, fontSize: 16))
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
                           SizedBox(width: 10),
                           Text('230V Plugs',
                               style: TextStyle(color: Colors.black54, fontSize: 16))
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
                            SizedBox(width: 10),
                            Text('Accessible',
                                style: TextStyle(color: Colors.black54, fontSize: 16))
                          ],
                        ),
                        onTap: () {},
                      ),
                      ListTile(
                        title: Row(
                          children: [
                            Icon(
                              Icons.phone,
                              color: Colors.black54,
                              size: 15,
                            ),
                            SizedBox(width: 10),
                            Text('Phone',
                                style: TextStyle(color: Colors.black54, fontSize: 16))
                          ],
                        ),
                        onTap: () {},
                      ),
                      ListTile(
                        title: Row(
                          children: [
                            Icon(
                              Icons.directions_train,
                              color: Colors.black54,
                              size: 15,
                            ),
                            SizedBox(width: 10),
                            Text('Train Station',
                                style: TextStyle(color: Colors.black54, fontSize: 16))
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
                            SizedBox(width: 10),
                            Text('Secure Key',
                                style: TextStyle(color: Colors.black54, fontSize: 16))
                          ],
                        ),
                        onTap: () {},
                      ),
                    ],
                  ),
                )

              ],
            ) :Column(
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
                      SizedBox(width: 10),
                      Text('Door Bell',
                          style: TextStyle(color: Colors.black54, fontSize: 16))
                    ],
                  ),
                  onTap: () {},
                ),
                ListTile(
                  title: Row(
                    children: [
                      Icon(
                        Icons.wifi,
                        color: Colors.black54,
                        size: 15,
                      ),
                      SizedBox(width: 10),
                      Text('Wi-Fi',
                          style: TextStyle(color: Colors.black54, fontSize: 16))
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
                      SizedBox(width: 10),
                      Text('Restaurant nearby',
                          style: TextStyle(color: Colors.black54, fontSize: 16))
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
                      SizedBox(width: 10),
                      Text('230V Plugs',
                          style: TextStyle(color: Colors.black54, fontSize: 16))
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
                      SizedBox(width: 10),
                      Text('Accessible',
                          style: TextStyle(color: Colors.black54, fontSize: 16))
                    ],
                  ),
                  onTap: () {},
                ),
                ListTile(
                  title: Row(
                    children: [
                      Icon(
                        Icons.phone,
                        color: Colors.black54,
                        size: 15,
                      ),
                      SizedBox(width: 10),
                      Text('Phone',
                          style: TextStyle(color: Colors.black54, fontSize: 16))
                    ],
                  ),
                  onTap: () {},
                ),
                ListTile(
                  title: Row(
                    children: [
                      Icon(
                        Icons.directions_train,
                        color: Colors.black54,
                        size: 15,
                      ),
                      SizedBox(width: 10),
                      Text('Train Station',
                          style: TextStyle(color: Colors.black54, fontSize: 16))
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
                      SizedBox(width: 10),
                      Text('Secure Key',
                          style: TextStyle(color: Colors.black54, fontSize: 16))
                    ],
                  ),
                  onTap: () {},
                ),
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
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            const Text(
              'Amenities',
              style: TextStyle(fontSize: 24, color: Colors.black54),
            ),
            SizedBox(height: 35),
            // isTablet ? Wrap(
            //   crossAxisAlignment: WrapCrossAlignment.start,
            //   children: [
            //     ...amenities.map((amenity) =>  Row(
            //         children: [
            //           Container(
            //             width: 7,
            //             height: 7,
            //             decoration: BoxDecoration(
            //               shape: BoxShape.circle,
            //               color: Color(0xff0000ff),
            //             ),
            //           ),
            //           SizedBox(width: 5),
            //           Text(amenity,
            //               style: TextStyle(color: Colors.black54, fontSize: 16))
            //         ],
            //       ),
            //
            //     ).toList()
            //   ],
            // ) :
            Column(
              children: [
                ...amenities.map((amenity) => ListTile(
                  title: Row(
                    children: [
                      Container(
                        width: 7,
                        height: 7,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xff0000ff),
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(amenity,
                          style: TextStyle(color: Colors.black54, fontSize: 16))
                    ],
                  ),
                  onTap: () {},
                ))
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
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Text(
            'Contact the Agent',
            style: TextStyle(fontSize: 24, color: Colors.black54),
          ),
          SizedBox(
            height: 35,
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(3.0),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 0),
                      blurRadius: 7,
                      spreadRadius: -1,
                      color: Colors.grey)
                ]),
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage('assets/images/gamtime.jpg'),
                              fit: BoxFit.cover),
                          shape: BoxShape.circle),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Tran Lam Huy',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                          child: Wrap(
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
                  margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Your Name',
                        contentPadding: EdgeInsets.fromLTRB(10, 10, 0, 0)),
                  ),
                ),
                Container(
                  height: 35,
                  margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Your Email',
                        contentPadding: EdgeInsets.fromLTRB(10, 10, 0, 0)),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: TextField(
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
                  margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
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
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Text(
            'Location',
            style: TextStyle(fontSize: 24, color: Colors.black54),
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(3.0),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 0),
                      blurRadius: 7,
                      spreadRadius: -1,
                      color: Colors.grey)
                ]),
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
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
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  decoration: BoxDecoration(
                      border: Border(
                          top: BorderSide(color: Colors.grey, width: 0.3))),
                  child: Row(
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
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  decoration: BoxDecoration(
                      border: Border(
                          top: BorderSide(color: Colors.grey, width: 0.3))),
                  child: Row(
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
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  decoration: BoxDecoration(
                      border: Border(
                          top: BorderSide(color: Colors.grey, width: 0.3))),
                  child: Row(
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
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 70,
                height: 40,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(3.0),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 0),
                          blurRadius: 7,
                          spreadRadius: -1,
                          color: Colors.grey)
                    ]),
                child: Icon(Icons.star_border),
              ),
              Container(
                width: 70,
                height: 40,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(3.0),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 0),
                          blurRadius: 7,
                          spreadRadius: -1,
                          color: Colors.grey)
                    ]),
                child: Icon(Icons.print),
              ),
              Container(
                width: 70,
                height: 40,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(3.0),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 0),
                          blurRadius: 7,
                          spreadRadius: -1,
                          color: Colors.grey)
                    ]),
                child: Icon(Icons.social_distance_outlined),
              ),
              Container(
                width: 70,
                height: 40,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(3.0),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 0),
                          blurRadius: 7,
                          spreadRadius: -1,
                          color: Colors.grey)
                    ]),
                child: Icon(Icons.share),
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
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Similar Property',
            style: TextStyle(fontSize: 24, color: Colors.black54),
          ),
          SizedBox(
            height: 30,
          ),
          PropertyCard(
            nameAparment: 'Big luxury Apartment',
            address: '📍 1350 Arbutus Drive',
            url: 'assets/images/property1.jpg',
            price: '\$350,000',
            maxWidth: 360,
          ),
          PropertyCard(
            nameAparment: 'Cozy Design Studio',
            address: '📍 4831 Worthington Drive',
            url: 'assets/images/property2.jpg',
            price: '\$125,000',
            maxWidth: 360,
          ),
          PropertyCard(
            nameAparment: 'Family Vila',
            address: '📍 4127 Winding Way',
            url: 'assets/images/property3.jpg',
            price: '\$45,900',
            maxWidth: 360,
          )
        ],
      ),
    );
  }
}

class DetailInfo extends StatelessWidget {
  const DetailInfo({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width * 0.9;
    double fullWidth = MediaQuery.of(context).size.width;
    double TabletWidth = MediaQuery.of(context).size.width * 0.8;
    bool isTablet = MediaQuery.of(context).size.width >= 600 &&
        MediaQuery.of(context).size.width <= 1000;
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      if (constraints.maxWidth > 1000) {
        return Center(
          child: Container(
            // padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  constraints: const BoxConstraints(maxWidth: 1200),
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Big Luxury Apartment',
                        style: TextStyle(fontSize: 30),
                      ),
                      const Row(
                        children: [
                          Icon(
                            Icons.place,
                            size: 20,
                            color: Color(0xff7b7bfb),
                          ),
                          Opacity(
                              opacity: 0.7,
                              child: Text(
                                '1350 Arbutus Drive',
                                style: TextStyle(fontSize: 14),
                              ))
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 30, 0, 30),
                        child: TextButton(
                            style: TextButton.styleFrom(
                                backgroundColor: const Color(0xff0000ff),
                                shape: const RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(3.0))),
                                padding: const EdgeInsets.symmetric(
                                    vertical: 16, horizontal: 24)),
                            onPressed: () {},
                            child: const Text('\$350,000',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20))),
                      ),
                    ],
                  ),
                ),
                const Carousel(),
                SizedBox(
                  height: 35,
                ),
                const QuickInfo(),
                SizedBox(
                  height: 35,
                ),
                const Description(),
                SizedBox(
                  height: 35,
                ),
                const Features(),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    margin: EdgeInsets.fromLTRB(0, 35, 0, 20),
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      'Map',
                      style: TextStyle(color: Colors.black54, fontSize: 24),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
                GoogleMap(width: screenWidth, height: 300),
                SizedBox(
                  height: 35,
                ),
                Amenities(),
                SizedBox(
                  height: 35,
                ),
                DetailPropertyInfo(),
                SizedBox(
                  height: 35,
                ),
                ContactAgent(),
                SizedBox(
                  height: 35,
                ),
                Location(),
                SizedBox(
                  height: 35,
                ),
                SimilarProperty(),
                SizedBox(
                  height: 35,
                ),
                Footer()
              ],
            ),
          ),
        );
      } else {
        return Center(
          child: Container(
            width: isTablet ? TabletWidth : fullWidth,
            // padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  constraints: const BoxConstraints(maxWidth: 1200),
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: isTablet
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Big Luxury Apartment',
                                  style: TextStyle(fontSize: 20),
                                ),
                                const Row(
                                  children: [
                                    Icon(
                                      Icons.place,
                                      size: 20,
                                      color: Color(0xff7b7bfb),
                                    ),
                                    Opacity(
                                        opacity: 0.7,
                                        child: Text(
                                          '1350 Arbutus Drive',
                                          style: TextStyle(fontSize: 14),
                                        ))
                                  ],
                                ),
                              ],
                            ),
                            Container(
                              margin: const EdgeInsets.fromLTRB(0, 30, 0, 30),
                              child: TextButton(
                                  style: TextButton.styleFrom(
                                      backgroundColor: const Color(0xff0000ff),
                                      shape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(3.0))),
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 14, horizontal: 16)),
                                  onPressed: () {},
                                  child: const Text('\$350,000',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 16))),
                            ),
                          ],
                        )
                      : Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Big Luxury Apartment',
                              style: TextStyle(fontSize: 30),
                            ),
                            const Row(
                              children: [
                                Icon(
                                  Icons.place,
                                  size: 20,
                                  color: Color(0xff7b7bfb),
                                ),
                                Opacity(
                                    opacity: 0.7,
                                    child: Text(
                                      '1350 Arbutus Drive',
                                      style: TextStyle(fontSize: 14),
                                    ))
                              ],
                            ),
                            Container(
                              margin: const EdgeInsets.fromLTRB(0, 30, 0, 30),
                              child: TextButton(
                                  style: TextButton.styleFrom(
                                      backgroundColor: const Color(0xff0000ff),
                                      shape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(3.0))),
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 16, horizontal: 24)),
                                  onPressed: () {},
                                  child: const Text('\$350,000',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20))),
                            ),
                          ],
                        ),
                ),
                const Carousel(),
                SizedBox(
                  height: 35,
                ),
                const QuickInfo(),
                SizedBox(
                  height: 35,
                ),
                const Description(),
                SizedBox(
                  height: 35,
                ),
                const Features(),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    margin: EdgeInsets.fromLTRB(0, 35, 0, 20),
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      'Map',
                      style: TextStyle(color: Colors.black54, fontSize: 24),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
                GoogleMap(width: screenWidth, height: 300),
                SizedBox(
                  height: 35,
                ),
                Amenities(),
                SizedBox(
                  height: 35,
                ),
                DetailPropertyInfo(),
                SizedBox(
                  height: 35,
                ),
                ContactAgent(),
                SizedBox(
                  height: 35,
                ),
                Location(),
                SizedBox(
                  height: 35,
                ),
                SimilarProperty(),
                SizedBox(
                  height: 35,
                ),
                Footer()
              ],
            ),
          ),
        );
      }
    });
  }
}
