import 'package:flutter/material.dart';
import 'package:my_real_estate/Widgets/AccountWidget/AccountInfo/responsive_user_account.dart';
import 'package:my_real_estate/Widgets/AccountWidget/CustomerManager/responsive_customer.dart';
import 'package:my_real_estate/Widgets/AccountWidget/PostManager/responsive_manager_post.dart';
import 'package:my_real_estate/Widgets/AddPropertyWidget/responsive_add_property.dart';
import 'package:my_real_estate/Widgets/ChatbotWidget/chatbot.dart';
import 'package:my_real_estate/Widgets/NavbarWidget/drawer.dart';
import 'package:my_real_estate/Widgets/NavbarWidget/responsive_appbar.dart';
import 'package:my_real_estate/Widgets/AccountWidget/ProfileManager/responsive_userprofile.dart';
import 'package:my_real_estate/viewmodels/chatbot_viewmodel.dart';
import 'package:provider/provider.dart';

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
    bool isNavDesktop = MediaQuery.of(context).size.width > 950;
    return Scaffold(
      appBar: ResponsiveAppBar(
        isDesktop: isDesktop,
        height: isDesktop ? 100 : 60,
      ),
      drawer: !isDesktop ? const CustomDrawer() : null,
      bottomNavigationBar: !isNavDesktop
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
                  icon: Icon(Icons.account_circle_outlined),
                  selectedIcon: Icon(Icons.account_circle),
                  label: 'Personal',
                ),
                NavigationDestination(
                  icon: Icon(Icons.list),
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
                  icon: Icon(Icons.settings),
                  selectedIcon: Icon(Icons.settings),
                  label: 'Edit ',
                ),
              ],
            )
          : null,
      body: isNavDesktop
          ? Row(
              children: [
                Expanded(
                  flex: 1,
                  child: NavigationRail(
                    onDestinationSelected: (int index) {
                      setState(() {
                        currentPageIndex = index;
                      });
                    },
                    indicatorColor: const Color.fromARGB(255, 114, 183, 240),
                    selectedIndex: currentPageIndex,
                    leading: const SizedBox(
                      height: 100,
                    ),
                    labelType: NavigationRailLabelType.all,
                    destinations: const [
                      NavigationRailDestination(
                        icon: Icon(Icons.account_circle_outlined),
                        selectedIcon: Icon(Icons.account_circle),
                        label: Text('Personal'),
                      ),
                      NavigationRailDestination(
                        icon: Icon(Icons.list),
                        selectedIcon: Icon(Icons.list),
                        label: Text('Post'),
                      ),
                      NavigationRailDestination(
                        icon: Icon(Icons.contact_phone_outlined),
                        selectedIcon: Icon(Icons.contact_phone),
                        label: Text('Customer'),
                      ),
                      NavigationRailDestination(
                        icon: Icon(Icons.add),
                        selectedIcon: Icon(Icons.add),
                        label: Text('Add Post'),
                      ),
                      NavigationRailDestination(
                        icon: Icon(Icons.settings),
                        selectedIcon: Icon(Icons.settings),
                        label: Text('Edit Account'),
                      ),
                    ],
                  ),
                ),
                const VerticalDivider(
                  thickness: 1,
                  width: 1,
                ),
                Expanded(
                  flex: 9,
                  child: <Widget>[
                    SafeArea(
                        child: Container(
                      color: Colors.white,
                      child: Stack(
                        children: [
                          const ResponsiveUserAccount(),
                          ChangeNotifierProvider(
                              create: (_) => ChatBot_ViewModel(),
                              child: const Positioned(
                                  right: 0, bottom: 0, child: Chatbot()))
                        ],
                      ),
                    )),
                    SafeArea(
                        child: Container(
                      color: Colors.white,
                      child: Stack(
                        children: [
                          const ResponsiveManagerPost(),
                          ChangeNotifierProvider(
                              create: (_) => ChatBot_ViewModel(),
                              child: const Positioned(
                                  right: 0, bottom: 0, child: Chatbot()))
                        ],
                      ),
                    )),
                    SafeArea(
                        child: Container(
                      color: const Color(0xfff6f6f6),
                      child: Stack(
                        children: [
                          const ResponsiveCustomer(),
                          ChangeNotifierProvider(
                              create: (_) => ChatBot_ViewModel(),
                              child: const Positioned(
                                  right: 0, bottom: 0, child: Chatbot()))
                        ],
                      ),
                    )),
                    SafeArea(
                        child: Container(
                      color: const Color(0xfff6f6f6),
                      child: Stack(
                        children: [
                          const ResponsiveAddProperty(),
                          ChangeNotifierProvider(
                              create: (_) => ChatBot_ViewModel(),
                              child: const Positioned(
                                  right: 0, bottom: 0, child: Chatbot()))
                        ],
                      ),
                    )),
                    SafeArea(
                        child: Container(
                      color: const Color(0xfff6f6f6),
                      child: Stack(
                        children: [
                          const ResponsiveUserProfile(),
                          ChangeNotifierProvider(
                              create: (_) => ChatBot_ViewModel(),
                              child: const Positioned(
                                  right: 0, bottom: 0, child: Chatbot()))
                        ],
                      ),
                    )),
                  ][currentPageIndex],
                ),
              ],
            )
          : <Widget>[
              SafeArea(
                  child: Container(
                color: Colors.white,
                child: Stack(
                  children: [
                    const ResponsiveUserAccount(),
                    ChangeNotifierProvider(
                        create: (_) => ChatBot_ViewModel(),
                        child: const Positioned(
                            right: 0, bottom: 0, child: Chatbot()))
                  ],
                ),
              )),
              SafeArea(
                  child: Container(
                color: Colors.white,
                child: Stack(
                  children: [
                    const ResponsiveManagerPost(),
                    ChangeNotifierProvider(
                        create: (_) => ChatBot_ViewModel(),
                        child: const Positioned(
                            right: 0, bottom: 0, child: Chatbot()))
                  ],
                ),
              )),
              SafeArea(
                  child: Container(
                color: const Color(0xfff6f6f6),
                child: Stack(
                  children: [
                    const ResponsiveCustomer(),
                    ChangeNotifierProvider(
                        create: (_) => ChatBot_ViewModel(),
                        child: const Positioned(
                            right: 0, bottom: 0, child: Chatbot()))
                  ],
                ),
              )),
              SafeArea(
                  child: Container(
                color: const Color(0xfff6f6f6),
                child: Stack(
                  children: [
                    const ResponsiveAddProperty(),
                    ChangeNotifierProvider(
                        create: (_) => ChatBot_ViewModel(),
                        child: const Positioned(
                            right: 0, bottom: 0, child: Chatbot()))
                  ],
                ),
              )),
              SafeArea(
                  child: Container(
                color: const Color(0xfff6f6f6),
                child: Stack(
                  children: [
                    const ResponsiveUserProfile(),
                    ChangeNotifierProvider(
                        create: (_) => ChatBot_ViewModel(),
                        child: const Positioned(
                            right: 0, bottom: 0, child: Chatbot()))
                  ],
                ),
              )),
            ][currentPageIndex],
    );
  }
}
