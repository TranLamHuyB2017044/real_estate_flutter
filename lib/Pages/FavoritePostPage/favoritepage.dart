import 'package:flutter/material.dart';
import 'package:my_real_estate/Widget/FavoriteWidget/responsive_favorite.dart';
import 'package:my_real_estate/Widget/NavbarWidget/drawer.dart';
import 'package:my_real_estate/Widget/NavbarWidget/responsive_appbar.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDesktop = MediaQuery.of(context).size.width > 900;
    return Scaffold(
      appBar: ResponsiveAppBar(
        isDesktop: isDesktop,
        height: isDesktop ? 100 : 60,
      ),
      drawer: !isDesktop ? const CustomDrawer() : null,
      body: const SafeArea(
        child: ResponsiveFavorite(),
      ),
    );
  }
}
