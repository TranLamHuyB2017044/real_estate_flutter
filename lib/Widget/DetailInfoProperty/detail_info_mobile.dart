import 'package:flutter/material.dart';
import 'package:my_real_estate/Widget/CarouselWidget/carousel.dart';
import 'package:my_real_estate/Widget/DetailInfoProperty/detailinfo.dart';
import 'package:my_real_estate/Widget/FooterWidget/footer.dart';
import 'package:my_real_estate/Widget/GoogleMapWidget/google_map.dart';

class DetailInfoMobile extends StatelessWidget {
  const DetailInfoMobile({super.key});

  @override
  Widget build(BuildContext context) {
    double GoogleMapWidth = 300;
    return Center(
      child: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
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
          SizedBox(
            height: 35,
          ),
          QuickInfo(),
          SizedBox(
            height: 35,
          ),
          Description(),
          SizedBox(
            height: 35,
          ),
          Features(),
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
          GoogleMap(width: GoogleMapWidth, height: 300),
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: const Text(
              'Similar Properties',
              style: TextStyle(fontSize: 24, color: Colors.black54),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          SimilarProperty(),
          SizedBox(
            height: 35,
          ),
          Footer()
        ],
      ),
    );
  }
}
