import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class SlideShow extends StatefulWidget {
  const SlideShow({super.key});

  @override
  State<SlideShow> createState() => _SlideShowState();
}

class _SlideShowState extends State<SlideShow> {
  var ImageItems = <String>[
    'assets/images/img-detail-01.jpg',
    'assets/images/img-detail-03.jpg',
    'assets/images/img-detail-04.jpg',
    'assets/images/img-detail-05.jpg',
    'assets/images/bg-bathroom.jpg',
  ];
  int _currentPage = 0;
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            onPageChanged: (value, _) {
              setState(() {
                _currentPage = value;
              });
            },
            enlargeCenterPage: true,
            height: screenWidth <= 800 ? 350.0 : 600,
            autoPlay: true,
            pauseAutoPlayOnTouch: true,
            enlargeFactor: 0.3,
          ),
          items: ImageItems.map((item) {
            return Builder(
              builder: (BuildContext context) {
                return Stack(
                  children: [
                    Container(
                      height: 500,
                      margin: const EdgeInsets.symmetric(vertical: 8.0),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(item),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned.fill(
                      bottom: 8.0,
                      top: 8.0,
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Colors.black54,
                        ),
                        padding: const EdgeInsets.fromLTRB(200, 50, 0, 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Cozy Apartment',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 56),
                            ),
                            const Padding(
                              padding: EdgeInsets.fromLTRB(10, 10, 0, 20),
                              child: Text(
                                '📍 4831 Worthington Drive',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                            ),
                            const SizedBox(
                              width: 300,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Area',
                                        style: TextStyle(color: Colors.white54),
                                      ),
                                      Text(
                                        '325m²',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 12),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Bedrooms',
                                          style:
                                              TextStyle(color: Colors.white54),
                                        ),
                                        Text(
                                          '2',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Bathrooms',
                                        style: TextStyle(color: Colors.white54),
                                      ),
                                      Text(
                                        '1',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Container(
                                margin: const EdgeInsets.fromLTRB(10, 25, 0, 0),
                                padding: const EdgeInsets.symmetric(
                                    vertical: 3, horizontal: 14),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.indigo),
                                child: TextButton(
                                    onPressed: () {},
                                    child: const Text(
                                      'Detail >',
                                      style: TextStyle(color: Colors.white),
                                    )))
                          ],
                        ),
                      ),
                    ),
                  ],
                );
              },
            );
          }).toList(),
        ),
        buildSlideshowIndicator(),
      ],
    );
  }

  buildSlideshowIndicator() {
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          for (int i = 0; i < ImageItems.length; i++)
            Container(
              width: i == _currentPage ? 7 : 5,
              height: i == _currentPage ? 7 : 5,
              margin: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: i == _currentPage ? Colors.black : Colors.grey,
                  shape: BoxShape.circle),
            )
        ],
      ),
    );
  }
}
