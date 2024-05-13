import 'package:flutter/material.dart';
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
    return screenWidth <= 550 ? const Column(
      children: [
        GoogleMap(),
        Padding(
          padding: EdgeInsets.all(10.0),
          child: MobileSearch(
              showAdvancedSearch: _isAdvanceSearchOpen,
              onAdvanceSearchShow: _toggleShowAdvanceSearch


          ),
        )
      ],
    ) : const Stack(
      children: [
        GoogleMap(),
        DesktopSearch()
      ],
    );
  }
}
