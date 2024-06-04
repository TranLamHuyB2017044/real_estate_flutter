import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:my_real_estate/Views/AuthPage/auth.dart';
import 'package:my_real_estate/models/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

class RegisterViewmodel extends ChangeNotifier {
  final UserModel _user = UserModel();
  final String emailPattern =
      r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$';
  final _formKey = GlobalKey<FormState>();
  bool _isChecked = false;
  final TextEditingController _fullname = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _repeatPassword = TextEditingController();
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  bool _showPassword = false;
  bool _showRepeatPassword = false;
  bool isLoading = false;
  late String passwordValue;

  UserModel get user => _user;
  GlobalKey<FormState> get formKey => _formKey;
  TextEditingController get fullname => _fullname;
  TextEditingController get email => _email;
  TextEditingController get password => _password;
  TextEditingController get repeatPassword => _repeatPassword;
  bool get showPassword => _showPassword;
  bool get showRepeatPassword => _showRepeatPassword;
  bool get isChecked => _isChecked;

  set showPassword(bool value) {
    _showPassword = value;
    notifyListeners();
  }

  set showRepeatPassword(bool value) {
    _showRepeatPassword = value;
    notifyListeners();
  }

  set isChecked(bool value) {
    _isChecked = value;
    notifyListeners();
  }

  Future<void> createStorage() async {
    final SharedPreferences prefs = await _prefs;
    List<String> users = [];
    await prefs.setStringList('users', users);
  }

  Future<bool> _checkEmailExists(String email) async {
    final SharedPreferences prefs = await _prefs;
    List<String>? getUserStore = prefs.getStringList('users');
    if (getUserStore == null) {
      await createStorage();
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

  Future<void> onSubmit(BuildContext context) async {
    final SharedPreferences prefs = await _prefs;
    String fullname_value = _fullname.text;
    String email_value = _email.text;
    String password_value = _password.text;
    String repeatPassword_value = _repeatPassword.text;

    Map<String, dynamic> useraAccount = {
      "fullname": fullname_value,
      "email": email_value,
      "password": password_value,
      "repeat_password": repeatPassword_value
    };

    isLoading = true;
    notifyListeners();
    try {
      if (await _checkEmailExists(email_value)) {
        await Future.delayed(const Duration(seconds: 2),
            () => {isLoading = false, notifyListeners()});
        Future.delayed(Duration.zero, () {
          showTopSnackBar(
            Overlay.of(context),
            const CustomSnackBar.info(
              message: "Email already exist !",
            ),
          );
        });
      } else {
        List<String>? getUserLists = prefs.getStringList('users');
        getUserLists!.add(jsonEncode(useraAccount));
        prefs.setStringList('users', getUserLists);

        await Future.delayed(const Duration(seconds: 2),
            () => {isLoading = false, notifyListeners()});

        await Future.delayed(Duration.zero, () {
          showTopSnackBar(
            Overlay.of(context),
            const CustomSnackBar.success(
              message: "Register successfully !",
            ),
          );
        });

        Future.delayed(const Duration(milliseconds: 500), () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const AuthPage()),
          );
        });
      }
    } catch (err) {
      debugPrint('$err');
      isLoading = false;
      notifyListeners();
    }
  }

  @override
  void dispose() {
    _fullname.dispose();
    _email.dispose();
    _password.dispose();
    _repeatPassword.dispose();
    super.dispose();
  }
}
