import 'package:flutter/material.dart';
import 'package:my_real_estate/Widget/AddPropertyWidget/responsive_add_property.dart';
import 'package:my_real_estate/Widget/NavbarWidget/drawer.dart';
import 'package:my_real_estate/Widget/NavbarWidget/responsive_appbar.dart';

class AddPropertyPage extends StatelessWidget {
  const AddPropertyPage({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDesktop = MediaQuery.of(context).size.width > 900;
    return Scaffold(
      appBar: ResponsiveAppBar(
        isDesktop: isDesktop,
        height: isDesktop ? 100 : 60,
      ),
      drawer: !isDesktop ? CustomDrawer() : null,
      body: SafeArea(
          child: Container(
        color: const Color(0xfff6f6f6),
        child: const ResponsiveAddProperty(),
      )),
    );
  }
}
