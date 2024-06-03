import 'package:flutter/material.dart';
import 'package:my_real_estate/Widgets/AuthFormWidget/register_form.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';
import '../../viewmodels/register_viewmodel.dart';

class ResponsiveRegisterView extends StatelessWidget {
  const ResponsiveRegisterView({super.key});
  
  @override
  Widget build(BuildContext context) {
    bool isBigTablet = MediaQuery.of(context).size.width >= 950 &&
        MediaQuery.of(context).size.width <= 1350;
    return ChangeNotifierProvider(
      create: (_) => RegisterViewmodel(),
      child: ScreenTypeLayout.builder(
        mobile: (context) => Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: const RegisterForm()),
        tablet: (context) => Container(
          padding: const EdgeInsets.symmetric(horizontal: 160),
          child: const RegisterForm(),
        ),
        desktop: (context) => Container(
          padding: EdgeInsets.symmetric(horizontal: isBigTablet ? 350 : 550),
          child: const RegisterForm(),
        ),
      ),
    );
  }
}
