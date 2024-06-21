import 'package:flutter/material.dart';
import 'package:my_real_estate/Widgets/AgentWidget/responsive_agent.dart';
import 'package:my_real_estate/Widgets/ChatbotWidget/chatbot.dart';
import 'package:my_real_estate/Widgets/NavbarWidget/drawer.dart';
import 'package:my_real_estate/Widgets/NavbarWidget/responsive_appbar.dart';
import 'package:my_real_estate/viewmodels/chatbot_viewmodel.dart';
import 'package:provider/provider.dart';

class AgentPage extends StatelessWidget {
  const AgentPage({super.key});

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
        color: const Color(0xfff6f6f6),
        child: Stack(
          children: [
            const ResponsiveAgent(),
            ChangeNotifierProvider(
                create: (_) => ChatBot_ViewModel(),
                child: const Positioned(right: 0, bottom: 0, child: Chatbot()))
          ],
        ),
      )),
    );
  }
}
