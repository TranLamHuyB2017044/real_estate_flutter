import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_real_estate/Widget/PostsWidget/post.dart';
import '../../Widget/NavbarWidget/responsive_navbar.dart';

class SocialPage extends StatelessWidget {
  const SocialPage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body: SafeArea(
      child: Container(
          decoration:
              const BoxDecoration(color: Color.fromRGBO(206, 206, 206, 0.2)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const ResponsiveNabar(),
                const SizedBox(height: 30),
                ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 1200),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      UserPosts(
                        avatar: 'assets/images/img-person-01.jpg',
                        job: 'UX-UI Designer',
                        username: 'Jane Harwood',
                        content:
                            'WELCOME ABOARD, MANAGEMENT TRAINEE BATCH 2024, TO SUNTORY PEPSICO FAMILY!',
                        postImages: const [
                          'assets/images/6.jpg',
                          'assets/images/2.jpg',
                          'assets/images/danang2.jpg'
                        ],
                      ),
                      UserPosts(
                        avatar: 'assets/images/img-person-03.jpg',
                        job: 'FrontEnd Developer',
                        username: 'Adam Price',
                        content:
                            'WELCOME ABOARD, MANAGEMENT TRAINEE BATCH 2024, TO SUNTORY PEPSICO FAMILY!',
                        postImages: const [
                          'assets/images/8.jpg',
                          'assets/images/2.jpg',
                          'assets/images/danang2.jpg'
                        ],
                      ),
                      UserPosts(
                        avatar: 'assets/images/img-person-04.jpg',
                        job: 'Bussiness Analist',
                        username: 'Edward Palmer',
                        content:
                            'WELCOME ABOARD, MANAGEMENT TRAINEE BATCH 2024, TO SUNTORY PEPSICO FAMILY!',
                        postImages: const [
                          'assets/images/Greece.jpg',
                          'assets/images/2.jpg',
                          'assets/images/danang2.jpg'
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          )),
    ));
  }
}
