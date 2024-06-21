import 'package:flutter/material.dart';
import 'package:my_real_estate/Widgets/CarouselWidget/carousel.dart';
import 'package:my_real_estate/Widgets/DetailInfoProperty/detailinfo.dart';
import 'package:my_real_estate/Widgets/FooterWidget/footer.dart';
import 'package:my_real_estate/Widgets/GoogleMapWidget/google_map.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailInfoTablet extends StatelessWidget {
  const DetailInfoTablet({super.key});

  @override
  Widget build(BuildContext context) {
    double tabletWidth = MediaQuery.of(context).size.width * 0.75;
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
          Form(
              child: Column(
            children: [
              const Text(
                '66 Comments',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
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
                      border: Border.all(color: Colors.grey, width: 0.3),
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
                        'assets/images/gallery.svg',
                        width: 25,
                        height: 25,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      SvgPicture.asset(
                        'assets/images/send-icon.svg',
                        width: 35,
                        height: 35,
                      ),
                    ],
                  ),
                ),
              ),
              ...comments,
            ],
          )),
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
