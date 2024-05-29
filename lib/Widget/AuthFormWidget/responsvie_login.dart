import 'package:flutter/material.dart';
import 'package:my_real_estate/Widget/AuthFormWidget/login_desktop.dart';
import 'package:my_real_estate/Widget/AuthFormWidget/login_mobile.dart';
import 'package:my_real_estate/Widget/AuthFormWidget/login_tablet.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ResponsiveLoginForm extends StatelessWidget {
  const ResponsiveLoginForm({super.key});
  final String emailPattern =
      r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$';
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context) =>  LoginFormMobile(emailPattern: emailPattern),
      tablet: (context) =>  LoginFormTablet(emailPattern: emailPattern),
      desktop: (context) =>  LoginFormDesktop(emailPattern: emailPattern),
    );
  }
}
