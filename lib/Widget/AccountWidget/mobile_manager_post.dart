import 'package:flutter/material.dart';
import 'package:my_real_estate/Widget/FooterWidget/footer.dart';

class MobileManagerPost extends StatelessWidget {
  const MobileManagerPost({super.key});

  @override
  Widget build(BuildContext context) {
    List properties = [];
    return properties.isEmpty
        ? ListView(
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: const Text(
                  'List Post',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                width: double.infinity,
                height: 300,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            'assets/images/property-visitcard.png'))),
              ),
              const Text(
                'Your post will be reaches more than 6 milion people find sale/rent properties every month',
                style: TextStyle(),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  width: double.infinity,
                  child: TextButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5))),
                      backgroundColor:
                          WidgetStateProperty.all<Color>(Colors.blue),
                    ),
                    child: const Text(
                      'Upload a post now',
                      style: TextStyle(color: Colors.white),
                    ),
                  )),
              const SizedBox(
                height: 20,
              ),
              const Footer()
            ],
          )
        : ListView(
            children: [
              Center(
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: const Text(
                    'Its still have not a post',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Footer()
            ],
          );
  }
}
