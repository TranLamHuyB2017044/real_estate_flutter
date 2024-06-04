import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:my_real_estate/extensions/hover_extension.dart';
import 'package:go_router/go_router.dart';
import 'package:badges/badges.dart' as badges;
import 'package:shared_preferences/shared_preferences.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({super.key});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  bool user = false;
  Map<String, dynamic> userInfo = {};

  Future<void> checkUserLogin() async {
    final SharedPreferences prefs = await _prefs;
    String? userLogin = prefs.getString('userInfo');
    if (userLogin != null) {
      setState(() {
        user = true;
        userInfo = jsonDecode(userLogin);
      });
    } else {
      setState(() {
        user = false;
      });
    }
  }

  Future<void> Logout() async {
    final SharedPreferences prefs = await _prefs;
    await prefs.remove('userInfo');
    Future.delayed(Duration.zero, () {
      context.goNamed('Login Page');
    });
  }

  @override
  initState() {
    checkUserLogin();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xfff6f6f6),
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
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
                  ),
                  user
                      ? Row(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Hello, ${userInfo['fullname']}',
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    context.goNamed('Profile Page');
                                  },
                                  child: const Text(
                                    'See profile',
                                    style: TextStyle(
                                        color: Colors.blue,
                                        decoration: TextDecoration.underline,
                                        decorationColor: Colors.blue),
                                  ),
                                ).showCursorOnHover
                              ],
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const SizedBox(
                              width: 60,
                              height: 60,
                              child: CircleAvatar(
                                backgroundImage:
                                    NetworkImage('assets/images/gamtime.jpg'),
                              ),
                            )
                          ],
                        )
                      : Image.asset('assets/images/logo.png',
                              width: 150, height: 80)
                          .showCursorOnHover,
                ],
              )),
          ListTile(
            title: const Row(
              children: [Icon(Icons.home), SizedBox(width: 10), Text('Home')],
            ),
            onTap: () {
              context.goNamed('Home Page');
            },
          ),
          ListTile(
            title: const Row(
              children: [
                Icon(Icons.list),
                SizedBox(width: 10),
                Text('Listing')
              ],
            ),
            onTap: () {
              context.goNamed('Listing Page');
            },
          ),
          ListTile(
            title: Row(
              children: [
                Image.asset(
                  'assets/images/heart-ouline.png',
                  width: 25,
                ),
                const SizedBox(width: 10),
                const Text('Favorite Posts')
              ],
            ),
            onTap: () {
              context.goNamed('Favorite Page');
            },
          ),
          ListTile(
            title: const Row(
              children: [
                Icon(Icons.article),
                SizedBox(width: 10),
                Text('News'),
              ],
            ),
            onTap: () {
              context.goNamed('News Page');
            },
          ),
          ListTile(
            title: const Row(
              children: [
                Icon(Icons.contact_phone),
                SizedBox(width: 10),
                Text('Contact'),
              ],
            ),
            onTap: () {
              context.goNamed('Contact Page');
            },
          ),
          user
              ? ListTile(
                  title: const Row(
                    children: [
                      Icon(Icons.login),
                      SizedBox(width: 10),
                      Text('Logout'),
                    ],
                  ),
                  onTap: () {
                    Logout();
                  },
                )
              : ListTile(
                  title: const Row(
                    children: [
                      Icon(Icons.login),
                      SizedBox(width: 10),
                      Text('Login'),
                    ],
                  ),
                  onTap: () {
                    context.goNamed('Login Page');
                  },
                ),
          ListTile(
            title: const Row(
              children: [
                Icon(Icons.add),
                SizedBox(width: 10),
                Text('Add Property'),
              ],
            ),
            onTap: () {
              context.goNamed('Add Property Page');
            },
          ),
        ],
      ),
    );
  }
}
