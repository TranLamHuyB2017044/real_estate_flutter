import 'package:flutter/material.dart';

class PropertyCard extends StatelessWidget {
  const PropertyCard({
    super.key,
    required this.url,
    required this.nameAparment,
    required this.address,
    // required this.price
  });

  final String nameAparment;
  final String url;
  final String address;
  // final String price;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 360,
      child: Stack(
        children: [
          Column(
            children: [
              Stack(
                children: [
                  Image.asset(url),
                  Column(
                    children: [
                      Text(
                        nameAparment,
                        style:
                            const TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      Text(address,
                          style: const TextStyle(
                              color: Colors.white12, fontSize: 12))
                    ],
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
