import 'package:flutter/material.dart';
import '../../Widget/GoogleMapWidget/google_map.dart';
import '../../Widget/NavbarWidget/responsive_navbar.dart';
import '../../Widget/ContactWidget/contact.dart';
import '../../Widget/FooterWidget/footer.dart';
import '../../Widget/ForSaleWidget/for_sale_section.dart';
// import '../../Widget/GoogleMapWidget/google_map.dart';
import '../../Widget/NavbarWidget/desktop_navbar.dart';
import '../../Widget/PropertyCardWidget/property_card.dart';
// import '../../Widget/SearchWidget/mobile_search.dart';
import '../../Widget/SearchWidget/responsive_search.dart';
import '../../Widget/ServiceWidget/services.dart';
import '../../Widget/SlideShowWidget/slideshow.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color.fromRGBO(206, 206, 206, 0.2),
        child: const SingleChildScrollView(
          child: Column(
            children: [
              ResponsiveNabar(),
              ResponsiveSearch()
              // const SlideShow(),
              // Container(
              //   padding: const  EdgeInsets.symmetric(vertical: 40),
              //   child: const Text('Featured Properties', style: TextStyle(fontSize: 32, fontWeight: FontWeight.w100),),
              // ),
              // ConstrainedBox(
              //   constraints: const BoxConstraints(
              //     maxWidth: 1200
              //   ),
              //   child: Column(
              //     children: [
              //       const Row(
              //         mainAxisAlignment: MainAxisAlignment.spaceAround,
              //         children: [
              //            PropertyCard(nameAparment: 'Big luxury Apartment', address: '📍 1350 Arbutus Drive', url: 'assets/images/property1.jpg', price: '\$350,000',),
              //            PropertyCard(nameAparment: 'Cozy Design Studio', address: '📍 4831 Worthington Drive', url: 'assets/images/property2.jpg', price: '\$125,000',),
              //            PropertyCard(nameAparment: 'Family Vila', address: '📍 4127 Winding Way', url: 'assets/images/property3.jpg', price: '\$45,900',)
              //         ],
              //       ),
              //       Container(
              //           margin: const EdgeInsets.fromLTRB(0, 50, 0, 0),
              //           padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 16),
              //           decoration: BoxDecoration(
              //               borderRadius: BorderRadius.circular(3),
              //             border: Border.all(color: Colors.grey, width: 0.3)
              //           ),
              //           child: TextButton(onPressed: (){}, child: const Text('Show All Properties', style: TextStyle(color: Colors.black),)))
              //     ],
              //   ),
              // ),
              // const Services(),
              // const ContactSection(),
              // const ForSale(),
              // // const SearchWidget(),
              // const Footer()
            ],
          ),
        ),
      ),
    );
  }
}
