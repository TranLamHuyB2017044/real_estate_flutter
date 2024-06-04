import 'package:flutter/material.dart';
import 'package:my_real_estate/Widgets/AccountWidget/PostManager/desktop_manager_post.dart';
import 'package:my_real_estate/Widgets/AccountWidget/PostManager/mobile_manager_post.dart';
import 'package:my_real_estate/Widgets/AccountWidget/PostManager/tablet_manager_post.dart';

import 'package:responsive_builder/responsive_builder.dart';

class ResponsiveManagerPost extends StatelessWidget {
  const ResponsiveManagerPost({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context) => const MobileManagerPost(),
      tablet: (context) => const TabletManagerPost(),
      desktop: (context) => const DesktopManagerPost(),
    );
  }
}
