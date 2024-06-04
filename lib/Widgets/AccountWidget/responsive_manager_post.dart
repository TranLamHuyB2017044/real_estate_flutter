import 'package:flutter/material.dart';
import 'package:my_real_estate/Widgets/AccountWidget/mobile_manager_post.dart';

import 'package:responsive_builder/responsive_builder.dart';

class ResponsiveManagerPost extends StatelessWidget {
  const ResponsiveManagerPost({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context) => const MobileManagerPost(),
    );
  }
}
