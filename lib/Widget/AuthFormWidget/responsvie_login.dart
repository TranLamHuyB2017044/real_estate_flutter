import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:my_real_estate/Pages/HomePage/homepage.dart';
import 'package:my_real_estate/Widget/AuthFormWidget/login_desktop.dart';
import 'package:my_real_estate/Widget/AuthFormWidget/login_mobile.dart';
import 'package:my_real_estate/Widget/AuthFormWidget/login_tablet.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

class ResponsiveLoginForm extends StatefulWidget {
  const ResponsiveLoginForm({super.key});

  @override
  State<ResponsiveLoginForm> createState() => _ResponsiveLoginFormState();
}

class _ResponsiveLoginFormState extends State<ResponsiveLoginForm> {
  final String emailPattern =
      r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$';

  final TextEditingController _email = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  final bool _isChecked = false;
  final TextEditingController _password = TextEditingController();
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  bool isLoading = false;
  final bool _showPassword = false;

  Future<void> _onLogin() async {
    String email = _email.text;
    String password = _password.text;
    setState(() {
      isLoading = true;
    });
    try {
      final SharedPreferences prefs = await _prefs;
      List<String>? getUserStore = prefs.getStringList('users');
      if (getUserStore == null) {
        await Future.delayed(
            const Duration(seconds: 2),
            () => {
                  setState(() {
                    isLoading = false;
                  }),
                });
        showTopSnackBar(
          Overlay.of(context),
          const CustomSnackBar.info(
            message: "Account doesnt exist !",
          ),
        );
      } else {
        for (String userJson in getUserStore) {
          Map<String, dynamic> userList = jsonDecode(userJson);
          if (userList['email'] != email) {
            await Future.delayed(
                const Duration(seconds: 2),
                () => {
                      setState(() {
                        isLoading = false;
                      }),
                    });
            showTopSnackBar(
              Overlay.of(context),
              const CustomSnackBar.error(
                message: "Wrong email !",
              ),
            );
            break;
          } else if (userList['password'] != password) {
            await Future.delayed(
                const Duration(seconds: 2),
                () => {
                      setState(() {
                        isLoading = false;
                      }),
                    });
            showTopSnackBar(
              Overlay.of(context),
              const CustomSnackBar.error(
                message: "Wrong password !",
              ),
            );
            break;
          } else {
            Map<String, dynamic> userInfo = {
              'email': email,
              'password': password,
            };
            // Login success
            prefs.setString('userInfo', jsonEncode(userInfo));

            await Future.delayed(
                const Duration(seconds: 2),
                () => {
                      setState(() {
                        isLoading = false;
                      }),
                    });
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const HomePage()),
            );
            showTopSnackBar(
              Overlay.of(context),
              const CustomSnackBar.success(
                message: "Login successfully !",
              ),
            );
            break;
          }
        }
      }
    } catch (err) {
      debugPrint('$err');
      Future.delayed(
          const Duration(seconds: 2),
          () => {
                setState(() {
                  isLoading = false;
                }),
              });
    }
  }

  @override
  Widget build(BuildContext context) {
    Map<String, TextEditingController> inputData = {
      'email': _email,
      'password': _password,
    };
    return ScreenTypeLayout.builder(
      mobile: (context) => LoginFormMobile(
          emailPattern: emailPattern,
          formKey: _formKey,
          inputData: inputData,
          isChecked: _isChecked,
          showPassword: _showPassword,
          onLogin: () => _onLogin(),
          isLoading: isLoading),
      tablet: (context) => LoginFormTablet(
          emailPattern: emailPattern,
          formKey: _formKey,
          inputData: inputData,
          isChecked: _isChecked,
          showPassword: _showPassword,
          onLogin: () => _onLogin(),
          isLoading: isLoading),
      desktop: (context) => LoginFormDesktop(
          emailPattern: emailPattern,
          formKey: _formKey,
          inputData: inputData,
          isChecked: _isChecked,
          showPassword: _showPassword,
          onLogin: () => _onLogin(),
          isLoading: isLoading),
    );
  }
}
