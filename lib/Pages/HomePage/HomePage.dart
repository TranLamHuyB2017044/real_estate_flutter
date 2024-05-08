import 'package:flutter/material.dart';
import '../../Widget/NavbarWidget/Navbar.dart';
import '../../Widget/PropertyCardWidget/property_card.dart';
import '../../Widget/SlideShowWidget/slideshow.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const NavBar(),
            const SlideShow(),
            Container(
              padding: const  EdgeInsets.symmetric(vertical: 40),
              child: const Text('Featured Properties', style: TextStyle(fontSize: 32, fontWeight: FontWeight.w100),),
            ),
            const Row(
              children: [
                 PropertyCard(nameAparment: 'Big luxury Apartment', address: '📍 1350 Arbutus Drive', url: 'assets/images/property1.jpg',),
                 PropertyCard(nameAparment: 'Cozy Design Studio', address: '📍 4831 Worthington Drive', url: 'assets/images/property2.jpg',),
                 PropertyCard(nameAparment: 'Family Vila', address: '📍 4127 Winding Way', url: 'assets/images/property3.jpg',)
              ],
            )
          ],
        ),
      ),
    );
  }
}
