import 'package:flutter/material.dart';
import 'package:my_real_estate/Widgets/NewsWidget/desktop_news.dart';
import 'package:my_real_estate/Widgets/NewsWidget/mobile_news.dart';
import 'package:my_real_estate/Widgets/NewsWidget/tablet_news.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ResponsiveNews extends StatelessWidget {
  const ResponsiveNews({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (e) => const MobileNews(),
      tablet: (e) => const TabletNews(),
      desktop: (e) => const DesktopNews(),
    );
  }
}
