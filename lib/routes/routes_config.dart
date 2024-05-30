import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_real_estate/Pages/AddPropertyPage/add_property.dart';
import 'package:my_real_estate/Pages/AgentPage/agent.dart';
import 'package:my_real_estate/Pages/ContactPage/contactpage.dart';
import 'package:my_real_estate/Pages/DetailPropertyPage/detailpages.dart';
import 'package:my_real_estate/Pages/FavoritePostPage/favoritepage.dart';
import 'package:my_real_estate/Pages/HomePage/homepage.dart';
import 'package:my_real_estate/Pages/AuthPage/auth.dart';
import 'package:my_real_estate/Pages/ListingPage/listing.dart';
import 'package:my_real_estate/Pages/NewsPage/newpage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RouteConfig {
  static GoRouter returnRouter() {
    return GoRouter(routes: [
      GoRoute(
          path: '/',
          name: 'Home Page',
          pageBuilder: (context, state) {
            return const MaterialPage(child: HomePage());
          }),
      GoRoute(
          path: '/listing',
          name: 'Listing Page',
          pageBuilder: (context, state) {
            return const MaterialPage(child: ListingPage());
          }),
      GoRoute(
          path: '/detail',
          name: 'Detail Page',
          pageBuilder: (context, state) {
            return const MaterialPage(child: DetailPropertyPages());
          }),
      GoRoute(
          path: '/login',
          name: 'Login Page',
          pageBuilder: (context, state) {
            return const MaterialPage(child: AuthPage());
          },
          redirect: (context, state) async {
            final Future<SharedPreferences> prefs0 =
                SharedPreferences.getInstance();
            final SharedPreferences prefs = await prefs0;
            final isLoggedin = prefs.getString('userInfo') != null;
            final path = state.uri.path;
            if (isLoggedin) {
              if (path == '/login') {
                return '/';
              }
            }
            return null;
          }),
      GoRoute(
          path: '/addproperty',
          name: 'Add Property Page',
          pageBuilder: (context, state) {
            return const MaterialPage(child: AddPropertyPage());
          }),
      GoRoute(
          path: '/contact',
          name: 'Contact Page',
          pageBuilder: (context, state) {
            return const MaterialPage(child: ContactPage());
          }),
      GoRoute(
          path: '/agent',
          name: 'Agent Profile Page',
          pageBuilder: (context, state) {
            return const MaterialPage(child: AgentPage());
          }),
      GoRoute(
          path: '/news',
          name: 'News Page',
          pageBuilder: (context, state) {
            return const MaterialPage(child: NewsPage());
          }),
      GoRoute(
          path: '/favorite',
          name: 'Favorite Page',
          pageBuilder: (context, state) {
            return const MaterialPage(child: FavoritePage());
          }),
    ]);
  }
}
