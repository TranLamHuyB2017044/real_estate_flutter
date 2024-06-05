import 'package:flutter/material.dart';
import 'package:my_real_estate/Widgets/FooterWidget/footer.dart';

class MobileCustomer extends StatefulWidget {
  const MobileCustomer({super.key});

  @override
  State<MobileCustomer> createState() => _MobileCustomerState();
}

class _MobileCustomerState extends State<MobileCustomer> {
  bool switchValue = true;
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
            margin: const EdgeInsets.fromLTRB(0, 10, 0, 20),
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Customer Manager',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4.0),
                            border:
                                Border.all(color: Colors.black, width: 0.2)),
                        child: const Row(
                          children: [
                            Icon(
                              Icons.contact_phone_outlined,
                              size: 20,
                              color: Colors.black54,
                            ),
                            Text(
                              ' | ',
                              style: TextStyle(
                                  color: Colors.black54, fontSize: 20),
                            ),
                            Icon(
                              Icons.list,
                              size: 25,
                              color: Colors.black54,
                            ),
                          ],
                        )),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4.0),
                            border:
                                Border.all(color: Colors.black, width: 0.2)),
                        child: const Icon(
                          Icons.search,
                          size: 20,
                          color: Colors.black54,
                        )),
                    const SizedBox(
                      width: 20,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Switch(
                      onChanged: (bool value) {
                        setState(() {
                          switchValue = value;
                        });
                      },
                      value: switchValue,
                      activeColor: Colors.blue,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text('Only unread')
                  ],
                ),
              ],
            )),
        Container(
          width: double.infinity * 0.5,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            children: [
              Image.asset(
                'assets/images/search-user.png',
                width: 200,
                height: 200,
              ),
              const Text(
                'There are no customers yet ',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const Text(
                'You currently don\'t have any customers',
                style: TextStyle(color: Colors.black54),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        const Footer()
      ],
    );
  }
}
