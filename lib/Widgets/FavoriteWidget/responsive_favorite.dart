import 'package:flutter/material.dart';
import 'package:my_real_estate/Widgets/FavoriteWidget/desktop_favorite.dart';
import 'package:my_real_estate/Widgets/FavoriteWidget/mobile_favorite.dart';
import 'package:my_real_estate/Widgets/FavoriteWidget/tablet_favorite.dart';
import 'package:my_real_estate/Widgets/PostsWidget/post.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ResponsiveFavorite extends StatelessWidget {
  const ResponsiveFavorite({
    super.key,
    required this.favoriteList,
  });

  final List<UserPosts> favoriteList;
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context) => MobileFavorite(favoriteList: favoriteList),
      tablet: (context) => TabletFavorite(favoriteList: favoriteList),
      desktop: (context) => DesktopFavorite(favoriteList: favoriteList),
    );
  }
}
