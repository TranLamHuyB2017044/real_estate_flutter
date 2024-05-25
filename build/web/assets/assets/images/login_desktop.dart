import 'package:flutter/material.dart';

class LoginFormDesktop extends StatefulWidget {
  const LoginFormDesktop({super.key});

  @override
  State<LoginFormDesktop> createState() => _LoginFormDesktopState();
}

class _LoginFormDesktopState extends State<LoginFormDesktop> {
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
    double isDesktopWidth = MediaQuery.of(context).size.width * 0.3;
    return Center(
      child: Container(
          width: isDesktopWidth,
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
                TextFormField(
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
                      hoverColor: Colors.grey,
                      contentPadding: EdgeInsets.fromLTRB(10, 10, 0, 10)),
                  cursorColor: Colors.grey,
                ),
                SizedBox(
                  height: 25,
                ),
                Stack(children: [
                  TextFormField(
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
                        contentPadding: EdgeInsets.fromLTRB(10, 10, 0, 10),
                        hintText: 'Password',
                        hoverColor: Colors.grey),
                    cursorColor: Colors.grey,
                  ),
                  Positioned(
                    right: 10,
                    top: 10,
                    child: GestureDetector(
                        onTap: _handleShowPassword,
                        child: _showPassword
                            ? Image.asset(
                                'assets/images/eye.png',
                                color: Colors.black54,
                                width: 30,
                                height: 30,
                                fit: BoxFit.cover,
                              )
                            : Image.asset(
                                'assets/images/eye-off.png',
                                color: Colors.black54,
                                width: 30,
                                height: 30,
                                fit: BoxFit.cover,
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
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
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
          )),
    );
  }
}
