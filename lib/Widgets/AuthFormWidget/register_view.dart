import 'package:flutter/material.dart';
import 'package:my_real_estate/Widgets/AuthFormWidget/register_form.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';
import '../../viewmodels/register_viewmodel.dart';

class ResponsiveRegisterView extends StatelessWidget {
  const ResponsiveRegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => RegisterViewmodel(),
      child: ScreenTypeLayout.builder(
        mobile: (context) => Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child:  const RegisterForm()),
        tablet: (context) => Container(
          width: 500,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: const RegisterForm(),
        ),
        desktop: (context) => Container(
          width: 450,
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: const RegisterForm(),
        ),
      ),
    );
  }
}
