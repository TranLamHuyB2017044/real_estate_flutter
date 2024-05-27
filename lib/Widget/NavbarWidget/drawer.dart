import 'package:flutter/material.dart';
import 'package:my_real_estate/extensions/hover_extension.dart';
import 'package:go_router/go_router.dart';
import 'package:badges/badges.dart' as badges;

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

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
                  Image.asset('assets/images/logo.png', width: 150, height: 80)
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
                const Text('Saved Posts')
              ],
            ),
            onTap: () {
              context.goNamed('Listing Page');
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
          ListTile(
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
