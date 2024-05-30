import 'package:flutter/material.dart';

// ignore: must_be_immutable
class LoginFormMobile extends StatefulWidget {
  LoginFormMobile(
      {super.key,
      required this.emailPattern,
      required this.formKey,
      required this.inputData,
      required this.isChecked,
      required this.showPassword,
      required this.onLogin,
      required this.isLoading});
  final String emailPattern;
  final GlobalKey<FormState> formKey;
  final Map<String, TextEditingController> inputData;
  bool showPassword;
  bool isChecked;
  void Function() onLogin;
  bool isLoading;

  @override
  State<LoginFormMobile> createState() => _LoginFormMobileState();
}

class _LoginFormMobileState extends State<LoginFormMobile> {
  @override
  Widget build(BuildContext context) {
    return widget.isLoading ? Container(
              margin: const EdgeInsets.fromLTRB(0, 30, 0, 0),
              child: const CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation(Colors.blue),
              )): Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Form(
          key: widget.formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 50,
              ),
              const Text(
                'Login',
                style: TextStyle(fontSize: 25),
              ),
              const SizedBox(
                height: 30,
              ),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                controller: widget.inputData['email'],
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a email';
                  }
                  if (!RegExp(widget.emailPattern).hasMatch(value)) {
                    return 'It must be a valid email';
                  }
                  return null;
                },
                decoration: const InputDecoration(
                    hintText: 'Email',
                    border: OutlineInputBorder(),
                    focusColor: Colors.grey,
                    contentPadding: EdgeInsets.fromLTRB(10, 10, 0, 0)),
                cursorColor: Colors.black,
              ),
              const SizedBox(
                height: 25,
              ),
              Stack(children: [
                TextFormField(
                  controller: widget.inputData['password'],
                  obscureText: !widget.showPassword ? true : false,
                  keyboardType: TextInputType.visiblePassword,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a password';
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey)),
                    focusColor: Colors.grey,
                    contentPadding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                    hintText: 'Password',
                  ),
                  cursorColor: Colors.black,
                ),
                Positioned(
                  right: 10,
                  top: 10,
                  child: GestureDetector(
                      onTap: () {
                        setState(() {
                          widget.showPassword = !widget.showPassword;
                        });
                      },
                      child: widget.showPassword
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
              const SizedBox(
                height: 25,
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 20),
                decoration: const BoxDecoration(
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
                            value: widget.isChecked,
                            onChanged: (bool? value) {
                              setState(() {
                                widget.isChecked = value!;
                              });
                            }),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text(
                            'Remember Me',
                            style: TextStyle(color: Colors.black54),
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
                          if (widget.formKey.currentState!.validate()) {
                            widget.onLogin();
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
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
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
