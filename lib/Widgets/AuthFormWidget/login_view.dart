import 'package:flutter/material.dart';
import 'package:my_real_estate/Widgets/AuthFormWidget/login_form.dart';
import 'package:my_real_estate/viewmodels/login_viewmodel.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ResponsiveLoginView extends StatelessWidget {
  const ResponsiveLoginView({super.key});

  @override
  Widget build(BuildContext context) {
    bool isBigTablet = MediaQuery.of(context).size.width >= 950 &&
        MediaQuery.of(context).size.width <= 1350;
    return ChangeNotifierProvider(
      create: (_) => LoginViewModel(),
      child: ScreenTypeLayout.builder(
        mobile: (context) => Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: const LoginForm()),
        tablet: (context) => Container(
          padding: const EdgeInsets.symmetric(horizontal: 160),
          child: const LoginForm(),
        ),
        desktop: (context) => Container(
          padding: EdgeInsets.symmetric(horizontal: isBigTablet ? 350 : 550),
          child: const LoginForm(),
        ),
      ),
    );
  }
}
