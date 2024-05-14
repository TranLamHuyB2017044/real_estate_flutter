import 'package:flutter/material.dart';
import 'package:my_real_estate/Widget/PropertyCardWidget/property_card.dart';

class ResponsiveCardProperty extends StatefulWidget {
  const ResponsiveCardProperty({super.key});

  @override
  State<ResponsiveCardProperty> createState() => _ResponsiveCardPropertyState();
}

class _ResponsiveCardPropertyState extends State<ResponsiveCardProperty> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth < 768) {
            return const Column(
              children: [
                PropertyCard(
                  nameAparment: 'Big luxury Apartment',
                  address: '📍 1350 Arbutus Drive',
                  url: 'assets/images/property1.jpg',
                  price: '\$350,000',
                  maxWidth: 360,
                ),
                PropertyCard(
                  nameAparment: 'Cozy Design Studio',
                  address: '📍 4831 Worthington Drive',
                  url: 'assets/images/property2.jpg',
                  price: '\$125,000',
                  maxWidth: 360,
                ),
                PropertyCard(
                  nameAparment: 'Family Vila',
                  address: '📍 4127 Winding Way',
                  url: 'assets/images/property3.jpg',
                  price: '\$45,900',
                  maxWidth: 360,
                )
              ],
            );
          }else if (constraints.maxWidth >= 768 && constraints.maxWidth <= 1200){
            return const Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [

                    PropertyCard(
                      nameAparment: 'Big luxury Apartment',
                      address: '📍 1350 Arbutus Drive',
                      url: 'assets/images/property1.jpg',
                      price: '\$350,000',
                      maxWidth: 360,
                    ),
                    PropertyCard(
                      nameAparment: 'Cozy Design Studio',
                      address: '📍 4831 Worthington Drive',
                      url: 'assets/images/property2.jpg',
                      price: '\$125,000',
                      maxWidth: 360,
                    ),
                  ],
                ),
                PropertyCard(
                  nameAparment: 'Family Vila',
                  address: '📍 4127 Winding Way',
                  url: 'assets/images/property3.jpg',
                  price: '\$45,900',
                  maxWidth: 360,
                )
              ],
            );
          }else{
            return ConstrainedBox(
              constraints: const BoxConstraints(
                maxWidth: 1200
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  PropertyCard(
                    nameAparment: 'Big luxury Apartment',
                    address: '📍 1350 Arbutus Drive',
                    url: 'assets/images/property1.jpg',
                    price: '\$350,000',
                    maxWidth: 360,
                  ),
                  PropertyCard(
                    nameAparment: 'Cozy Design Studio',
                    address: '📍 4831 Worthington Drive',
                    url: 'assets/images/property2.jpg',
                    price: '\$125,000',
                    maxWidth: 360,
                  ),
                  PropertyCard(
                    nameAparment: 'Family Vila',
                    address: '📍 4127 Winding Way',
                    url: 'assets/images/property3.jpg',
                    price: '\$45,900',
                    maxWidth: 360,
                  )
                ],
              ),
            );
          }
      }
    );
  }
}
