import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_real_estate/extensions/hover_extension.dart';

class DesktopNavBar extends StatelessWidget {
  const DesktopNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          // Navbar top
          Container(
            height: 50,
            decoration: const BoxDecoration(
                color: Color(0xfff4f2ee),
                border: Border(
                    bottom: BorderSide(color: Colors.black12, width: 0.6))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Row(
                  children: [
                    Contact(
                        icon: Icon(Icons.phone, color: Colors.black38),
                        info: ' +84 123 456 789'),
                    Contact(
                        icon: Icon(Icons.email, color: Colors.black38),
                        info: ' tlhuy02@gmail.com')
                  ],
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 150,
                      height: 38,
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Search',
                            fillColor: Colors.black54,
                            contentPadding: EdgeInsets.fromLTRB(5, 5, 0, 0)),
                      ),
                    ),
                    Container(
                      width: 50,
                      padding: const EdgeInsets.fromLTRB(20, 0, 5, 0),
                      child: const Text('EN'),
                    ),
                    Container(
                      width: 70,
                      padding: const EdgeInsets.fromLTRB(20, 0, 5, 0),
                      decoration: const BoxDecoration(
                          border: Border(
                              left:
                                  BorderSide(color: Colors.black, width: 0.6))),
                      child: const Text('USD'),
                    ),
                  ],
                )
              ],
            ),
          ),
          // Navbar bottom
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10),
            decoration: const BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  offset: Offset(
                    0.0,
                    8.0,
                  ),
                  blurRadius: 10.0,
                  spreadRadius: -5,
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    Image.asset('assets/images/logo.png', width: 200, height: 60).showCursorOnHover,
                    const NavbarItems(content: 'Home', routeName: 'Home Page',).moveUpOnHover,
                    const NavbarItems(content: 'Listing', routeName: 'Listing Page',).moveUpOnHover,
                    const NavbarItems(content: 'News').moveUpOnHover,
                    const NavbarItems(content: 'About Us').moveUpOnHover,
                    const NavbarItems(content: 'Contact').moveUpOnHover
                  ],
                ),
                Row(children: [
                  const NavbarItems(content: 'Login').moveUpOnHover,
                  OutlinedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all<OutlinedBorder>(
                          const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.zero,
                          ),
                        ),
                        side: MaterialStateProperty.all<BorderSide>(
                          const BorderSide(
                            color: Colors
                                .blueAccent,
                          ),
                        ),
                      ),
                      child: const Row(
                        children: [
                          Icon(
                            Icons.add,
                            color: Colors.blueAccent,
                          ),
                          Text(
                            'Add Property',
                            style: TextStyle(color: Colors.blueAccent),
                          )
                        ],
                      ))
                ])
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Contact extends StatelessWidget {
  const Contact({super.key, this.icon, required this.info});

  final dynamic icon;
  final String info;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(0, 0, 15, 0),
      child: Row(
        children: [
          icon,
          Text(
            info,
            style: const TextStyle(fontSize: 12, color: Colors.black54),
          )
        ],
      ),
    );
  }
}

class NavbarItems extends StatelessWidget {
  const NavbarItems({super.key, required this.content, this.routeName});
  final String content;
  final String? routeName;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: TextButton(
              onPressed: (){
                context.goNamed(routeName!);
              },
              child: Text(content, style: const TextStyle(color: Colors.black54)))),
    ).showCursorOnHover;
  }
}
