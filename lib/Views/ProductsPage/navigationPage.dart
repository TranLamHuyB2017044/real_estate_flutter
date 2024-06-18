import 'package:flutter/material.dart';
import 'package:my_real_estate/Views/ProductsPage/bookpage.dart';
import 'package:my_real_estate/Views/ProductsPage/productpage.dart';
import 'package:my_real_estate/Widgets/ChatbotWidget/chatbot.dart';
import 'package:my_real_estate/Widgets/NavbarWidget/drawer.dart';
import 'package:my_real_estate/Widgets/NavbarWidget/responsive_appbar.dart';
import 'package:my_real_estate/viewmodels/chatbot_viewmodel.dart';
import 'package:provider/provider.dart';

class ProductsPage extends StatefulWidget {
  const ProductsPage({super.key});

  @override
  State<ProductsPage> createState() => ProductsPageState();
}

class ProductsPageState extends State<ProductsPage> {
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
                  icon: Icon(Icons.shopping_bag_outlined),
                  selectedIcon: Icon(Icons.shopping_bag),
                  label: 'Shopping Products',
                ),
                NavigationDestination(
                  icon: Icon(Icons.menu_book_outlined),
                  selectedIcon: Icon(Icons.menu_book_sharp),
                  label: 'Books Store',
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
                        icon: Icon(Icons.shopping_bag_outlined),
                        selectedIcon: Icon(Icons.shopping_bag),
                        label: Text('Shopping Products'),
                      ),
                      NavigationRailDestination(
                        icon: Icon(Icons.menu_book_outlined),
                        selectedIcon: Icon(Icons.menu_book_sharp),
                        label: Text('Books Store'),
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
                          const ProductPage(),
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
                          const BookPage(),
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
                    const ProductPage(),
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
                    const BookPage(),
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
