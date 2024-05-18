import 'package:flutter/material.dart';
import 'package:my_real_estate/Widget/NavbarWidget/responsive_navbar.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../../Widget/CarouselWidget/carousel.dart';


class DetailPropertyPages extends StatelessWidget {
  const DetailPropertyPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            const ResponsiveNabar(),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                      borderRadius: BorderRadius.all(Radius.circular(3.0))),
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 16, horizontal: 24)),
                              onPressed: () {},
                              child: const Text('\$350,000',
                                  style: TextStyle(color: Colors.white, fontSize: 20))),
                        ),
                      ],
                    ),
                  ),
                  const Carousel()

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
