import 'package:autoscale_tabbarview/autoscale_tabbarview.dart';
import 'package:flutter/material.dart';
import 'package:my_real_estate/Widgets/AuthFormWidget/login_view.dart';
import 'package:my_real_estate/Widgets/AuthFormWidget/register_view.dart';
import 'package:my_real_estate/Widgets/FooterWidget/footer.dart';
import 'package:my_real_estate/Widgets/NavbarWidget/drawer.dart';
import 'package:my_real_estate/Widgets/NavbarWidget/responsive_appbar.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDesktop = MediaQuery.of(context).size.width > 950;
    bool isMobile = MediaQuery.of(context).size.width < 600;
    double tabletWidth = 500;
    double desktopWidth = 450;
    double mobileWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar:
          ResponsiveAppBar(isDesktop: isDesktop, height: isDesktop ? 100 : 60),
      drawer: !isDesktop ? const CustomDrawer() : null,
      body: SafeArea(
        child: Container(
          color: const Color.fromARGB(255, 248, 246, 246),
          child: DefaultTabController(
            length: 2,
            child: ListView(
              children: [
                const SizedBox(
                  height: 30,
                ),
                Center(
                  child: SizedBox(
                    width: isDesktop
                        ? desktopWidth
                        : (isMobile ? mobileWidth : tabletWidth),
                    child: const TabBar(
                      indicatorColor: Colors.blue,
                      labelColor: Colors.blue,
                      tabs: [
                        Tab(text: 'Login'),
                        Tab(text: 'Register'),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 650,
                  child: AutoScaleTabBarView(
                    children: [
                      ResponsiveLoginView(),
                      ResponsiveRegisterView(),
                    ],
                  ),
                ),
                const Footer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}