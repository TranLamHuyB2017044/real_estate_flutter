import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';



class SlideShow extends StatelessWidget {
  const SlideShow({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Container 1: Background image
        Container(
          height: 500,
          margin: const EdgeInsets.symmetric(vertical: 8.0),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage("assets/images/bg-bathroom.jpg"),
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
            child:  Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Cozy Apartment',
                  style: TextStyle(color: Colors.white, fontSize: 56),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(10, 10, 0, 20),
                  child: Text(
                    '📍 4831 Worthington Drive',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
                const SizedBox(
                  width: 300,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
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
                        padding: EdgeInsets.symmetric(horizontal: 12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Bedrooms',
                              style: TextStyle(color: Colors.white54),
                            ),
                            Text(
                              '2',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
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
                    padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 14),
                    decoration:  BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.indigo
                    ),
                    child: TextButton(onPressed: () {}, child: const Text('Detail >', style: TextStyle(color: Colors.white),)))
              ],
            ),
          ),
        ),
      ],

    );
  }
}