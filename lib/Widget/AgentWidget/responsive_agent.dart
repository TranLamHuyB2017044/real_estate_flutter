import 'package:flutter/material.dart';
import 'package:my_real_estate/Widget/AgentWidget/desktop_agent.dart';
import 'package:my_real_estate/Widget/AgentWidget/mobile_agent.dart';
import 'package:my_real_estate/Widget/AgentWidget/tablet_agent.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ResponsiveAgent extends StatelessWidget {
  const ResponsiveAgent({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context) => const MobileAgent(),
      tablet: (context) => const TabletAgent(),
      desktop: (context) => const DesktopAgent(),
    );
  }
}
