import 'package:flutter/material.dart';
import 'package:my_real_estate/Widgets/ContactBussiness/contact_mobile.dart';
import 'package:my_real_estate/Widgets/ContactBussiness/contact_tablet.dart';
import 'package:my_real_estate/Widgets/FooterWidget/footer.dart';
import 'package:my_real_estate/Widgets/GoogleMapWidget/google_map.dart';

class ContactDesktop extends StatefulWidget {
  const ContactDesktop({super.key});

  @override
  State<ContactDesktop> createState() => _ContactDesktopState();
}

class _ContactDesktopState extends State<ContactDesktop> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 200),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 50),
              Container(
                  margin: const EdgeInsets.symmetric(vertical: 30),
                  child: const Text(
                    'Contact',
                    style: TextStyle(fontSize: 30, color: Colors.black54),
                  )),
              const GoogleMapWeb(width: double.infinity, height: 400),
              const Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(flex: 1, child: GetInTouch()),
                  SizedBox(width: 30),
                  Expanded(flex: 2, child: ContactFormTablet()),
                ],
              )
            ],
          ),
        ),
        const Footer()
      ],
    );
  }
}
