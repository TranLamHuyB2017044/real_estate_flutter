import 'package:flutter/material.dart';
import 'package:my_real_estate/Widget/FooterWidget/footer.dart';

class LoginFormMobile extends StatefulWidget {
  const LoginFormMobile({super.key});

  @override
  State<LoginFormMobile> createState() => _LoginFormMobileState();
}

class _LoginFormMobileState extends State<LoginFormMobile> {
  final _formKey = GlobalKey<FormState>();
  bool _isChecked = false;
  void _onChecked(bool? value) {
    setState(() {
      _isChecked = value!;
    });
  }

  bool _showPassword = false;

  void _handleShowPassword() {
    setState(() {
      _showPassword = !_showPassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 20),

        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 50,
              ),
              Text(
                'Login',
                style: TextStyle(fontSize: 25),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 55,
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a email';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      hintText: 'Email',
                      border: OutlineInputBorder(),
                      focusColor: Colors.grey,
                      contentPadding: EdgeInsets.fromLTRB(10, 10, 0, 0)),
                  cursorColor: Colors.black,
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Stack(children: [
                Container(
                  height: 55,
                  child: TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter a password';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey)),
                      focusColor: Colors.grey,
                      contentPadding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                      hintText: 'Password',
                    ),
                    cursorColor: Colors.black,
                  ),
                ),
                Positioned(
                  right: 10,
                  top: 0,
                  bottom: 5,
                  child: GestureDetector(
                      onTap: _handleShowPassword,
                      child: _showPassword
                          ? Image.asset(
                              'assets/images/eye.png',
                              color: Colors.black54,
                              width: 30,
                              height: 30,
                            )
                          : Image.asset(
                              'assets/images/eye-off.png',
                              color: Colors.black54,
                              width: 30,
                              height: 30,
                            )),
                )
              ]),
              SizedBox(
                height: 25,
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 20),
                decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(color: Colors.grey, width: 0.3)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Checkbox(
                            checkColor: Colors.white,
                            activeColor: Colors.blue,
                            value: _isChecked,
                            onChanged: _onChecked),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text(
                            'Remember Me',
                            style: const TextStyle(color: Colors.black54),
                          ),
                        )
                      ],
                    ),
                    TextButton(
                        style: TextButton.styleFrom(
                            backgroundColor: const Color(0xff0000ff),
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(3.0))),
                            padding: const EdgeInsets.symmetric(
                                vertical: 16, horizontal: 20)),
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            AlertDialog(
                              content: Text(
                                  'Form is not valid. Please check your input.'),
                            );
                          }
                        },
                        child: const Text('Login',
                            style: TextStyle(color: Colors.white))),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/sync-icon.png',
                      color: const Color(0xff0000ff),
                      width: 13,
                      height: 13,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        'i have forgot my password',
                        style: TextStyle(color: Colors.grey, fontSize: 13),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
