import 'package:flutter/material.dart';
import '../../Widget/NavbarWidget/responsive_navbar.dart';
import '../../Widget/ContactWidget/contact.dart';
import '../../Widget/FooterWidget/footer.dart';
import '../../Widget/ForSaleWidget/for_sale_section.dart';
import '../../Widget/PropertyCardWidget/property_responsive_card.dart';
import '../../Widget/SearchWidget/responsive_search.dart';
import '../../Widget/ServiceWidget/services.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        color: const Color(0xfff4f2ee),
        child: ListView(
          children: [
            const ResponsiveNabar(),
            const ResponsiveSearch(),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 40),
              child: const Text(
                'Featured Properties',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.w100,),
                textAlign: TextAlign.center,
              ),
            ),
            Column(
              children: [
                const ResponsiveCardProperty(),
                Container(
                    margin: const EdgeInsets.fromLTRB(0, 50, 0, 0),
                    padding:
                        const EdgeInsets.symmetric(vertical: 4, horizontal: 16),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                        border: Border.all(color: Colors.grey, width: 0.3)),
                    child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Show All Properties',
                          style: TextStyle(color: Colors.black),
                        )))
              ],
            ),
            const Services(),
            const ContactSection(),
            const ForSale(),
            const Footer()
          ],
        ),
      ),
    );
  }
}
