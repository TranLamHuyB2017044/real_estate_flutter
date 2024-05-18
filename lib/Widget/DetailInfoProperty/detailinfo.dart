import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
class DetailPropertyInfo extends StatefulWidget {
  const DetailPropertyInfo({super.key});

  @override
  State<DetailPropertyInfo> createState() => _DetailPropertyInfoState();
}

class _DetailPropertyInfoState extends State<DetailPropertyInfo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 1200),
      padding: const EdgeInsets.symmetric(horizontal: 30),
      margin: const EdgeInsets.symmetric(vertical: 30),
      child: const Column(
        children: [
          QickInfo(),
          Description(),
          // Feature(),

        ],
      ),
    );
  }
}


class QickInfo extends StatefulWidget {
  const QickInfo({super.key});

  @override
  State<QickInfo> createState() => _QickInfoState();
}

class _QickInfoState extends State<QickInfo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Quick Info', style: TextStyle(fontSize: 24),),
          Container(
            decoration:  BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(3.0),
            ),
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            child: const Column(
              children: [


              ],
            ),
          )
        ],
      ),
    );
  }
}


class Description extends StatefulWidget {
  const Description({super.key});

  @override
  State<Description> createState() => _DescriptionState();
}

class _DescriptionState extends State<Description> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
