import 'package:flutter/material.dart';

class ForSale extends StatelessWidget {
  const ForSale({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints){
        if(constraints.maxWidth > 780){
          return Container(
            width: 2500,
            height: 550,
            color: Colors.white,
            padding: const EdgeInsets.all(45),
            child: ConstrainedBox(
              constraints: const BoxConstraints(
                maxWidth: 1200,
              ),
              child: Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: 1200,
                        padding: const EdgeInsets.symmetric(horizontal: 50),
                        height: 300,
                        margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    'assets/images/Sectionals-header-2053.jpg'),
                                fit: BoxFit.cover)),
                      ),
                      Positioned.fill(
                        top: 20,
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Colors.black54,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                'Have Some Property For Sale?',
                                style: TextStyle(fontSize: 30, color: Colors.white),
                              ),
                              const Text(
                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit',
                                style: TextStyle(color: Colors.white),
                              ),
                              Container(
                                margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                                padding: const EdgeInsets.symmetric(
                                    vertical: 4, horizontal: 14),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(3),
                                    color: Colors.white),
                                child: TextButton(
                                  onPressed: () {},
                                  child: const Text(
                                    'Submit Your Own',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 30),
                    width: 1200,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset('assets/images/logo-01.png'),
                        Image.asset('assets/images/logo-02.png'),
                        Image.asset('assets/images/logo-03.png'),
                        Image.asset('assets/images/logo-04.png'),
                        Image.asset('assets/images/logo-05.png'),
                      ],
                    ),
                  )
                ],
              ),
            )
          );
        }else{
          return Container(
            width: 2500,
            color: Colors.white,
            padding: const EdgeInsets.symmetric(vertical: 45, horizontal: 20),
            child: ConstrainedBox(
              constraints: const BoxConstraints(
                maxWidth: 1200,
              ),
              child: Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 300,
                        margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    'assets/images/Sectionals-header-2053.jpg'),
                                fit: BoxFit.cover)),
                      ),
                      Positioned.fill(
                        top: 20,
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Colors.black54,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                'Have Some Property For Sale?',
                                style: TextStyle(fontSize: 25, color: Colors.white, ),
                                textAlign: TextAlign.center,
                              ),
                              const Text(
                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit',
                                style: TextStyle(color: Colors.white),
                                textAlign: TextAlign.center,
                              ),
                              Container(
                                margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                                padding: const EdgeInsets.symmetric(
                                    vertical: 4, horizontal: 14),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(3),
                                    color: Colors.white),
                                child: TextButton(
                                  onPressed: () {},
                                  child: const Text(
                                    'Submit Your Own',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(

                          padding: const EdgeInsets.fromLTRB(0,40,0,0),
                          child: Image.asset('assets/images/logo-01.png'),
                        ),
                        Padding(

                          padding: const EdgeInsets.fromLTRB(0,40,0,0),
                          child: Image.asset('assets/images/logo-02.png'),
                        ),
                        Padding(

                          padding: const EdgeInsets.fromLTRB(0,40,0,0),
                          child: Image.asset('assets/images/logo-03.png'),
                        ),
                        Padding(

                          padding: const EdgeInsets.fromLTRB(0,40,0,0),
                          child: Image.asset('assets/images/logo-04.png'),
                        ),
                        Padding(

                          padding: const EdgeInsets.fromLTRB(0,40,0,0),
                          child: Image.asset('assets/images/logo-05.png'),
                        ),

                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        }
      },

    );
  }
}
