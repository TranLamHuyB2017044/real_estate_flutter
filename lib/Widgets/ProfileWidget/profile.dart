import 'dart:convert';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({super.key});

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  User? OAuthLogin = FirebaseAuth.instance.currentUser;
  final Future<SharedPreferences> prefs0 = SharedPreferences.getInstance();

  Map<String, dynamic> userInfo = {};

  Future<void> getUserInfo() async {
    final SharedPreferences prefs = await prefs0;
    String? userLogin = prefs.getString('userInfo');
    if (userLogin != null) {
      setState(() {
        userInfo = jsonDecode(userLogin);
      });
    }
  }

  @override
  void initState() {
    getUserInfo();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 300,
        margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
        padding: const EdgeInsets.symmetric(vertical: 20),
        decoration: const BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
              color: Colors.black12,
              blurRadius: 5,
              spreadRadius: 0,
              offset: Offset(1.0, 2.0))
        ]),
        child:  Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          GestureDetector(
            onTap: () {
              context.goNamed('Profile Page');
            },
            child: Container(
              margin: const EdgeInsets.fromLTRB(0, 20, 0, 20),
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(500)),
                  border: const Border(
                      bottom: BorderSide(color: Colors.black12, width: 1)),
                  image: DecorationImage(
                      image: AssetImage(OAuthLogin == null
                          ? 'assets/images/tomcat.jpg'
                          : '${OAuthLogin!.photoURL}'),
                      fit: BoxFit.cover)),
            ),
          ),
          GestureDetector(
            onTap: () {
              context.goNamed('Profile Page');
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                OAuthLogin != null
                    ? '${OAuthLogin!.displayName}'
                    : '${userInfo['fullname']}',
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            child: Text(
              'Web Developer',
              style: TextStyle(fontSize: 14, color: Colors.black54),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: RichText(
                text: const TextSpan(
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                    text: 'Point: ',
                    children: [
                  TextSpan(
                      text: '123.000 ',
                      style: TextStyle(
                          color: Colors.blue,
                          decoration: TextDecoration.underline)),
                  TextSpan(
                      text: '©️',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.blue,
                          decoration: TextDecoration.underline))
                ])),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            child: Text(
              'Your Property',
              style: TextStyle(color: Colors.blue),
            ),
          )
        ]));
  }
}
