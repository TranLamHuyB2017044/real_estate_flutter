import 'package:flutter/material.dart';
import 'package:my_real_estate/Widget/AddPropertyWidget/add_property_desktop.dart';
import 'package:my_real_estate/Widget/AddPropertyWidget/add_property_mobile.dart';
import 'package:my_real_estate/Widget/AddPropertyWidget/add_property_tablet.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ResponsiveAddProperty extends StatelessWidget {
  const ResponsiveAddProperty({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context) => const AddPropertyMobile(),
      tablet: (context) => const AddPropertyTablet(),
      desktop: (context) => const AddPropertyDesktop(),
    );
  }
}
