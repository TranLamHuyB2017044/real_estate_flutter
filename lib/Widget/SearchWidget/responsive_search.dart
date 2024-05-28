import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../GoogleMapWidget/google_map.dart';
import 'desktop_search.dart';
import 'mobile_search.dart';

class ResponsiveSearch extends StatefulWidget {
  const ResponsiveSearch({super.key});

  @override
  State<ResponsiveSearch> createState() => _ResponsiveSearchState();
}

class _ResponsiveSearchState extends State<ResponsiveSearch> {
  bool _isAdvanceSearchOpen = false;

  void _toggleShowAdvanceSearch() {
    setState(() {
      _isAdvanceSearchOpen = !_isAdvanceSearchOpen;
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return screenWidth <= 1200
        ? Column(
            children: [
              GoogleMapWeb(
                width: screenWidth,
                height: 300,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: MobileSearch(widthContainer: screenWidth * 0.9),
              )
            ],
          )
        : Stack(
            children: [
              const GoogleMapWeb(
                width: 2200,
                height: 500,
              ),
              Positioned(
                  bottom: 23,
                  left: 50,
                  right: 50,
                  child: DesktopSearch(
                      showAdvancedSearch: _isAdvanceSearchOpen,
                      onAdvanceSearchShow: _toggleShowAdvanceSearch))
            ],
          );
  }
}
