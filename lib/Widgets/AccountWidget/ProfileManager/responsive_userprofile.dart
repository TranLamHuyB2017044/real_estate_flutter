import 'package:flutter/material.dart';
import 'package:my_real_estate/Widgets/AccountWidget/ProfileManager/desktop_profile.dart';
import 'package:my_real_estate/Widgets/AccountWidget/ProfileManager/mobile_profile.dart';
import 'package:my_real_estate/Widgets/AccountWidget/ProfileManager/tablet_profile.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ResponsiveUserProfile extends StatefulWidget {
  const ResponsiveUserProfile({super.key});

  @override
  State<ResponsiveUserProfile> createState() => _ResponsiveUserProfileState();
}

class _ResponsiveUserProfileState extends State<ResponsiveUserProfile> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context) => MobileProfile(
        formKey: _formKey,
      ),
      tablet: (context) => TabletProfile(
        formKey: _formKey,
      ),
      desktop: (context) => DesktopProfile(
        formKey: _formKey,
      ),
    );
  }
}
