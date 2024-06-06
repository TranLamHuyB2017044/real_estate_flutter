import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_real_estate/extensions/hover_extension.dart';
import 'package:badges/badges.dart' as badges;
import 'package:shared_preferences/shared_preferences.dart';

class ResponsiveAppBar extends StatefulWidget implements PreferredSizeWidget {
  final bool isDesktop;
  final double height;
  const ResponsiveAppBar({
    super.key,
    required this.isDesktop,
    required this.height,
  });

  @override
  State<ResponsiveAppBar> createState() => _ResponsiveAppBarState();

  @override
  Size get preferredSize => Size.fromHeight(height);
}

class _ResponsiveAppBarState extends State<ResponsiveAppBar> {
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  bool user = false;

  Future<void> checkUserLogin() async {
    final SharedPreferences prefs = await _prefs;
    String? userLogin = prefs.getString('userInfo');
    User? OAuthLogin = FirebaseAuth.instance.currentUser;
    if (userLogin != null || OAuthLogin != null) {
      setState(() {
        user = true;
      });
    } else {
      setState(() {
        user = false;
      });
    }
  }

  @override
  initState() {
    checkUserLogin();
    super.initState();
  }

  Future<void> Logout() async {
    final SharedPreferences prefs = await _prefs;
    await FirebaseAuth.instance.signOut();
    await prefs.remove('userInfo');
    Future.delayed(const Duration(milliseconds: 200), () {
      context.goNamed('Login Page');
    });
  }

  void onSelected(BuildContext context, int item) {
    if (item == 0) {
      context.goNamed('Profile Page');
    } else {
      Logout();
    }
  }

  @override
  Widget build(BuildContext context) {
    double desktopScreen = MediaQuery.of(context).size.width;
    return AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        title: widget.isDesktop
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
                margin: const EdgeInsets.fromLTRB(0, 0, 50, 0),
                width: double.infinity,
                child: Center(
                    child: Image.asset('assets/images/logo.png',
                            width: 200, height: 60)
                        .showCursorOnHover)),
        bottom: PreferredSize(
            preferredSize: Size.fromHeight(widget.height),
            child: widget.isDesktop
                ? Container(
                    decoration:
                        const BoxDecoration(color: Colors.white, boxShadow: [
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
                            GestureDetector(
                              onTap: () {
                                context.goNamed('Home Page');
                              },
                              child: Image.asset('assets/images/logo.png',
                                      width: 200, height: 60)
                                  .showCursorOnHover,
                            ),
                            const NavbarItems(
                              content: 'Home',
                              routeName: 'Home Page',
                            ),
                            const NavbarItems(
                              content: 'Listing',
                              routeName: 'Listing Page',
                            ),
                            const NavbarItems(
                                content: 'News', routeName: 'News Page'),
                            const NavbarItems(
                              content: 'Contact',
                              routeName: 'Contact Page',
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
                                InkWell(
                                  onTap: () =>
                                      {context.goNamed('Favorite Page')},
                                  child: badges.Badge(
                                    badgeContent: const Text(
                                      '3',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    badgeStyle: const badges.BadgeStyle(
                                      badgeColor: Colors.red,
                                    ),
                                    child: Image.asset(
                                        'assets/images/heart-ouline.png',
                                        height: 30,
                                        color: const Color.fromARGB(
                                            255, 85, 84, 84)),
                                  ),
                                ).showCursorOnHover,
                              ],
                            ),
                            const SizedBox(width: 25),
                            badges.Badge(
                              badgeContent: const Text(
                                '3',
                                style: TextStyle(color: Colors.white),
                              ),
                              badgeStyle: const badges.BadgeStyle(
                                badgeColor: Colors.red,
                              ),
                              child: Image.asset(
                                'assets/images/bell-outline.png',
                                width: 25,
                                height: 25,
                                color: Colors.black54,
                              ),
                            ).showCursorOnHover,
                            const SizedBox(width: 25),
                            user == true
                                ? PopupMenuButton<int>(
                                    icon: const CircleAvatar(
                                      backgroundImage: AssetImage(
                                          'assets/images/gamtime.jpg'),
                                    ),
                                    position: PopupMenuPosition.under,
                                    color: Colors.white,
                                    onSelected: (item) =>
                                        onSelected(context, item),
                                    itemBuilder: (context) => [
                                      const PopupMenuItem<int>(
                                        value: 0,
                                        child: Row(
                                          children: [
                                            Icon(Icons.person,
                                                color: Colors.black),
                                            SizedBox(width: 8),
                                            Text('Profile'),
                                          ],
                                        ),
                                      ),
                                      const PopupMenuItem<int>(
                                        value: 1,
                                        child: Row(
                                          children: [
                                            Icon(Icons.logout,
                                                color: Colors.black),
                                            SizedBox(width: 8),
                                            Text('Logout'),
                                          ],
                                        ),
                                      ),
                                    ],
                                  )
                                : const NavbarItems(
                                    content: 'Login',
                                    routeName: 'Login Page',
                                  ),
                            const SizedBox(width: 25),
                            OutlinedButton(
                              onPressed: () {
                                context.goNamed('Add Property Page');
                              },
                              style: ButtonStyle(
                                backgroundColor:
                                    const WidgetStatePropertyAll<Color>(
                                        Colors.transparent),
                                shape: WidgetStateProperty.all<OutlinedBorder>(
                                  const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.zero,
                                  ),
                                ),
                                side: WidgetStateProperty.all<BorderSide>(
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
                    decoration: const BoxDecoration(
                        border: Border(
                            bottom: BorderSide(color: Colors.grey, width: 0.8)),
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(1, 1),
                              blurRadius: 1,
                              spreadRadius: -1,
                              color: Color.fromARGB(31, 46, 46, 46))
                        ]),
                  )));
  }
}

class Contact extends StatelessWidget {
  const Contact({super.key, this.icon, required this.info});

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
  const NavbarItems({super.key, required this.content, this.routeName});

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
