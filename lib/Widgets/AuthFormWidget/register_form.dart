import 'package:flutter/material.dart';
import 'package:my_real_estate/extensions/hover_extension.dart';
import 'package:provider/provider.dart';
import '../../viewmodels/register_viewmodel.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({super.key});

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  @override
  Widget build(BuildContext context) {
    return Consumer<RegisterViewmodel>(builder: (context, viewModel, child) {
      return viewModel.isLoading
          ? Container(
              margin: const EdgeInsets.fromLTRB(0, 30, 0, 0),
              child: const CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation(Colors.blue),
              ))
          : Form(
              key: viewModel.formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  const Text(
                    'Register',
                    style: TextStyle(fontSize: 25),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    controller: viewModel.fullname,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter a fullname';
                      }
                      return null;
                    },
                    decoration: const InputDecoration(
                        hintText: 'Fullname',
                        border: OutlineInputBorder(),
                        focusColor: Colors.grey,
                        contentPadding: EdgeInsets.fromLTRB(10, 10, 0, 0)),
                    cursorColor: Colors.black,
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  TextFormField(
                    controller: viewModel.email,
                    keyboardType: TextInputType.emailAddress,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter a email';
                      }
                      if (!RegExp(viewModel.emailPattern).hasMatch(value)) {
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
                      controller: viewModel.password,
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: !viewModel.showPassword ? true : false,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter a password';
                        }
                        return null;
                      },
                      onChanged: (value) {
                        setState(() {
                          viewModel.passwordValue = value;
                        });
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
                              onTap: () => {
                                    setState(() {
                                      viewModel.showPassword =
                                          !viewModel.showPassword;
                                    })
                                  },
                              child: viewModel.showPassword
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
                                    ))
                          .showCursorOnHover,
                    )
                  ]),
                  const SizedBox(
                    height: 25,
                  ),
                  Stack(children: [
                    TextFormField(
                      controller: viewModel.repeatPassword,
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: !viewModel.showRepeatPassword ? true : false,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter a repeat password';
                        }
                        if (value != viewModel.passwordValue) {
                          return 'Repeat password does not match';
                        }
                        return null;
                      },
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey)),
                        focusColor: Colors.grey,
                        contentPadding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                        hintText: 'Repeat Password',
                      ),
                      cursorColor: Colors.black,
                    ),
                    Positioned(
                      right: 10,
                      top: 10,
                      child: GestureDetector(
                              onTap: () => {
                                    setState(() {
                                      viewModel.showRepeatPassword =
                                          !viewModel.showRepeatPassword;
                                    })
                                  },
                              child: viewModel.showRepeatPassword
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
                                    ))
                          .showCursorOnHover,
                    )
                  ]),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Wrap(
                      spacing: 10.0,
                      children: [
                        Row(
                          children: [
                            Checkbox(
                                checkColor: Colors.white,
                                activeColor: Colors.blue,
                                value: viewModel.isChecked,
                                onChanged: (bool? value) {
                                  setState(() {
                                    viewModel.isChecked = value!;
                                  });
                                }),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: RichText(
                                  text: const TextSpan(children: [
                                TextSpan(
                                    text: 'I Agree With ',
                                    style: TextStyle(
                                        color: Colors.black54, fontSize: 14)),
                                TextSpan(
                                    text: 'Terms and Conditions',
                                    style: TextStyle(
                                        color: Color(0xff0000ff), fontSize: 14))
                              ])),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20.0),
                          child: TextButton(
                              style: TextButton.styleFrom(
                                  backgroundColor: const Color(0xff0000ff),
                                  shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(3.0))),
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 16, horizontal: 20)),
                              onPressed: () {
                                if (viewModel.formKey.currentState!
                                    .validate()) {
                                  viewModel.onSubmit(context);
                                }
                              },
                              child: const Text('Register',
                                  style: TextStyle(color: Colors.white))),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
    });
  }
}
