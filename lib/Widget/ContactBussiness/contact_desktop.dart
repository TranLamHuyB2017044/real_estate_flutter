import 'package:flutter/material.dart';
import 'package:my_real_estate/Widget/ContactBussiness/contact_mobile.dart';
import 'package:my_real_estate/Widget/ContactBussiness/contact_tablet.dart';
import 'package:my_real_estate/Widget/FooterWidget/footer.dart';
import 'package:my_real_estate/Widget/GoogleMapWidget/google_map.dart';

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
          padding: EdgeInsets.symmetric(horizontal: 200),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50),
              Container(
                  margin: EdgeInsets.symmetric(vertical: 30),
                  child: Text(
                    'Contact',
                    style: TextStyle(fontSize: 30, color: Colors.black54),
                  )),
              const GoogleMap(width: double.infinity, height: 400),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(flex: 1, child: const GetInTouch()),
                  SizedBox(width: 30),
                  Expanded(flex: 2, child: const ContactFormTablet()),
                ],
              )
            ],
          ),
        ),
        Footer()
      ],
    );
  }
}
