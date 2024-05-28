import 'package:flutter/material.dart';
import 'package:my_real_estate/Widget/CarouselWidget/carousel.dart';
import 'package:my_real_estate/Widget/DetailInfoProperty/detailinfo.dart';
import 'package:my_real_estate/Widget/FooterWidget/footer.dart';
import 'package:my_real_estate/Widget/GoogleMapWidget/google_map.dart';

class DetailInfoTablet extends StatelessWidget {
  const DetailInfoTablet({super.key});

  @override
  Widget build(BuildContext context) {
    double tabletWidth = MediaQuery.of(context).size.width * 0.75;
    return Center(
      child: ListView(
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(0, 30, 0, 0),
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Big Luxury Apartment',
                      style: TextStyle(fontSize: 20),
                    ),
                    Row(
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Opacity(
                            opacity: 0.7,
                            child: Text(
                              'Date Posted 01/05/2024',
                              style: TextStyle(fontSize: 14),
                            )),
                        Opacity(
                            opacity: 0.7,
                            child: Text(
                              'Date Expired 01/06/2024',
                              style: TextStyle(fontSize: 14),
                            ))
                      ],
                    )
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
                              vertical: 14, horizontal: 16)),
                      onPressed: () {},
                      child: const Text('\$350,000',
                          style: TextStyle(color: Colors.white, fontSize: 16))),
                ),
              ],
            ),
          ),
          const Carousel(),
          const SizedBox(
            height: 35,
          ),
          const QuickInfo(),
          const SizedBox(
            height: 35,
          ),
          const Description(),
          const SizedBox(
            height: 35,
          ),
          const Features(),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              margin: const EdgeInsets.fromLTRB(0, 35, 0, 20),
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: const Text(
                'Map',
                style: TextStyle(color: Colors.black54, fontSize: 24),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: GoogleMapWeb(width: tabletWidth, height: 250)),
          const SizedBox(
            height: 35,
          ),
          const Amenities(),
          const SizedBox(
            height: 35,
          ),
          const DetailPropertyInfo(),
          const ContactAgent(),
          const Location(),
          const SizedBox(
            height: 35,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 50.0),
            child: Text(
              'Similar Properties',
              style: TextStyle(fontSize: 24, color: Colors.black54),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const SimilarProperty(),
          const SizedBox(
            height: 35,
          ),
          const Footer()
        ],
      ),
    );
  }
}
