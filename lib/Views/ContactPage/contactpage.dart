import 'package:flutter/material.dart';
import 'package:my_real_estate/Widgets/ContactBussiness/responsive_contact.dart';
import 'package:my_real_estate/Widgets/NavbarWidget/drawer.dart';
import 'package:my_real_estate/Widgets/NavbarWidget/responsive_appbar.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDesktop = MediaQuery.of(context).size.width > 900;
    return Scaffold(
      appBar: ResponsiveAppBar(
        isDesktop: isDesktop,
        height: isDesktop ? 100 : 60,
      ),
      drawer: !isDesktop ? const CustomDrawer() : null,
      body: SafeArea(
          child: Container(
        color: const Color(0xfff6f6f6),
        child: const ResponsiveContact(),
      )),
    );
  }
}