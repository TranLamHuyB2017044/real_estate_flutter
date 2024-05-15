import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 200,
        height: 300,
        margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 5,
              spreadRadius: 0,
              offset: Offset(1.0,2.0)
            )
          ]
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
          Container(
            margin: const EdgeInsets.fromLTRB(0, 20, 0, 20),
            width: 120,
            height: 120,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(500)),
                border: Border(bottom: BorderSide(color: Colors.black12, width: 1)),
                image: DecorationImage(
                    image: NetworkImage('assets/images/bg-bathroom.jpg'),
                    fit: BoxFit.cover)),
          ),
          const Text(
            'User Profile Name',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            textAlign: TextAlign.center,
          ),
         const Text(
            'Web Developer',
            style: TextStyle(fontSize: 14, color: Colors.black54),
            textAlign: TextAlign.center,
          ),
          RichText(
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
          const Text('Your Property', style: TextStyle(color: Colors.blue),)
        ]));
  }
}



