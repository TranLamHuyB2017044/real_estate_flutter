import 'package:flutter/material.dart';
import 'package:my_real_estate/Widgets/NavbarWidget/drawer.dart';
import 'package:my_real_estate/Widgets/NavbarWidget/responsive_appbar.dart';
import 'package:my_real_estate/Widgets/NewsWidget/responsive_news.dart';
import 'package:provider/provider.dart';

import '../../Widgets/ChatbotWidget/chatbot.dart';
import '../../viewmodels/chatbot_viewmodel.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDesktop = MediaQuery.of(context).size.width > 900;
    return Scaffold(
        appBar: ResponsiveAppBar(
          isDesktop: isDesktop,
          height: isDesktop ? 100 : 60,
        ),
        drawer: !isDesktop ? const CustomDrawer() : null,
        body: SafeArea(
          child: Container(
              color: const Color(0xfff6f6f6), child: Stack(
                children: [
                  const ResponsiveNews(),
                  ChangeNotifierProvider(
                  create: (_) => ChatBot_ViewModel(),
                  child:
                      const Positioned(right: 0, bottom: 0, child: Chatbot()))
                ],
              )),
        ));
  }
}
