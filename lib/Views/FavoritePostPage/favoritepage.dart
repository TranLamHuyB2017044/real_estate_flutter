import 'package:flutter/material.dart';
import 'package:my_real_estate/Widgets/ChatbotWidget/chatbot.dart';
import 'package:my_real_estate/Widgets/FavoriteWidget/responsive_favorite.dart';
import 'package:my_real_estate/Widgets/NavbarWidget/drawer.dart';
import 'package:my_real_estate/Widgets/NavbarWidget/responsive_appbar.dart';
import 'package:my_real_estate/Widgets/PostsWidget/post.dart';
import 'package:my_real_estate/viewmodels/chatbot_viewmodel.dart';
import 'package:provider/provider.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({super.key});

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    bool isDesktop = MediaQuery.of(context).size.width > 900;

    List<UserPosts> favoriteLists = [
      UserPosts(
        routeName: 'Detail Page',
        avatar: 'assets/images/optimus.png',
        job: 'Bussiness Management',
        username: 'Alex Telles',
        content:
            'WELCOME ABOARD, MANAGEMENT TRAINEE BATCH 2024, TO SUNTORY PEPSICO FAMILY!',
        postImage: 'assets/images/img-detail-03.jpg',
        isFavorite: true,
      ),
      UserPosts(
        routeName: 'Detail Page',
        avatar: 'assets/images/ronaldo.jpg',
        job: 'Football Player',
        username: 'Cristiano Ronaldo',
        content:
            'WELCOME ABOARD, MANAGEMENT TRAINEE BATCH 2024, TO SUNTORY PEPSICO FAMILY!',
        postImage: 'assets/images/img-detail-05.jpg',
        isFavorite: true,
      ),
      UserPosts(
        routeName: 'Detail Page',
        avatar: 'assets/images/faker.jpg',
        job: 'Football Player',
        username: 'lee sang hyuk',
        content:
            'WELCOME ABOARD, MANAGEMENT TRAINEE BATCH 2024, TO SUNTORY PEPSICO FAMILY!',
        postImage: 'assets/images/property2.jpg',
        isFavorite: true,
      ),
    ];
    return Scaffold(
      appBar: ResponsiveAppBar(
        isDesktop: isDesktop,
        height: isDesktop ? 100 : 60,
      ),
      drawer: !isDesktop ? const CustomDrawer() : null,
      body: SafeArea(
        child: Stack(
          children: [
            ResponsiveFavorite(favoriteList: favoriteLists),
            ChangeNotifierProvider(
                  create: (_) => ChatBot_ViewModel(),
                  child:
                      const Positioned(right: 0, bottom: 0, child: Chatbot()))
          ],
        ),
      ),
    );
  }
}
