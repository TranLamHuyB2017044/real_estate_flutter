import 'package:flutter/material.dart';
import 'package:my_real_estate/Widget/AuthFormWidget/register_mobile.dart';
import 'package:my_real_estate/Widget/AuthFormWidget/responsvie_login.dart';
import 'package:my_real_estate/Widget/AuthFormWidget/responsvie_register.dart';
import 'package:my_real_estate/Widget/FooterWidget/footer.dart';
import 'package:my_real_estate/Widget/NavbarWidget/drawer.dart';
import 'package:my_real_estate/Widget/NavbarWidget/responsive_appbar.dart';
import '../../Widget/AuthFormWidget/login_mobile.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDesktop = MediaQuery.of(context).size.width > 950;
    bool isMobile = MediaQuery.of(context).size.width < 600;
    double TabletWidth = MediaQuery.of(context).size.width * 0.7;
    double DesktopWidth = MediaQuery.of(context).size.width * 0.4;
    double MobileWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar:
          ResponsiveAppBar(isDesktop: isDesktop, height: isDesktop ? 100 : 60),
      drawer: !isDesktop ? CustomDrawer() : null,
      body: SafeArea(
        child: Container(
          color: Color.fromARGB(255, 248, 246, 246),
          child: DefaultTabController(
            length: 2,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Center(
                    child: Container(
                      width: isDesktop
                          ? DesktopWidth
                          : (isMobile ? MobileWidth : TabletWidth),
                      child: TabBar(
                        indicatorColor: Colors.blue,
                        labelColor: Colors.blue,
                        tabs: [
                          Tab(text: 'Login'),
                          Tab(text: 'Register'),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height,
                    child: TabBarView(
                      children: [
                        ResponsiveLoginForm(),
                        ResponsiveRegisterForm(),
                      ],
                    ),
                  ),
                  Footer(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
