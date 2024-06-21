import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PropertyCard extends StatelessWidget {
  const PropertyCard(
      {super.key,
      required this.url,
      required this.nameAparment,
      required this.address,
      required this.price,
      required this.maxWidth});
  final double maxWidth;
  final String nameAparment;
  final String url;
  final String address;
  final String price;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.goNamed('Detail Page');
      },
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: maxWidth,
          ),
          child: Stack(
            children: [
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: maxWidth,
                        height: 300,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(url),
                            ),
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(3),
                                topRight: Radius.circular(3))),
                      ),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(15, 0, 0, 30),
                          width: maxWidth,
                          decoration:
                              const BoxDecoration(color: Colors.black45),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                nameAparment,
                                style: const TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                              Text(address,
                                  style: const TextStyle(
                                      color: Colors.white70, fontSize: 14)),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    width: maxWidth,
                    color: Colors.white,
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Area',
                              style: TextStyle(color: Colors.black45),
                            ),
                            Text(
                              '325m²',
                              style: TextStyle(color: Colors.black),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Bedrooms',
                                style: TextStyle(color: Colors.black45),
                              ),
                              Text(
                                '2',
                                style: TextStyle(color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Bathrooms',
                              style: TextStyle(color: Colors.black45),
                            ),
                            Text(
                              '1',
                              style: TextStyle(color: Colors.black),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 2),
                    decoration: const BoxDecoration(
                      border: Border(
                        top: BorderSide(color: Colors.grey, width: 0.5),
                      ),
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(3),
                          bottomLeft: Radius.circular(3)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          offset: Offset(
                            5.0,
                            5.0,
                          ),
                          blurRadius: 10.0,
                          spreadRadius: 2.0,
                        ),
                        BoxShadow(
                          color: Colors.white,
                          offset: Offset(0.0, 0.0),
                          blurRadius: 0.0,
                          spreadRadius: 0.0,
                        ),
                      ],
                    ),
                    width: maxWidth,
                    height: 30,
                    child: RichText(
                      text: const TextSpan(
                          text: 'DETAIL',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w100),
                          children: [
                            TextSpan(
                                text: '  >',
                                style:
                                    TextStyle(color: Colors.blue, fontSize: 20))
                          ]),
                    ),
                  ),
                ],
              ),
              Positioned(
                left: 20,
                bottom: 95,
                top: 285,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      color: Colors.white,
                      border: Border.all(color: Colors.black12, width: 0.2),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(
                            5.0,
                            5.0,
                          ),
                          blurRadius: 10.0,
                          spreadRadius: 2.0,
                        ),
                        BoxShadow(
                          color: Colors.white,
                          offset: Offset(0.0, 0.0),
                          blurRadius: 0.0,
                          spreadRadius: 0.0,
                        ),
                      ]),
                  padding:
                      const EdgeInsets.symmetric(vertical: 4, horizontal: 16),
                  child: Text(
                    price,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
