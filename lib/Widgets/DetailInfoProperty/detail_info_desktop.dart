import 'package:flutter/material.dart';
import 'package:my_real_estate/Widgets/CarouselWidget/carousel.dart';
import 'package:my_real_estate/Widgets/DetailInfoProperty/detailinfo.dart';
import 'package:my_real_estate/Widgets/FooterWidget/footer.dart';
import 'package:my_real_estate/Widgets/GoogleMapWidget/google_map.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_real_estate/extensions/hover_extension.dart';

class DetailInfoDesktop extends StatelessWidget {
  const DetailInfoDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    double googleMapWidth = MediaQuery.of(context).size.width * 0.7;
    bool isBigTablet = MediaQuery.of(context).size.width < 1535;
    List<CommentSection> comments = [
      const CommentSection(
          content:
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry',
          avatar: 'assets/images/gamtime.jpg',
          job: 'Web Developer',
          username: 'Flutter Web Google',
          time: '3m'),
      const CommentSection(
          content:
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry',
          avatar: 'assets/images/img-person-01.jpg',
          job: 'Agent Analytics',
          username: 'John Doe',
          time: '2h'),
      const CommentSection(
          content:
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry',
          avatar: 'assets/images/img-person-03.jpg',
          job: 'Backend Development',
          username: 'Athur Sefer',
          time: '1d'),
      const CommentSection(
          content:
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry',
          avatar: 'assets/images/img-person-04.jpg',
          job: 'Marketing',
          username: 'Cristopher Nolan',
          time: '1d'),
    ];
    return Center(
      child: Container(
        margin: const EdgeInsets.fromLTRB(0, 50, 0, 0),
        child: ListView(
          children: [
            Container(
              constraints: const BoxConstraints(maxWidth: 1200),
              padding: EdgeInsets.symmetric(horizontal: isBigTablet ? 0 : 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Big Luxury Apartment',
                        style: TextStyle(fontSize: 30),
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
                      SizedBox(
                        height: 20,
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
                          SizedBox(
                            width: 30,
                          ),
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
                                vertical: 16, horizontal: 24)),
                        onPressed: () {},
                        child: const Text('\$350,000',
                            style:
                                TextStyle(color: Colors.white, fontSize: 20))),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Carousel(),
            const SizedBox(
              height: 35,
            ),
            Container(
              constraints: const BoxConstraints(maxWidth: 1200),
              padding: EdgeInsets.symmetric(horizontal: isBigTablet ? 10 : 180),
              child:
                  Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Expanded(
                  flex: isBigTablet ? 2 : 1,
                  child: const Column(
                    children: [
                      DetailPropertyInfo(),
                      ContactAgent(),
                      Location(),
                    ],
                  ),
                ),
                Expanded(
                  flex: isBigTablet ? 3 : 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const QuickInfo(),
                      const SizedBox(
                        height: 35,
                      ),
                      const Description(),
                      const SizedBox(
                        height: 35,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(0, 35, 0, 20),
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: const Text(
                            'Map',
                            style:
                                TextStyle(color: Colors.black54, fontSize: 24),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ),
                      GoogleMapWeb(width: googleMapWidth, height: 300),
                      const SizedBox(
                        height: 35,
                      ),
                      const Amenities(),
                      Container(
                        height: 1,
                        margin: const EdgeInsets.symmetric(vertical: 35),
                        decoration: const BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    color: Colors.grey, width: 1.0))),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          'Discussion',
                          style: TextStyle(fontSize: 24, color: Colors.black54),
                        ),
                      ),
                      Form(
                          child: Column(
                        children: [
                          const Text(
                            '66 Comments',
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15.0, vertical: 5.0),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                      color: Colors.grey, width: 0.3),
                                  borderRadius: BorderRadius.circular(5.0)),
                              child: Row(
                                children: [
                                  const Expanded(
                                    child: TextField(
                                      decoration: InputDecoration(
                                        hintText: 'Leave a comment',
                                        border: InputBorder.none,
                                        contentPadding: EdgeInsets.symmetric(
                                            horizontal: 15, vertical: 8.0),
                                      ),
                                    ),
                                  ),
                                  SvgPicture.asset(
                                    'images/gallery.svg',
                                    width: 30,
                                    height: 30,
                                  ).showCursorOnHover,
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  SvgPicture.asset(
                                    'images/send-icon.svg',
                                    width: 40,
                                    height: 40  ,
                                  ).showCursorOnHover,
                                ],
                              ),
                            ),
                          ),
                          ...comments,
                        ],
                      )),
                      const SizedBox(
                        height: 30,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          'Similar Properties',
                          style: TextStyle(fontSize: 24, color: Colors.black54),
                        ),
                      ),
                      const SimilarProperty(),
                    ],
                  ),
                )
              ]),
            ),
            const SizedBox(
              height: 35,
            ),
            const Footer()
          ],
        ),
      ),
    );
  }
}
