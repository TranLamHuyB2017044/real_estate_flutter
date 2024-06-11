import 'dart:convert';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_real_estate/models/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

class LoginViewModel extends ChangeNotifier {
  final UserModel _user = UserModel();
  final String emailPattern =
      r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$';
  final _formKey = GlobalKey<FormState>();
  bool _isChecked = false;
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  bool _showPassword = false;
  bool isLoading = false;

  UserModel get user => _user;
  GlobalKey<FormState> get formKey => _formKey;
  TextEditingController get email => _email;
  TextEditingController get password => _password;
  bool get showPassword => _showPassword;
  bool get isChecked => _isChecked;

  set showPassword(bool value) {
    _showPassword = value;
    notifyListeners();
  }

  set isChecked(bool value) {
    _isChecked = value;
    notifyListeners();
  }

  Future<bool> onLogin(BuildContext context) async {
    String email = _email.text;
    String password = _password.text;

    isLoading = true;
    notifyListeners();

    try {
      final SharedPreferences prefs = await _prefs;
      List<String>? getUserStore = prefs.getStringList('users');
      if (getUserStore == null) {
        await Future.delayed(const Duration(seconds: 2));
        isLoading = false;
        notifyListeners();
        Future.delayed(Duration.zero, () {
          showTopSnackBar(
            Overlay.of(context),
            const CustomSnackBar.info(
              message: "Account doesn't exist !",
            ),
          );
        });

        return false;
      } else {
        for (String userJson in getUserStore) {
          Map<String, dynamic> userList = jsonDecode(userJson);
          if (userList['email'] == email && userList['password'] == password) {
            Map<String, dynamic> userInfo = {
              'fullname': userList['fullname'],
              'email': email,
              'password': password,
            };
            // Login success
            await prefs.setString('userInfo', jsonEncode(userInfo));
            await prefs.reload();
            await Future.delayed(const Duration(seconds: 2));
            isLoading = false;
            notifyListeners();
            await Future.delayed(Duration.zero, () {
              showTopSnackBar(
                Overlay.of(context),
                const CustomSnackBar.success(
                  message: "Login successfully !",
                ),
              );
            });
            await Future.delayed(Duration.zero, () {
              if (Navigator.canPop(context)) {
                Navigator.pop(context);
              }
            });
            await Future.delayed(Duration.zero, () {
              context.goNamed('Home Page');
            });

            return true;
          }
        }
      }

      // email and password don't match
      await Future.delayed(const Duration(seconds: 2));
      isLoading = false;
      notifyListeners();
      Future.delayed(Duration.zero, () {
        showTopSnackBar(
          Overlay.of(context),
          const CustomSnackBar.error(
            message: "Wrong email or password !",
          ),
        );
      });
      return false;
    } catch (err) {
      debugPrint('error: $err');
      await Future.delayed(const Duration(seconds: 2));
      isLoading = false;
      notifyListeners();
    }
    return false;
  }

  Future<void> signInWithGoogle(BuildContext context) async {
    GoogleAuthProvider googleProvider = GoogleAuthProvider();
    googleProvider
        .addScope('https://www.googleapis.com/auth/contacts.readonly');
    googleProvider
        .setCustomParameters({'login_hint': 'tranlamhuy5tn@gmail.com'});
    await FirebaseAuth.instance.signInWithPopup(googleProvider);
    Future.delayed(Duration.zero, () {
      showTopSnackBar(
        Overlay.of(context),
        const CustomSnackBar.success(
          message: "Login successfully !",
        ),
      );
    });
    await Future.delayed(Duration.zero, () {
      context.goNamed('Home Page');
    });
  }

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    super.dispose();
  }
}
