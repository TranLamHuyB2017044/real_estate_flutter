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
              const GoogleMap(),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: MobileSearch(
                    showAdvancedSearch: _isAdvanceSearchOpen,
                    onAdvanceSearchShow: _toggleShowAdvanceSearch),
              )
            ],
          )
        : Stack(
            children: [
              const GoogleMap(),
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
