import 'package:flutter/material.dart';

class DesktopFavorite extends StatefulWidget {
  const DesktopFavorite({super.key});

  @override
  State<DesktopFavorite> createState() => _DesktopFavoriteState();
}

class _DesktopFavoriteState extends State<DesktopFavorite> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      child: Text('heel favorite Desktop'),
    );
  }
}