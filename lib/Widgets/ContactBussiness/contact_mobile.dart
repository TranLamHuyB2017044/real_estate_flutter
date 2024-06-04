import 'package:flutter/material.dart';
import 'package:my_real_estate/Widgets/FooterWidget/footer.dart';
import 'package:my_real_estate/Widgets/GoogleMapWidget/google_map.dart';

class ContactMobile extends StatefulWidget {
  const ContactMobile({super.key});

  @override
  State<ContactMobile> createState() => _ContactMobileState();
}

class _ContactMobileState extends State<ContactMobile> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
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
              const GoogleMapWeb(width: double.infinity, height: 300),
              const GetInTouch(),
              const ContactForm(),
            ],
          ),
        ),
        const Footer()
      ],
    );
  }
}

class GetInTouch extends StatelessWidget {
  const GetInTouch({super.key});
  @override
  Widget build(BuildContext context) {
    bool isDesktop = MediaQuery.of(context).size.width > 950;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 30),
        Container(
            margin: const EdgeInsets.symmetric(vertical: 30),
            child: Text(
              'Get In Touch',
              style: TextStyle(
                  fontSize: isDesktop ? 30 : 20, color: Colors.black54),
            )),
        const Text(
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec placerat tempor sapien. In lobortis posuere tincidunt.',
          style: TextStyle(color: Colors.black54, fontSize: 14),
        ),
        const SizedBox(height: 20),
        const Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.phone,
              size: 25,
              color: Colors.grey,
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Phone',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5,
                ),
                Text('+ 1 923-212-2222')
              ],
            )
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        const Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.email,
              size: 25,
              color: Colors.grey,
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Email',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5,
                ),
                Text('tlhuy02@gmail.com')
              ],
            )
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        const Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.phone,
              size: 25,
              color: Colors.grey,
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Zichat',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5,
                ),
                Text('@tlhuy')
              ],
            )
          ],
        )
      ],
    );
  }
}

class ContactForm extends StatefulWidget {
  const ContactForm({super.key});

  @override
  State<ContactForm> createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 30),
          Container(
              margin: const EdgeInsets.symmetric(vertical: 30),
              child: const Text(
                'Contact Form',
                style: TextStyle(fontSize: 20, color: Colors.black54),
              )),
          const SizedBox(height: 30),
          const InputForm(title: 'Your Name'),
          const SizedBox(height: 30),
          const InputForm(title: 'Email'),
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

class InputForm extends StatelessWidget {
  const InputForm(
      {super.key, required this.title, this.hintText, this.maxLine});
  final String title;
  final String? hintText;
  final int? maxLine;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        label: Text(
          title,
          style: const TextStyle(
              color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 14),
        ),
        border: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey)),
        // contentPadding: EdgeInsets.all(8),
        focusColor: Colors.grey,
        fillColor: Colors.white,
        filled: true,
        hintText: hintText,
        focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black54)),
        contentPadding:
            const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
      ),
      cursorColor: Colors.black,
      cursorHeight: 20,
      cursorWidth: 0.5,
      maxLines: maxLine,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'This field is required';
        }
        return null;
      },
    );
  }
}
