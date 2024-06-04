import 'package:flutter/material.dart';
import 'package:my_real_estate/Widgets/NavbarWidget/responsive_appbar.dart';
import '../../Widgets/DetailInfoProperty/detailinfo.dart';
import '../../Widgets/NavbarWidget/drawer.dart';

class DetailPropertyPages extends StatefulWidget {
  const DetailPropertyPages({super.key});

  @override
  State<DetailPropertyPages> createState() => _DetailPropertyPagesState();
}

class _DetailPropertyPagesState extends State<DetailPropertyPages> {
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
        child: DetailInfoLayout(),
      ),
    );
  }
}
