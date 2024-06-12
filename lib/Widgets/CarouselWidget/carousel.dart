import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Carousel extends StatefulWidget {
  const Carousel({super.key});

  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
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
              onPageChanged: (value, _){
                setState(() {
                  _currentPage = value;
                });
              },
              enlargeCenterPage: true,
              height: screenWidth <= 800 ? 250.0 : 400,
              autoPlay: true,
              pauseAutoPlayOnTouch: true,
              enlargeFactor: 0.3,
          ),

          items: ImageItems.map((item) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: MediaQuery.of(context).size.width ,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage(item),
                    fit: BoxFit.cover,
                  )),
                );
              },
            );
          }).toList(),
        ),
        buildCarouselIndicator(),
      ],
    );
  }


  buildCarouselIndicator(){
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          for (int i = 0; i < ImageItems.length; i++ )
            Container(
              width: i == _currentPage ? 7 :5,
              height: i == _currentPage ? 7 : 5,
              margin: const EdgeInsets.all(5),
              decoration:  BoxDecoration(
                color: i == _currentPage ? Colors.black :  Colors.grey,
                shape: BoxShape.circle
              ),
            )

        ],
      ),
    );
  }
}
