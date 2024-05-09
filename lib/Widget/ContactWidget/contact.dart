import 'package:flutter/material.dart';


class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 260,
      decoration: BoxDecoration(

      ),
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 600, 0),
              child: const Text('Subscribe for great offers!', style: TextStyle(fontSize: 20),)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                Container(
                color: Colors.white,
                width: 700,
                height: 38,
                margin:const EdgeInsets.fromLTRB(0, 30, 0, 5),
                child: const TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Email address',
                      fillColor: Colors.white,
                      contentPadding: EdgeInsets.fromLTRB(5, 5, 0, 0)),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(30, 25, 0, 0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 0.3),
                  borderRadius: BorderRadius.circular(3)
                ),
                padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 16),
                child: TextButton(onPressed: (){}, child: const Text(
                  'Submit',
                  style: TextStyle(
                    color: Colors.black
                  ),
                )),
              )
            ],
          ),
          Container(
              margin: const EdgeInsets.fromLTRB(0, 10, 610, 0),
              child: const Text('*You’ll get only relevant news once a week', style: TextStyle(color: Colors.black54, fontSize: 11),))
        ],
      ),
    );
  }
}
