import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_real_estate/extensions/hover_extension.dart';

class ResponsiveAppBar extends StatelessWidget implements PreferredSizeWidget {
  final bool isDesktop;
  final double height;

  const ResponsiveAppBar({
    Key? key,
    required this.isDesktop,
    required this.height,
  }) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    double desktopScreen = MediaQuery.of(context).size.width;
    return AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        title: isDesktop
            ? Container(
                width: desktopScreen,
                height: 50,
                decoration: const BoxDecoration(
                  color: Color(0xfff6f6f6),
                  border: Border(
                    bottom: BorderSide(color: Colors.black12, width: 0.6),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Row(
                      children: [
                        Contact(
                          icon: Icon(Icons.phone, color: Colors.black38),
                          info: ' +84 123 456 789',
                        ),
                        Contact(
                          icon: Icon(Icons.email, color: Colors.black38),
                          info: ' tlhuy02@gmail.com',
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 150,
                          height: 30,
                          child: TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Search',
                              fillColor: Colors.black54,
                              contentPadding: EdgeInsets.fromLTRB(5, 5, 0, 0),
                            ),
                          ),
                        ),
                        Container(
                          width: 70,
                          padding: const EdgeInsets.fromLTRB(20, 0, 5, 0),
                          child:
                              const Text('EN', style: TextStyle(fontSize: 16)),
                        ),
                        Container(
                          width: 70,
                          padding: const EdgeInsets.fromLTRB(10, 0, 5, 0),
                          decoration: const BoxDecoration(
                            border: Border(
                              left: BorderSide(color: Colors.black, width: 0.6),
                            ),
                          ),
                          child: const Text(
                            'USD',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            : Container(
                margin: EdgeInsets.fromLTRB(0, 0, 50, 0),
                width: double.infinity,
                child: Center(
                    child: Image.asset('assets/images/logo.png',
                            width: 200, height: 60)
                        .showCursorOnHover)),
        bottom: PreferredSize(
            preferredSize: Size.fromHeight(height),
            child: isDesktop
                ? Container(
                    decoration: BoxDecoration(color: Colors.white, boxShadow: [
                      BoxShadow(
                          offset: Offset(1, 3),
                          blurRadius: 5,
                          spreadRadius: -2,
                          color: Colors.grey)
                    ]),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: [
                            Image.asset('assets/images/logo.png',
                                    width: 200, height: 60)
                                .showCursorOnHover,
                            const NavbarItems(
                              content: 'Home',
                              routeName: 'Home Page',
                            ),
                            const NavbarItems(
                              content: 'Listing',
                              routeName: 'Listing Page',
                            ),
                            const NavbarItems(content: 'News'),
                            const NavbarItems(content: 'About Us'),
                            const NavbarItems(
                              content: 'Contact',
                              routeName: 'Contact Page',
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const NavbarItems(
                              content: 'Login',
                              routeName: 'Login Page',
                            ),
                            OutlinedButton(
                              onPressed: () {
                                context.goNamed('Add Property Page');
                              },
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll<Color>(
                                        Colors.transparent),
                                shape:
                                    MaterialStateProperty.all<OutlinedBorder>(
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
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                : Container(
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(color: Colors.grey, width: 0.8)),
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(1, 1),
                              blurRadius: 1,
                              spreadRadius: -1,
                              color: const Color.fromARGB(31, 46, 46, 46))
                        ]),
                  )));
  }
}

class Contact extends StatelessWidget {
  const Contact({Key? key, this.icon, required this.info}) : super(key: key);

  final Widget? icon;
  final String info;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(0, 0, 15, 0),
      child: Row(
        children: [
          if (icon != null) icon!,
          Text(
            info,
            style: const TextStyle(fontSize: 12, color: Colors.black54),
          ),
        ],
      ),
    );
  }
}

class NavbarItems extends StatelessWidget {
  const NavbarItems({Key? key, required this.content, this.routeName})
      : super(key: key);

  final String content;
  final String? routeName;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.goNamed(routeName!);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Text(
          content,
          style: const TextStyle(color: Colors.black54),
        ),
      ),
    ).showCursorOnHover;
  }
}
