import 'package:flutter/material.dart';
import 'package:my_real_estate/Widget/ContactBussiness/contact_mobile.dart';
import 'package:my_real_estate/Widget/FooterWidget/footer.dart';
import 'package:my_real_estate/Widget/GoogleMapWidget/google_map.dart';

class ContactTablet extends StatefulWidget {
  const ContactTablet({super.key});

  @override
  State<ContactTablet> createState() => _ContactTabletState();
}

class _ContactTabletState extends State<ContactTablet> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 50),
              Container(
                  margin: const EdgeInsets.symmetric(vertical: 30),
                  child: const Text(
                    'Contact',
                    style: TextStyle(fontSize: 20, color: Colors.black54),
                  )),
              const GoogleMap(width: double.infinity, height: 400),
              const Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(flex: 1, child: GetInTouch()),
                  SizedBox(width: 30),
                  Expanded(flex: 2, child: ContactFormTablet()),
                ],
              )
            ],
          ),
        ),
        const Footer()
      ],
    );
  }
}

class ContactFormTablet extends StatefulWidget {
  const ContactFormTablet({super.key});

  @override
  State<ContactFormTablet> createState() => _ContactFormTabletState();
}

class _ContactFormTabletState extends State<ContactFormTablet> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    bool isDesktop = MediaQuery.of(context).size.width > 950;
    return Form(
      key: _formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 30),
          Container(
              margin: const EdgeInsets.symmetric(vertical: 30),
              child: Text(
                'Contact Form',
                style: TextStyle(
                    fontSize: isDesktop ? 30 : 20, color: Colors.black54),
              )),
          const SizedBox(height: 30),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(flex: 1, child: InputForm(title: 'Your Name')),
              SizedBox(width: 30),
              Expanded(flex: 1, child: InputForm(title: 'Email')),
            ],
          ),
          const SizedBox(height: 30),
          const InputForm(title: 'Subject'),
          const SizedBox(height: 30),
          const InputForm(
            title: 'Your Message',
            maxLine: 4,
          ),
          const SizedBox(height: 30),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
              decoration: BoxDecoration(
                  color: const Color(0xff0000ff),
                  borderRadius: BorderRadius.circular(3.0)),
              child: TextButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    const AlertDialog(
                      content:
                          Text('Form is not valid. Please check your input.'),
                    );
                  }
                },
                child: const Text(
                  'Send a message ',
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 100,
          )
        ],
      ),
    );
  }
}
