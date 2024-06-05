import 'package:flutter/material.dart';
import 'package:my_real_estate/extensions/hover_extension.dart';
import 'package:provider/provider.dart';
import '../../viewmodels/login_viewmodel.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    return Consumer<LoginViewModel>(builder: (context, viewModel, child) {
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
                    'Login',
                    style: TextStyle(fontSize: 25),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    controller: viewModel.email,
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
                                value: viewModel.isChecked,
                                onChanged: (bool? value) {
                                  setState(() {
                                    viewModel.isChecked = value!;
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
                              if (viewModel.formKey.currentState!.validate()) {
                                viewModel.onLogin(context);
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
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black54, width: 0.3),
                        borderRadius: BorderRadius.circular(4.0)),
                    child: TextButton(
                      onPressed: () {
                        viewModel.signInWithGoogle(context);
                      },
                      style: const ButtonStyle(
                          overlayColor: WidgetStateColor.transparent),
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            'assets/images/google-icon.svg',
                            width: 30,
                            height: 30,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            'Sign In With Google',
                            style: TextStyle(fontSize: 14, color: Colors.black),
                          )
                        ],
                      ),
                    ),
                  ).showCursorOnHover
                ],
              ),
            );
    });
  }
}
