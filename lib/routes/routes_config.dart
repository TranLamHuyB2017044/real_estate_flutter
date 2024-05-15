
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_real_estate/Pages/HomePage/homepage.dart';
import 'package:my_real_estate/Pages/SocialPage/socialpage.dart';

class RouteConfig {
  static GoRouter returnRouter() {
    return GoRouter(initialLocation: '/', routes: [
      GoRoute(
          path: '/',
          name: 'Home Page',
          pageBuilder: (context, state) {
            return const MaterialPage(child: HomePage());
          }
          ),
      GoRoute(
          path: '/social',
          name: 'Social Page',
          pageBuilder: (context, state) {
            return const MaterialPage(child: SocialPage());
          }
      ),
    ]
    );
  }
}
