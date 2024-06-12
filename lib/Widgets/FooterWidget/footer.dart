import 'package:flutter/material.dart';
import '../NavbarWidget/responsive_appbar.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
          SizedBox(
            child: Wrap(
              spacing: 200,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 180, 20),
                      child: Image.asset('assets/images/logo.png',
                          width: 150, height: 40),
                    ),
                    const SizedBox(
                        width: 300,
                        child: Text(
                            style: TextStyle(color: Colors.black54),
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec placerat tempor sapien. In lobortis posuere tincidunt. Curabitur malesuada tempus ligula nec maximus. Nam tortor arcu, tincidunt quis molestie non, sagittis dignissim ligula. Fusce est ipsum, pharetra in felis ac, lobortis volutpat diam.')),
                    Container(
                      margin: const EdgeInsets.fromLTRB(10, 30, 200, 30),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 4),
                      decoration: BoxDecoration(
                          border:
                              Border.all(color: Colors.black, width: 1.0)),
                      child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Contact Us',
                            style: TextStyle(color: Colors.black),
                          )),
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 0, 30),
                      child: const Text(
                        'Navigation',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    const NavbarItems(content: 'Home'),
                    const SizedBox(
                      height: 20,
                    ),
                    const NavbarItems(content: 'Listing'),
                    const SizedBox(
                      height: 20,
                    ),
                    const NavbarItems(content: 'About Us'),
                    const SizedBox(
                      height: 20,
                    ),
                    const NavbarItems(content: 'Sign In'),
                    const SizedBox(
                      height: 20,
                    ),
                    const NavbarItems(content: 'Register'),
                    const SizedBox(
                      height: 20,
                    ),
                    const NavbarItems(content: 'Submit Property')
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 0, 30),
                      child: const Text(
                        'Contact',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    const Text(
                      '2590 Rocky Road \nPhiladelphia, PA 19108',
                      style: TextStyle(color: Colors.black54, fontSize: 16),
                    ),
                    const SizedBox(height: 20),
                    RichText(
                        text: const TextSpan(
                            text: 'Email: ',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Colors.black),
                            children: [
                          TextSpan(
                              text: 'office@example.com',
                              style:
                                  TextStyle(color: Colors.blue, fontSize: 16))
                        ])),
                    const SizedBox(height: 20),
                    RichText(
                        text: const TextSpan(
                            text: 'Phone: ',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Colors.black),
                            children: [
                          TextSpan(
                              text: '+1 215-606-0391',
                              style: TextStyle(
                                  color: Colors.black54, fontSize: 16))
                        ])),
                    const SizedBox(height: 20),
                    RichText(
                        text: const TextSpan(
                            text: 'Skype: ',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Colors.black),
                            children: [
                          TextSpan(
                              text: ' real.estate1',
                              style: TextStyle(
                                  color: Colors.black54, fontSize: 16))
                        ])),
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: 60,
            width: double.infinity,
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
            margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
            decoration: const BoxDecoration(
                border:
                    Border(top: BorderSide(color: Colors.grey, width: 0.3))),
            child: Wrap(
              spacing: 800,
              alignment: WrapAlignment.center,
              runSpacing: 10,
              children: [
                const Text(
                    '(C) 2024 Design by Tran Lam Huy, All rights reserved'),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(child: Icon(Icons.facebook)),
                    Container(
                        margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: const Icon(Icons.tiktok)),
                    Container(
                        margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                        width: 20,
                        height: 20,
                        child: Image.asset(
                            'assets/images/pinterest-svgrepo-com.png')),
                    Container(
                        margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                        width: 20,
                        height: 20,
                        child: Image.asset(
                            'assets/images/twitter-154-svgrepo-com.png')),
                    Container(
                        margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                        width: 20,
                        height: 20,
                        child: Image.asset(
                            'assets/images/youtube-168-svgrepo-com.png')),
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
