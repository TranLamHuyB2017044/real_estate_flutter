import 'package:flutter/material.dart';

class Services extends StatelessWidget {
  const Services({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints){
        if(constraints.maxWidth < 600){
          return Container(
            width: 578,
            margin: const EdgeInsets.fromLTRB(0, 50, 0, 0),
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            color: Colors.white,
            child: ConstrainedBox(
              constraints: const BoxConstraints(
                  maxWidth: 578
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  ServiceItems(width: 550, icon: 'assets/images/icon-house.png', typeService: 'Properties at Great Prices', description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',),
                  ServiceItems(width: 550, icon: 'assets/images/icon-pin.png', typeService: 'Everything on One Place', description: 'In dictum ac augue et suscipit. Vivamus ac tellus ut massa',),
                  ServiceItems(width: 550, icon: 'assets/images/icon-agent.png', typeService: 'Local Agents', description: 'Vivamus ac tellus ut massa bibendum aliquam vitae ac diam.',),
                  ServiceItems(width: 550, icon: 'assets/images/icon-calculator.png', typeService: 'Free Mortgage Calculation', description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',),
                  SizedBox(height: 80,)

                ],
              ),
            ),

          );
        }
        else if (constraints.maxWidth >= 600 && constraints.maxWidth <= 879){
          return Container(
            width: 879,
            margin: const EdgeInsets.fromLTRB(0, 50, 0, 0),
            color: Colors.white,
            child: ConstrainedBox(
              constraints: const BoxConstraints(
                  maxWidth: 879
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ServiceItems(width: 300, icon: 'assets/images/icon-house.png', typeService: 'Properties at Great Prices', description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',),
                      ServiceItems(width: 300, icon: 'assets/images/icon-pin.png', typeService: 'Everything on One Place', description: 'In dictum ac augue et suscipit. Vivamus ac tellus ut massa',),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ServiceItems(width: 300, icon: 'assets/images/icon-agent.png', typeService: 'Local Agents', description: 'Vivamus ac tellus ut massa bibendum aliquam vitae ac diam.',),
                      ServiceItems(width: 300, icon: 'assets/images/icon-calculator.png', typeService: 'Free Mortgage Calculation', description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',),
                    ],
                  ),
                  SizedBox(height: 80,)


                ],
              ),
            ),

          );
        }else{
          return Container(
            height: 400,
            width: 2200,
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 100),
            margin: const EdgeInsets.fromLTRB(0, 50, 0, 0),
            color: Colors.white,
            child: ConstrainedBox(
              constraints: const BoxConstraints(
                  maxWidth: 1200
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,

                children: [
                  ServiceItems(width: 220, icon: 'assets/images/icon-house.png', typeService: 'Properties at Great Prices', description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',),
                  ServiceItems(width: 220, icon: 'assets/images/icon-pin.png', typeService: 'Everything on One Place', description: 'In dictum ac augue et suscipit. Vivamus ac tellus ut massa',),
                  ServiceItems(width: 220, icon: 'assets/images/icon-agent.png', typeService: 'Local Agents', description: 'Vivamus ac tellus ut massa bibendum aliquam vitae ac diam.',),
                  ServiceItems(width: 220, icon: 'assets/images/icon-calculator.png', typeService: 'Free Mortgage Calculation', description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',),
                ],

              ),
            ),

          );
        }
      },

    );
  }
}

class ServiceItems extends StatelessWidget {
  const ServiceItems(
      {super.key,
      required this.icon,
      required this.typeService,
      required this.description, required this.width});
  final String icon;
  final String typeService;
  final String description;
  final double width;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
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