import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_real_estate/Pages/AddPropertyPage/add_property.dart';
import 'package:my_real_estate/Pages/AgentPage/agent.dart';
import 'package:my_real_estate/Pages/ContactPage/contactpage.dart';
import 'package:my_real_estate/Pages/DetailPropertyPage/detailpages.dart';
import 'package:my_real_estate/Pages/HomePage/homepage.dart';
import 'package:my_real_estate/Pages/AuthPage/auth.dart';
import 'package:my_real_estate/Pages/ListingPage/listing.dart';

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
    ]);
  }
}
