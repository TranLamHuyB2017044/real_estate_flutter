import 'package:flutter/material.dart';
import 'desktop_navbar.dart';
import 'mobile_navbar.dart';

class ResponsiveNabar extends StatefulWidget {
  const ResponsiveNabar({super.key});

  @override
  State<ResponsiveNabar> createState() => _ResponsiveNabarState();
}

class _ResponsiveNabarState extends State<ResponsiveNabar> {
  bool _isDrawerOpen = false;

  void _toggleDrawer() {
    setState(() {
      _isDrawerOpen = !_isDrawerOpen;
    });
  }
  double _height = 0;

  void _toggleHeight() {
    setState(() {
      _height = _height == 0 ? 320 : 0;
    });
  }
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return screenWidth > 979
        ? const DesktopNavBar()
        : MobileNavbar(
            height: _height,
            isDrawerOpen: _isDrawerOpen,
            onDrawerToggled: _toggleHeight,
          );
  }
}
