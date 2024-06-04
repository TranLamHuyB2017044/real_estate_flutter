import 'package:flutter/material.dart';
import 'package:my_real_estate/Widgets/FooterWidget/footer.dart';

class MobileProfile extends StatefulWidget {
  const MobileProfile({super.key, required this.formKey});
  final GlobalKey<FormState> formKey;

  @override
  State<MobileProfile> createState() => _MobileProfileState();
}

class _MobileProfileState extends State<MobileProfile> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Form(
          key: widget.formKey,
          child: Column(
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                decoration:
                    const BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 0),
                      blurRadius: 7,
                      spreadRadius: -1,
                      color: Colors.grey)
                ]),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.fromLTRB(0, 20, 10, 30),
                      child: Text(
                        'Personal Info',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                    Center(
                      child: Container(
                        padding: const EdgeInsets.all(20),
                        margin: const EdgeInsets.fromLTRB(0, 0, 0, 30),
                        height: 100,
                        width: 130,
                        decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 200, 198, 198),
                            shape: BoxShape.circle),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.camera_alt_outlined,
                              color: Colors.black54,
                            ),
                            Text(
                              'upload avatar',
                              style: TextStyle(
                                  fontSize: 14, color: Colors.black54),
                            )
                          ],
                        ),
                      ),
                    ),
                    TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter a full name';
                        }

                        return null;
                      },
                      decoration: const InputDecoration(
                          hintText: 'Nguyen Van A',
                          label: Text('Full Name'),
                          border: OutlineInputBorder(),
                          focusColor: Colors.grey,
                          contentPadding: EdgeInsets.fromLTRB(10, 10, 0, 0)),
                      cursorColor: Colors.black,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter a tax number';
                        }

                        return null;
                      },
                      decoration: const InputDecoration(
                          hintText: 'Example: 1234567890',
                          label: Text('Tax Number'),
                          border: OutlineInputBorder(),
                          focusColor: Colors.grey,
                          contentPadding: EdgeInsets.fromLTRB(10, 10, 0, 0)),
                      cursorColor: Colors.black,
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                decoration:
                    const BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 0),
                      blurRadius: 7,
                      spreadRadius: -1,
                      color: Colors.grey)
                ]),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.fromLTRB(0, 20, 10, 30),
                      child: Text(
                        'Contact Info',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                    TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter a phone number';
                        }

                        return null;
                      },
                      decoration: const InputDecoration(
                          label: Text('Phone Number'),
                          border: OutlineInputBorder(),
                          focusColor: Colors.grey,
                          contentPadding: EdgeInsets.fromLTRB(10, 10, 0, 0)),
                      cursorColor: Colors.black,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter a email';
                        }

                        return null;
                      },
                      decoration: const InputDecoration(
                          hintText: 'nva@gmail.com',
                          label: Text('Email'),
                          border: OutlineInputBorder(),
                          focusColor: Colors.grey,
                          contentPadding: EdgeInsets.fromLTRB(10, 10, 0, 0)),
                      cursorColor: Colors.black,
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                decoration:
                    const BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 0),
                      blurRadius: 7,
                      spreadRadius: -1,
                      color: Colors.grey)
                ]),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.fromLTRB(0, 20, 10, 20),
                      child: Text(
                        'Receipt Info',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                    TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter a customer name';
                        }

                        return null;
                      },
                      decoration: const InputDecoration(
                          hintText: 'Nguyen Van A',
                          label: Text('Customer Name'),
                          border: OutlineInputBorder(),
                          focusColor: Colors.grey,
                          contentPadding: EdgeInsets.fromLTRB(10, 10, 0, 0)),
                      cursorColor: Colors.black,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter receive email';
                        }

                        return null;
                      },
                      decoration: const InputDecoration(
                          hintText: 'nva@gmail.com',
                          label: Text('Email'),
                          border: OutlineInputBorder(),
                          focusColor: Colors.grey,
                          contentPadding: EdgeInsets.fromLTRB(10, 10, 0, 0)),
                      cursorColor: Colors.black,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter company name';
                        }

                        return null;
                      },
                      decoration: const InputDecoration(
                          label: Text('Company Name'),
                          border: OutlineInputBorder(),
                          focusColor: Colors.grey,
                          contentPadding: EdgeInsets.fromLTRB(10, 10, 0, 0)),
                      cursorColor: Colors.black,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter tax number';
                        }

                        return null;
                      },
                      decoration: const InputDecoration(
                          hintText: 'Example: 1234567890',
                          label: Text('Tax Number'),
                          border: OutlineInputBorder(),
                          focusColor: Colors.grey,
                          contentPadding: EdgeInsets.fromLTRB(10, 10, 0, 0)),
                      cursorColor: Colors.black,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter address';
                        }

                        return null;
                      },
                      decoration: const InputDecoration(
                          label: Text('Address'),
                          border: OutlineInputBorder(),
                          focusColor: Colors.grey,
                          contentPadding: EdgeInsets.fromLTRB(10, 10, 0, 0)),
                      cursorColor: Colors.black,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration:
                      const BoxDecoration(color: Colors.white, boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 0),
                        blurRadius: 7,
                        spreadRadius: -1,
                        color: Colors.grey)
                  ]),
                  width: double.infinity,
                  child: TextButton(
                    onPressed: () {
                      if (widget.formKey.currentState!.validate()) {
                        showAboutDialog(
                          context: context,
                        );
                      }
                    },
                    style: ButtonStyle(
                      shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5))),
                      backgroundColor:
                          WidgetStateProperty.all<Color>(Colors.blue),
                    ),
                    child: const Text(
                      'Save Changes',
                      style: TextStyle(color: Colors.white),
                    ),
                  )),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const Footer()
      ],
    );
  }
}
