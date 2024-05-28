import 'package:flutter/material.dart';
import 'package:my_real_estate/Widget/FavoriteWidget/desktop_favorite.dart';
import 'package:my_real_estate/Widget/FavoriteWidget/mobile_favorite.dart';
import 'package:my_real_estate/Widget/FavoriteWidget/tablet_favorite.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ResponsiveFavorite extends StatelessWidget {
  const ResponsiveFavorite({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context) => const MobileFavorite(),
      tablet: (context) => const TabletFavorite(),
      desktop: (context) => const DesktopFavorite(),
    );
  }
}
