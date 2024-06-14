import 'package:flutter/material.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext ctx, BoxConstraints constraint) {
        if (constraint.maxWidth > 772) {
          return Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: AssetImage('assets/images/bg-pattern-topo.png'),
              fit: BoxFit.cover,
            )),
            height: 260,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 420),
                  child: const Text(
                    'Subscribe for great offers!',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      color: Colors.white,
                      height: 38,
                      width: 600,
                      margin: const EdgeInsets.fromLTRB(60, 30, 10, 5),
                      child: const TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Email address',
                          fillColor: Colors.white,
                          contentPadding: EdgeInsets.fromLTRB(5, 5, 0, 0),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 25, 0, 0),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 0.3),
                        borderRadius: BorderRadius.circular(3),
                      ),
                      padding: const EdgeInsets.symmetric(
                        vertical: 4,
                        horizontal: 16,
                      ),
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Submit',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(right: 430, top: 10),
                  child: const Text(
                    '*You’ll get only relevant news once a week',
                    style: TextStyle(color: Colors.black54, fontSize: 11),
                  ),
                ),
              ],
            ),
          );
        } else {
          return Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: AssetImage('assets/images/bg-pattern-topo.png'),
              fit: BoxFit.cover,
            )),
            height: 260,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  child: const Text(
                    'Subscribe for great offers!',
                    style: TextStyle(fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  color: Colors.white,
                  height: 38,
                  width: 300,
                  margin: const EdgeInsets.fromLTRB(0, 10, 0, 5),
                  child: const TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Email address',
                      fillColor: Colors.white,
                      contentPadding: EdgeInsets.fromLTRB(5, 5, 0, 0),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 1.0),
                    borderRadius: BorderRadius.circular(3),
                  ),
                  padding: const EdgeInsets.symmetric(
                    vertical: 0,
                    horizontal: 16,
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Submit',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 15),
                  child: const Text(
                    '*You’ll get only relevant news once a week',
                    style: TextStyle(color: Colors.black54, fontSize: 11),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          );
        }
      },
    );
  }
}
