import 'package:flutter/material.dart';
import 'package:my_real_estate/Widgets/ContactBussiness/contact_desktop.dart';
import 'package:my_real_estate/Widgets/ContactBussiness/contact_mobile.dart';
import 'package:my_real_estate/Widgets/ContactBussiness/contact_tablet.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ResponsiveContact extends StatelessWidget {
  const ResponsiveContact({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context) => const ContactMobile(),
      tablet: (context) => const ContactTablet(),
      desktop: (context) => const ContactDesktop(),
    );
  }
}
