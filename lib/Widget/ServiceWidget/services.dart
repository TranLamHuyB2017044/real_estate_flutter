import 'package:flutter/material.dart';

class Services extends StatelessWidget {
  const Services({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 2500,
      margin: const EdgeInsets.fromLTRB(0, 50, 0, 0),
      color: Colors.white,
      child: ConstrainedBox(
        constraints: const BoxConstraints(
          maxWidth: 1200
        ),
        child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ServiceItems(icon: 'assets/images/icon-house.png', typeService: 'Properties at Great Prices', description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',),
              ServiceItems(icon: 'assets/images/icon-pin.png', typeService: 'Everything on One Place', description: 'In dictum ac augue et suscipit. Vivamus ac tellus ut massa',),
              ServiceItems(icon: 'assets/images/icon-agent.png', typeService: 'Local Agents', description: 'Vivamus ac tellus ut massa bibendum aliquam vitae ac diam.',),
              ServiceItems(icon: 'assets/images/icon-calculator.png', typeService: 'Free Mortgage Calculation', description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',)
            ],
          ),
      ),

    );
  }
}

class ServiceItems extends StatelessWidget {
  const ServiceItems(
      {super.key,
      required this.icon,
      required this.typeService,
      required this.description});
  final String icon;
  final String typeService;
  final String description;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      margin: const EdgeInsets.fromLTRB(0, 100, 0, 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Image.asset(icon),
              Positioned(
                  left: 0,
                  bottom: 0,
                  child: SizedBox(
                      width: 35,
                      height: 35,
                      child: Image.asset('assets/images/check-alt-svgrepo-com.png')))
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Text(typeService, style: const TextStyle(fontSize: 18),),
          ),
          Text(description, style: const TextStyle(color: Colors.black54), textAlign: TextAlign.justify,)
        ],
      ),
    );
  }
}
