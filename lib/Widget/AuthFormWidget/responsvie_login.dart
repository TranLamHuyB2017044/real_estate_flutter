import 'package:flutter/material.dart';
import 'package:my_real_estate/Widget/AuthFormWidget/login_desktop.dart';
import 'package:my_real_estate/Widget/AuthFormWidget/login_mobile.dart';
import 'package:my_real_estate/Widget/AuthFormWidget/login_tablet.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ResponsiveLoginForm extends StatelessWidget {
  const ResponsiveLoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context) => const LoginFormMobile(),
      tablet: (context) => const LoginFormTablet(),
      desktop: (context) => const LoginFormDesktop(),
    );
  }
}
