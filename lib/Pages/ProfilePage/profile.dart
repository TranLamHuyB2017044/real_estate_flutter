import 'package:flutter/material.dart';
import 'package:my_real_estate/Widget/AccountWidget/responsive_customer.dart';
import 'package:my_real_estate/Widget/AccountWidget/responsive_manager_post.dart';
import 'package:my_real_estate/Widget/AddPropertyWidget/responsive_add_property.dart';
import 'package:my_real_estate/Widget/NavbarWidget/drawer.dart';
import 'package:my_real_estate/Widget/NavbarWidget/responsive_appbar.dart';
import 'package:my_real_estate/Widget/AccountWidget/responsive_userprofile.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    bool isDesktop = MediaQuery.of(context).size.width > 900;
    return Scaffold(
      appBar: ResponsiveAppBar(
        isDesktop: isDesktop,
        height: isDesktop ? 100 : 60,
      ),
      drawer: !isDesktop ? const CustomDrawer() : null,
      bottomNavigationBar: !isDesktop
          ? NavigationBar(
              onDestinationSelected: (int index) {
                setState(() {
                  currentPageIndex = index;
                });
              },
              indicatorColor: const Color.fromARGB(255, 114, 183, 240),
              selectedIndex: currentPageIndex,
              destinations: const [
                NavigationDestination(
                  icon: Icon(Icons.list_outlined),
                  selectedIcon: Icon(Icons.list),
                  label: 'Post',
                ),
                NavigationDestination(
                  icon: Icon(Icons.contact_phone_outlined),
                  selectedIcon: Icon(Icons.contact_phone),
                  label: 'Customer',
                ),
                NavigationDestination(
                  icon: Icon(Icons.add),
                  selectedIcon: Icon(Icons.add),
                  label: 'Add Post',
                ),
                NavigationDestination(
                  icon: Icon(Icons.account_circle_outlined),
                  selectedIcon: Icon(Icons.account_circle),
                  label: 'Personal',
                ),
              ],
            )
          : null,
      body: <Widget>[
        SafeArea(
            child: Container(
          color: Colors.white,
          child: const ResponsiveManagerPost(),
        )),
        SafeArea(
            child: Container(
          color: const Color(0xfff6f6f6),
          child: const ResponsiveCustomer(),
        )),
        SafeArea(
            child: Container(
          color: const Color(0xfff6f6f6),
          child: const ResponsiveAddProperty(),
        )),
        SafeArea(
            child: Container(
          color: const Color(0xfff6f6f6),
          child: const ResponsiveUserProfile(),
        )),
      ][currentPageIndex],
    );
  }
}
