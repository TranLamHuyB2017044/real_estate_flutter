import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:my_real_estate/Pages/AuthPage/auth.dart';
import 'package:my_real_estate/Widget/AuthFormWidget/register_desktop.dart';
import 'package:my_real_estate/Widget/AuthFormWidget/register_mobile.dart';
import 'package:my_real_estate/Widget/AuthFormWidget/register_tablet.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

class ResponsiveRegisterForm extends StatefulWidget {
  const ResponsiveRegisterForm({super.key});

  @override
  State<ResponsiveRegisterForm> createState() => _ResponsiveRegisterFormState();
}

class _ResponsiveRegisterFormState extends State<ResponsiveRegisterForm> {
  final String emailPattern =
      r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$';
  final _formKey = GlobalKey<FormState>();
  final bool _isChecked = false;
  final TextEditingController _username = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _repeatPassword = TextEditingController();
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  bool isLoading = false;

  Future<void> createStorage() async {
    final SharedPreferences prefs = await _prefs;
    List<String> users = [];
    await prefs.setStringList('users', users);
  }

  Future<bool> _checkEmailExists(String email) async {
    final SharedPreferences prefs = await _prefs;
    List<String>? getUserStore = prefs.getStringList('users');
    print(getUserStore);
    if (getUserStore == null) {
      await createStorage();
      print(getUserStore);
      return _checkEmailExists(email);
    } else {
      for (String userJson in getUserStore) {
        Map<String, dynamic> userList = jsonDecode(userJson);
        if (userList['email'] == email) {
          return true;
        }
      }
      return false;
    }
  }

  Future<void> _onSubmit() async {
    final SharedPreferences prefs = await _prefs;
    String username_value = _username.text;
    String email_value = _email.text;
    String password_value = _password.text;
    String repeatPassword_value = _repeatPassword.text;

    Map<String, dynamic> useraAccount = {
      "username": username_value,
      "email": email_value,
      "password": password_value,
      "repeat_password": repeatPassword_value
    };

    setState(() {
      isLoading = true;
    });

    try {
      if (await _checkEmailExists(email_value)) {
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
            message: "Email already exists !",
          ),
        );
      } else {
        List<String>? getUserLists = prefs.getStringList('users');
        getUserLists!.add(jsonEncode(useraAccount));
        prefs.setStringList('users', getUserLists);

        await Future.delayed(
            const Duration(seconds: 2),
            () => {
                  setState(() {
                    isLoading = false;
                  }),
                });

        showTopSnackBar(
          Overlay.of(context),
          const CustomSnackBar.success(
            message: "Register successfully !",
          ),
        );
        Future.delayed(const Duration(seconds: 1), () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const AuthPage()),
          );
        });
      }
    } catch (err) {
      debugPrint('$err');

      setState(() {
        isLoading = false;
      });
    }
  }

  final bool _showPassword = false;

  final bool _showRepeatPassword = false;

  @override
  void dispose() {
    _username.dispose();
    _email.dispose();
    _password.dispose();
    _repeatPassword.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Map<String, TextEditingController> inputData = {
      'username': _username,
      'email': _email,
      'password': _password,
      'repeatPassword': _repeatPassword
    };
    return ScreenTypeLayout.builder(
      mobile: (context) => RegisterFormMobile(
          emailPattern: emailPattern,
          formKey: _formKey,
          inputData: inputData,
          isChecked: _isChecked,
          showPassword: _showPassword,
          showRepeatPassword: _showRepeatPassword,
          onSubmit: () => _onSubmit(),
          isLoading: isLoading),
      tablet: (context) => RegisterFormTablet(
          emailPattern: emailPattern,
          formKey: _formKey,
          inputData: inputData,
          isChecked: _isChecked,
          showPassword: _showPassword,
          showRepeatPassword: _showRepeatPassword,
          onSubmit: () => _onSubmit(),
          isLoading: isLoading),
      desktop: (context) => RegisterFormDesktop(
          emailPattern: emailPattern,
          formKey: _formKey,
          inputData: inputData,
          isChecked: _isChecked,
          showPassword: _showPassword,
          showRepeatPassword: _showRepeatPassword,
          onSubmit: () => _onSubmit(),
          isLoading: isLoading),
    );
  }
}
