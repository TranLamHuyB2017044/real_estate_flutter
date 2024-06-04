import 'package:flutter/material.dart';
import 'package:my_real_estate/Widgets/CarouselWidget/carousel.dart';
import 'package:my_real_estate/Widgets/DetailInfoProperty/detailinfo.dart';
import 'package:my_real_estate/Widgets/FooterWidget/footer.dart';
import 'package:my_real_estate/Widgets/GoogleMapWidget/google_map.dart';

class DetailInfoMobile extends StatelessWidget {
  const DetailInfoMobile({super.key});

  @override
  Widget build(BuildContext context) {
    double googleMapWidth = 300;
    return Center(
      child: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
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
                          style: TextStyle(color: Colors.white, fontSize: 20))),
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
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: const Text(
                'Map',
                style: TextStyle(color: Colors.black54, fontSize: 24),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          GoogleMapWeb(width: googleMapWidth, height: 300),
          const SizedBox(
            height: 35,
          ),
          const Amenities(),
          const SizedBox(
            height: 35,
          ),
          const DetailPropertyInfo(),
          const SizedBox(
            height: 35,
          ),
          const ContactAgent(),
          const SizedBox(
            height: 35,
          ),
          const Location(),
          const SizedBox(
            height: 35,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
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
