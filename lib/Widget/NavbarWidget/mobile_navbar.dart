import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_real_estate/extensions/hover_extension.dart';

class MobileNavbar extends StatelessWidget {
  const MobileNavbar(
      {super.key, required this.isDrawerOpen, required this.onDrawerToggled});
  final bool isDrawerOpen;
  final VoidCallback onDrawerToggled;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
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
                        left: BorderSide(color: Colors.black, width: 0.6))),
                child: const Text('USD'),
              ),
            ],
          ),
        ),
        Column(
          children: [
            Container(
              decoration: const BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                    color: Colors.grey,
                    blurRadius: 16,
                    spreadRadius: -6,
                    offset: Offset(1, 10)),
              ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset('assets/images/logo.png', width: 200, height: 60)
                      .showCursorOnHover,
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 0.3),
                        borderRadius: BorderRadius.circular(4.0)),
                    margin: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                    child: IconButton(
                      icon:
                          const Icon(Icons.menu, size: 25, color: Colors.grey),
                      onPressed: () {
                        onDrawerToggled();
                        isDrawerOpen;
                      },
                    ),
                  )
                ],
              ),
            ),
            if (isDrawerOpen)
              Container(
                width: 978,
                padding: const EdgeInsets.fromLTRB(20, 0, 0, 20),
                decoration:
                    const BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(
                      color: Colors.grey,
                      blurRadius: 16,
                      spreadRadius: -6,
                      offset: Offset(1, 10)),
                ]),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    const NavbarItems(content: 'Home', routeName: 'Home Page',).moveUpOnHover,
                    const NavbarItems(content: 'Social', routeName: 'Social Page',).moveUpOnHover,
                    const NavbarItems(content: 'Pages').moveUpOnHover,
                    const NavbarItems(content: 'About Us').moveUpOnHover,
                    const NavbarItems(content: 'Contact').moveUpOnHover,
                    const NavbarItems(content: 'Login').moveUpOnHover,
                    const NavbarItems(content: 'Register').moveUpOnHover,
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                      child: ConstrainedBox(
                        constraints: const BoxConstraints(maxWidth: 160),
                        child: OutlinedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all<OutlinedBorder>(
                                const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.zero,
                                ),
                              ),
                              side: MaterialStateProperty.all<BorderSide>(
                                const BorderSide(
                                  color: Colors.blueAccent,
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
                            )),
                      ),
                    )
                  ],
                ),
              )
          ],
        ),
      ]),
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
          width: 800,
          decoration: const BoxDecoration(
              border:
                  Border(bottom: BorderSide(color: Colors.black12, width: 1))),
          padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
          child: Align(
            alignment: Alignment.topLeft,
            child: TextButton(
                onPressed: () {
                  context.goNamed(routeName!);
                },
                child: Text(content, style: const TextStyle(color: Colors.black54), textAlign: TextAlign.left,)),
          )),
    ).showCursorOnHover;
  }
}
