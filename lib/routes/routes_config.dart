
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_real_estate/Pages/DetailPropertyPage/detailpages.dart';
import 'package:my_real_estate/Pages/HomePage/homepage.dart';
import 'package:my_real_estate/Pages/SocialPage/socialpage.dart';

class RouteConfig {
  static GoRouter returnRouter() {
    return GoRouter(routes: [
      GoRoute(
          path: '/',
          name: 'Home Page',
          pageBuilder: (context, state) {
            return const MaterialPage(child: HomePage());
          }
          ),
      GoRoute(
          path: '/listing',
          name: 'Listing Page',
          pageBuilder: (context, state) {
            return const MaterialPage(child: SocialPage());
          }
      ),
      GoRoute(
          path: '/detail',
          name: 'Detail Page',
          pageBuilder: (context, state) {
            return const MaterialPage(child: DetailPropertyPages());
          }
      ),
    ]
    );
  }
}
