import 'package:flutter/material.dart';
import 'package:my_real_estate/Widget/FooterWidget/footer.dart';
import 'package:my_real_estate/Widget/PropertyCardWidget/property_card.dart';

class MobileFavorite extends StatefulWidget {
  const MobileFavorite({super.key});

  @override
  State<MobileFavorite> createState() => _MobileFavoriteState();
}

class _MobileFavoriteState extends State<MobileFavorite> {
  var status = <String>[
    'Newest Saved',
    'Asc Price',
    'Desc Price',
    'Acs Area',
    'Desc Area',
  ];
  String? _chosenStatus;
  // List<PropertyCard> favoriteLists = [
  //   const PropertyCard(
  //     nameAparment: 'Big luxury Apartment',
  //     address: '📍 1350 Arbutus Drive',
  //     url: 'assets/images/property1.jpg',
  //     price: '\$350,000',
  //     maxWidth: 369,
  //   ),
  //   const PropertyCard(
  //     nameAparment: 'Cozy Design Studio',
  //     address: '📍 4831 Worthington Drive',
  //     url: 'assets/images/property2.jpg',
  //     price: '\$125,000',
  //     maxWidth: 369,
  //   ),
  //   const PropertyCard(
  //     nameAparment: 'Family Vila',
  //     address: '📍 4127 Winding Way',
  //     url: 'assets/images/property3.jpg',
  //     price: '\$45,900',
  //     maxWidth: 369,
  //   ),
  //   const PropertyCard(
  //     nameAparment: 'Family Vila',
  //     address: '📍 4127 Winding Way',
  //     url: 'assets/images/img-detail-03.jpg',
  //     price: '\$45,900',
  //     maxWidth: 369,
  //   ),
  // ];

  List<PropertyCard> favoriteLists = [];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          margin: const EdgeInsets.fromLTRB(0, 20, 0, 10),
          decoration: const BoxDecoration(
              border:
                  Border(bottom: BorderSide(color: Colors.grey, width: 0.3))),
          child: const Text(
            'Favorite Post',
            style: TextStyle(fontSize: 20),
          ),
        ),
        favoriteLists.isEmpty
            ? Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/favorite-blank.jpg',
                      width: 300,
                      height: 200,
                    ),
                    Wrap(
                      children: [
                        const Text(
                          'No favorite post, please click on ',
                          textAlign: TextAlign.center,
                        ),
                        Image.asset(
                          'assets/images/heart-ouline.png',
                          width: 20,
                          height: 20,
                        ),
                        const Text(
                          'icon and see favorite post in here',
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 80,
                    )
                  ],
                ),
              )
            : Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    margin: const EdgeInsets.symmetric(vertical: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          '4 posts total',
                          style: TextStyle(fontSize: 15),
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                          height: 32,
                          width: 150,
                          child: DropdownButtonFormField(
                            isExpanded: true, // make icon spacebetween
                            value: _chosenStatus,
                            items:
                                status.map<DropdownMenuItem<String>>((status) {
                              return DropdownMenuItem<String>(
                                  value: status, child: Text(status));
                            }).toList(),
                            onChanged: (newValue) {
                              setState(() {
                                _chosenStatus = newValue;
                              });
                            },
                            hint: const Text(
                              'Status',
                              style: TextStyle(color: Colors.black54),
                            ),
                            decoration: const InputDecoration(
                                border: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.black54)),
                                contentPadding:
                                    EdgeInsets.fromLTRB(10, 0, 0, 10)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [...favoriteLists],
                      )),
                ],
              ),
        const SizedBox(
          height: 80,
        ),
        const Footer()
      ],
    );
  }
}
