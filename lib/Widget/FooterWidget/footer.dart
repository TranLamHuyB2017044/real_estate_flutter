import 'package:flutter/material.dart';
import 'package:my_real_estate/extensions/hover_extension.dart';
import '../GoogleMapWidget/google_map.dart';
import '../NavbarWidget/Navbar.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 480,
      padding: const EdgeInsets.fromLTRB(20, 50, 20, 20),
      decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Colors.grey,
                blurRadius: 10,
                spreadRadius: 4,
                offset: Offset(0, -1)),
          ],
          color: Colors.white,
          border: Border(top: BorderSide(color: Colors.grey, width: 0.3))),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  Image.asset('assets/images/logo.png', width: 200, height: 60)
                      .showCursorOnHover,
                  const GoogleMap(),
                ],
              ),
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 30),
                    child: const Text(
                      'Navigation',
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                   Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                          child: const NavbarItems(content: 'Home').moveUpOnHover),
                      Container(
                          margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                          child: const NavbarItems(content: 'Listing').moveUpOnHover),
                      Container(
                          margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                          child: const NavbarItems(content: 'About Us').moveUpOnHover),
                      Container(
                          margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                          child: const NavbarItems(content: 'Sign In').moveUpOnHover),
                      Container(
                          margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                          child: const NavbarItems(content: 'Register').moveUpOnHover),
                      Container(
                          margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                          child: const NavbarItems(content: 'Submit Property').moveUpOnHover)
                    ],
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 30),
                    child: const Text(
                      'Contact',
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    child: const Text(
                      '2590 Rocky Road ',
                      style: TextStyle(color: Colors.black54, fontSize: 16),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    child: const Text(
                      'Philadelphia, PA 19108',
                      style: TextStyle(color: Colors.black54, fontSize: 16),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    child: RichText(
                        text: const TextSpan(
                            text: 'Email: ',
                            style:
                                TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                            children: [
                          TextSpan(
                              text: 'office@example.com',
                              style: TextStyle(color: Colors.blue, fontSize: 16))
                        ])),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    child: RichText(
                        text: const TextSpan(
                            text: 'Phone: ',
                            style:
                                TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                            children: [
                          TextSpan(
                              text: '+1 215-606-0391',
                              style: TextStyle(color: Colors.black54, fontSize: 16))
                        ])),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    child: RichText(
                        text: const TextSpan(
                            text: 'Skype: ',
                            style:
                                TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                            children: [
                          TextSpan(
                              text: ' real.estate1',
                              style: TextStyle(color: Colors.black54, fontSize: 16))
                        ])),
                  ),
                ],
              ),
            ],
          ),
          Container(
            decoration: const BoxDecoration(
                border: Border(top: BorderSide(color: Colors.grey, width: 0.3))),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('(C) 2018 ThemeStarz, All rights reserved'),
                Row(
                  children: [

                  ],
                )
              ],
            ),
            ),
            

        ],
      ),
    );
  }
}
