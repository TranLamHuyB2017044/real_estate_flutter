import 'package:flutter/material.dart';

class DesktopSearch extends StatefulWidget {
  const DesktopSearch({super.key});

  @override
  State<DesktopSearch> createState() => _DesktopSearchState();
}

class _DesktopSearchState extends State<DesktopSearch> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 575,
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(4.0)),
      child: const Column(
        children: [
          SizedBox(
            height: 50,
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Address, City or ZIP',
              ),
            ),
          )
        ],
      ),
    );
  }
}
