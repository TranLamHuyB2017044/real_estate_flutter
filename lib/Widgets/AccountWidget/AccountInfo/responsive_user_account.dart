import 'package:flutter/material.dart';
import 'package:my_real_estate/Widgets/AccountWidget/AccountInfo/desktop_user_account.dart';
import 'package:my_real_estate/Widgets/AccountWidget/AccountInfo/mobile_user_account.dart';
import 'package:my_real_estate/Widgets/AccountWidget/AccountInfo/tablet_user_account.dart';

import 'package:responsive_builder/responsive_builder.dart';

class ResponsiveUserAccount extends StatelessWidget {
  const ResponsiveUserAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context) => const MobileUserAccount(),
      tablet: (context) => const TabletUserAccount(),
      desktop: (context) => const DesktopUserAccount(),
    );
  }
}
