
import 'package:flutter/material.dart';
import 'package:my_real_estate/extensions/hover_extension.dart';
import '../NavbarWidget/responsive_appbar.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints contraints) {
      if (contraints.maxWidth < 680) {
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
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  margin: const EdgeInsets.fromLTRB(0, 0, 200, 20),
                  child: Image.asset('assets/images/logo.png',
                          width: 120, height: 60)
                      .showCursorOnHover),
              const Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec placerat tempor sapien. In lobortis posuere tincidunt. Curabitur malesuada tempus ligula nec maximus. Nam tortor arcu, tincidunt quis molestie non, sagittis dignissim ligula. Fusce est ipsum, pharetra in felis ac, lobortis volutpat diam.',
                style: TextStyle(color: Colors.black54),
                textAlign: TextAlign.start,
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                margin: const EdgeInsets.symmetric(vertical: 30),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 1.0)),
                child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Contact Us',
                      style: TextStyle(color: Colors.black),
                    )),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 30),
                child: const Text(
                  'Navigation',
                  style: TextStyle(fontSize: 24),
                ),
              ),
              Wrap(
                alignment: WrapAlignment.start,
                children: [
                  Container(
                      margin: const EdgeInsets.fromLTRB(10, 10, 0, 10),
                      child: const NavbarItems(content: 'Home').moveUpOnHover),
                  Container(
                      margin: const EdgeInsets.fromLTRB(10, 10, 0, 10),
                      child:
                          const NavbarItems(content: 'Listing').moveUpOnHover),
                  Container(
                      margin: const EdgeInsets.fromLTRB(10, 10, 0, 10),
                      child:
                          const NavbarItems(content: 'About Us').moveUpOnHover),
                  Container(
                      margin: const EdgeInsets.fromLTRB(10, 10, 0, 10),
                      child:
                          const NavbarItems(content: 'Sign In').moveUpOnHover),
                  Container(
                      margin: const EdgeInsets.fromLTRB(10, 10, 0, 10),
                      child:
                          const NavbarItems(content: 'Register').moveUpOnHover),
                  Container(
                      margin: const EdgeInsets.fromLTRB(10, 10, 0, 10),
                      child: const NavbarItems(content: 'Submit Property')
                          .moveUpOnHover)
                ],
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 30, 0, 30),
                child: const Text(
                  'Contact',
                  style: TextStyle(fontSize: 24),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                            children: [
                          TextSpan(
                              text: 'office@example.com',
                              style:
                                  TextStyle(color: Colors.blue, fontSize: 16))
                        ])),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    child: RichText(
                        text: const TextSpan(
                            text: 'Phone: ',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                            children: [
                          TextSpan(
                              text: '+1 215-606-0391',
                              style: TextStyle(
                                  color: Colors.black54, fontSize: 16))
                        ])),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    child: RichText(
                        text: const TextSpan(
                            text: 'Skype: ',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                            children: [
                          TextSpan(
                              text: ' real.estate1',
                              style: TextStyle(
                                  color: Colors.black54, fontSize: 16))
                        ])),
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                decoration: const BoxDecoration(
                    border: Border(
                        top: BorderSide(color: Colors.grey, width: 0.3))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        margin: const EdgeInsets.fromLTRB(0, 0, 0, 15),
                        child: const Text(
                          '(C) 2024 Design by Tran Lam Huy, All rights reserved',
                          style: TextStyle(fontSize: 16),
                        )),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const SizedBox(child: Icon(Icons.facebook))
                            .showCursorOnHover,
                        Container(
                                margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                                child: const Icon(Icons.tiktok))
                            .showCursorOnHover,
                        Container(
                                margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                                width: 20,
                                height: 20,
                                child: Image.asset(
                                    'assets/images/pinterest-svgrepo-com.png'))
                            .showCursorOnHover,
                        Container(
                                margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                                width: 20,
                                height: 20,
                                child: Image.asset(
                                    'assets/images/twitter-154-svgrepo-com.png'))
                            .showCursorOnHover,
                        Container(
                                margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                                width: 20,
                                height: 20,
                                child: Image.asset(
                                    'assets/images/youtube-168-svgrepo-com.png'))
                            .showCursorOnHover,
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        );
      } else if (contraints.maxWidth >= 680 && contraints.maxWidth < 800) {
        return Container(
          padding: const EdgeInsets.fromLTRB(120, 50, 20, 20),
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
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset('assets/images/logo.png', width: 120, height: 60)
                  .showCursorOnHover,
              const Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec placerat tempor sapien. In lobortis posuere tincidunt. Curabitur malesuada tempus ligula nec maximus. Nam tortor arcu, tincidunt quis molestie non, sagittis dignissim ligula. Fusce est ipsum, pharetra in felis ac, lobortis volutpat diam.',
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 30),
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 1.0)),
                child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Contact Us',
                      style: TextStyle(color: Colors.black),
                    )),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 30, 0, 30),
                child: const Text(
                  'Navigation',
                  style: TextStyle(fontSize: 24),
                ),
              ),
              Wrap(
                children: [
                  Container(
                      margin: const EdgeInsets.fromLTRB(10, 10, 0, 10),
                      child: const NavbarItems(content: 'Home').moveUpOnHover),
                  Container(
                      margin: const EdgeInsets.fromLTRB(10, 10, 0, 10),
                      child:
                          const NavbarItems(content: 'Listing').moveUpOnHover),
                  Container(
                      margin: const EdgeInsets.fromLTRB(10, 10, 0, 10),
                      child:
                          const NavbarItems(content: 'About Us').moveUpOnHover),
                  Container(
                      margin: const EdgeInsets.fromLTRB(10, 10, 0, 10),
                      child:
                          const NavbarItems(content: 'Sign In').moveUpOnHover),
                  Container(
                      margin: const EdgeInsets.fromLTRB(10, 10, 0, 10),
                      child:
                          const NavbarItems(content: 'Register').moveUpOnHover),
                  Container(
                      margin: const EdgeInsets.fromLTRB(10, 10, 0, 10),
                      child: const NavbarItems(content: 'Submit Property')
                          .moveUpOnHover)
                ],
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 30, 0, 30),
                child: const Text(
                  'Contact',
                  style: TextStyle(fontSize: 24),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
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
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                            children: [
                          TextSpan(
                              text: 'office@example.com',
                              style:
                                  TextStyle(color: Colors.blue, fontSize: 16))
                        ])),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    child: RichText(
                        text: const TextSpan(
                            text: 'Phone: ',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                            children: [
                          TextSpan(
                              text: '+1 215-606-0391',
                              style: TextStyle(
                                  color: Colors.black54, fontSize: 16))
                        ])),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    child: RichText(
                        text: const TextSpan(
                            text: 'Skype: ',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                            children: [
                          TextSpan(
                              text: ' real.estate1',
                              style: TextStyle(
                                  color: Colors.black54, fontSize: 16))
                        ])),
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                decoration: const BoxDecoration(
                    border: Border(
                        top: BorderSide(color: Colors.grey, width: 0.3))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text('(C) 2024 Design by Tran Lam Huy, All rights reserved'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SizedBox(child: Icon(Icons.facebook))
                            .showCursorOnHover,
                        Container(
                                margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                                child: const Icon(Icons.tiktok))
                            .showCursorOnHover,
                        Container(
                                margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                                width: 20,
                                height: 20,
                                child: Image.asset(
                                    'assets/images/pinterest-svgrepo-com.png'))
                            .showCursorOnHover,
                        Container(
                                margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                                width: 20,
                                height: 20,
                                child: Image.asset(
                                    'assets/images/twitter-154-svgrepo-com.png'))
                            .showCursorOnHover,
                        Container(
                                margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                                width: 20,
                                height: 20,
                                child: Image.asset(
                                    'assets/images/youtube-168-svgrepo-com.png'))
                            .showCursorOnHover,
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        );
      } else {
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
                height: 380,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 0, 180, 20),
                          child: Image.asset('assets/images/logo.png',
                                  width: 150, height: 40)
                              .showCursorOnHover,
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
                      children: [
                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 0, 0, 30),
                          child: const Text(
                            'Navigation',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                                child: const NavbarItems(content: 'Home')
                                    .moveUpOnHover),
                            Container(
                                margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                                child: const NavbarItems(content: 'Listing')
                                    .moveUpOnHover),
                            Container(
                                margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                                child: const NavbarItems(content: 'About Us')
                                    .moveUpOnHover),
                            Container(
                                margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                                child: const NavbarItems(content: 'Sign In')
                                    .moveUpOnHover),
                            Container(
                                margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                                child: const NavbarItems(content: 'Register')
                                    .moveUpOnHover),
                            Container(
                                margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                                child: const NavbarItems(
                                        content: 'Submit Property')
                                    .moveUpOnHover)
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
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          child: const Text(
                            '2590 Rocky Road ',
                            style:
                                TextStyle(color: Colors.black54, fontSize: 16),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          child: const Text(
                            'Philadelphia, PA 19108',
                            style:
                                TextStyle(color: Colors.black54, fontSize: 16),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          child: RichText(
                              text: const TextSpan(
                                  text: 'Email: ',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                  children: [
                                TextSpan(
                                    text: 'office@example.com',
                                    style: TextStyle(
                                        color: Colors.blue, fontSize: 16))
                              ])),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          child: RichText(
                              text: const TextSpan(
                                  text: 'Phone: ',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                  children: [
                                TextSpan(
                                    text: '+1 215-606-0391',
                                    style: TextStyle(
                                        color: Colors.black54, fontSize: 16))
                              ])),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          child: RichText(
                              text: const TextSpan(
                                  text: 'Skype: ',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                  children: [
                                TextSpan(
                                    text: ' real.estate1',
                                    style: TextStyle(
                                        color: Colors.black54, fontSize: 16))
                              ])),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                decoration: const BoxDecoration(
                    border: Border(
                        top: BorderSide(color: Colors.grey, width: 0.3))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text('(C) 2024 Design by Tran Lam Huy, All rights reserved'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SizedBox(child: Icon(Icons.facebook))
                            .showCursorOnHover,
                        Container(
                                margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                                child: const Icon(Icons.tiktok))
                            .showCursorOnHover,
                        Container(
                                margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                                width: 20,
                                height: 20,
                                child: Image.asset(
                                    'assets/images/pinterest-svgrepo-com.png'))
                            .showCursorOnHover,
                        Container(
                                margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                                width: 20,
                                height: 20,
                                child: Image.asset(
                                    'assets/images/twitter-154-svgrepo-com.png'))
                            .showCursorOnHover,
                        Container(
                                margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                                width: 20,
                                height: 20,
                                child: Image.asset(
                                    'assets/images/youtube-168-svgrepo-com.png'))
                            .showCursorOnHover,
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        );
      }
    });
  }
}
