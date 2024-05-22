import 'package:flutter/material.dart';
import 'package:my_real_estate/Widget/AuthFormWidget/register_desktop.dart';
import 'package:my_real_estate/Widget/AuthFormWidget/register_mobile.dart';
import 'package:my_real_estate/Widget/AuthFormWidget/register_tablet.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ResponsiveRegisterForm extends StatelessWidget {
  const ResponsiveRegisterForm({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context) => RegisterFormMobile(),
      tablet: (context) => RegisterFormTablet(),
      desktop: (context) => RegisterFormDesktop(),
    );
  }
}
