import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ForSale extends StatelessWidget {
  const ForSale({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 550,
      width: 2500,
      color: Colors.white,
      padding: const EdgeInsets.all(45),
      child: ConstrainedBox(
        constraints: const BoxConstraints(
          maxWidth: 1200,
        ),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: 1200,
                  height: 300,
                  margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'assets/images/Sectionals-header-2053.jpg'),
                          fit: BoxFit.cover)),
                ),
                Positioned.fill(
                  top: 20,
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.black54,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Have Some Property For Sale?',
                          style: TextStyle(fontSize: 30, color: Colors.white),
                        ),
                        const Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit',
                          style: TextStyle(color: Colors.white),
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                          padding: const EdgeInsets.symmetric(
                              vertical: 4, horizontal: 14),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(3),
                              color: Colors.white),
                          child: TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Submit Your Own',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 30),
              width: 1200,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset('assets/images/logo-01.png'),
                  Image.asset('assets/images/logo-02.png'),
                  Image.asset('assets/images/logo-03.png'),
                  Image.asset('assets/images/logo-04.png'),
                  Image.asset('assets/images/logo-05.png'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
