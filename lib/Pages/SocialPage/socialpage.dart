import 'package:flutter/material.dart';
import 'package:my_real_estate/Widget/GoogleMapWidget/google_map.dart';
import 'package:my_real_estate/Widget/PostsWidget/post.dart';
import 'package:my_real_estate/Widget/ProfileWidget/profile.dart';
import 'package:my_real_estate/Widget/SearchWidget/mobile_search.dart';
import '../../Widget/NavbarWidget/responsive_navbar.dart';

class SocialPage extends StatelessWidget {
  const SocialPage({super.key});

  @override
  Widget build(BuildContext context) {
    double isSmallestMobileWidth = MediaQuery.of(context).size.width;
    double isMobileWidth = MediaQuery.of(context).size.width * 0.9;
    double isTabletWidth = MediaQuery.of(context).size.width * 0.6;
    double isDesktopWidth = MediaQuery.of(context).size.width * 0.5;
    double screenWidth = MediaQuery.of(context).size.width;
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      if (constraints.maxWidth < 400) {
        return Scaffold(
          body: SafeArea(
              child: Container(
            decoration: const BoxDecoration(color: Color(0xfff4f2ee)),
            child: ListView(
              children: [
                const ResponsiveNabar(),
                const SizedBox(height: 30),
                ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 1200),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      UserPosts(
                        postWidth: isSmallestMobileWidth,
                        commentWidth: isSmallestMobileWidth +
                            isSmallestMobileWidth * 0.14,
                        avatar: 'assets/images/img-person-01.jpg',
                        job: 'UX-UI Designer',
                        username: 'Jane Harwood',
                        content:
                            'WELCOME ABOARD, MANAGEMENT TRAINEE BATCH 2024, TO SUNTORY PEPSICO FAMILY!',
                        postImage: 'assets/images/6.jpg',
                      ),
                      UserPosts(
                          postWidth: isSmallestMobileWidth,
                          commentWidth: isSmallestMobileWidth,
                          avatar: 'assets/images/img-person-03.jpg',
                          job: 'FrontEnd Developer',
                          username: 'Adam Price',
                          content:
                              'WELCOME ABOARD, MANAGEMENT TRAINEE BATCH 2024, TO SUNTORY PEPSICO FAMILY!',
                          postImage: 'assets/images/danang2.jpg'),
                      UserPosts(
                        postWidth: isSmallestMobileWidth,
                        commentWidth: isSmallestMobileWidth,
                        avatar: 'assets/images/img-person-04.jpg',
                        job: 'Bussiness Analist',
                        username: 'Edward Palmer',
                        content:
                            'WELCOME ABOARD, MANAGEMENT TRAINEE BATCH 2024, TO SUNTORY PEPSICO FAMILY!',
                        postImage: 'assets/images/Greece.jpg',
                      )
                    ],
                  ),
                )
              ],
            ),
          )),
        );
      } else if (constraints.maxWidth >= 400 && constraints.maxWidth < 768) {
        return Scaffold(
            body: SafeArea(
          child: Container(
              decoration: const BoxDecoration(color: Color(0xfff4f2ee)),
              child: ListView(
                children: [
                  const ResponsiveNabar(),
                  const SizedBox(height: 30),
                  ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 1200),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        UserPosts(
                          postWidth: isMobileWidth,
                          commentWidth: isMobileWidth + isMobileWidth * 0.2,
                          avatar: 'assets/images/img-person-01.jpg',
                          job: 'UX-UI Designer',
                          username: 'Jane Harwood',
                          content:
                              'WELCOME ABOARD, MANAGEMENT TRAINEE BATCH 2024, TO SUNTORY PEPSICO FAMILY!',
                          postImage: 'assets/images/6.jpg',
                        ),
                        UserPosts(
                            postWidth: isMobileWidth,
                            commentWidth: isMobileWidth + isMobileWidth * 0.2,
                            avatar: 'assets/images/img-person-03.jpg',
                            job: 'FrontEnd Developer',
                            username: 'Adam Price',
                            content:
                                'WELCOME ABOARD, MANAGEMENT TRAINEE BATCH 2024, TO SUNTORY PEPSICO FAMILY!',
                            postImage: 'assets/images/danang2.jpg'),
                        UserPosts(
                          postWidth: isMobileWidth,
                          commentWidth: isMobileWidth + isMobileWidth * 0.2,
                          avatar: 'assets/images/img-person-04.jpg',
                          job: 'Bussiness Analist',
                          username: 'Edward Palmer',
                          content:
                              'WELCOME ABOARD, MANAGEMENT TRAINEE BATCH 2024, TO SUNTORY PEPSICO FAMILY!',
                          postImage: 'assets/images/Greece.jpg',
                        )
                      ],
                    ),
                  )
                ],
              )),
        ));
      } else if (constraints.maxWidth >= 768 && constraints.maxWidth <= 1200) {
        //Tablet
        return Scaffold(
            body: SafeArea(
          child: Container(
              decoration: const BoxDecoration(color: Color(0xfff4f2ee)),
              child: ListView(
                children: [
                  const ResponsiveNabar(),
                  const SizedBox(height: 30),
                  Container(
                    padding: const EdgeInsets.all(20),
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(maxWidth: 1200),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Expanded(flex: 1, child: UserProfile()),
                          Expanded(
                            flex: 2,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                UserPosts(
                                  postWidth: isTabletWidth,
                                  commentWidth: isTabletWidth,
                                  avatar: 'assets/images/img-person-01.jpg',
                                  job: 'UX-UI Designer',
                                  username: 'Jane Harwood',
                                  content:
                                      'WELCOME ABOARD, MANAGEMENT TRAINEE BATCH 2024, TO SUNTORY PEPSICO FAMILY!',
                                  postImage: 'assets/images/6.jpg',
                                ),
                                UserPosts(
                                    postWidth: isTabletWidth,
                                    commentWidth: isTabletWidth,
                                    avatar: 'assets/images/img-person-03.jpg',
                                    job: 'FrontEnd Developer',
                                    username: 'Adam Price',
                                    content:
                                        'WELCOME ABOARD, MANAGEMENT TRAINEE BATCH 2024, TO SUNTORY PEPSICO FAMILY!',
                                    postImage: 'assets/images/danang2.jpg'),
                                UserPosts(
                                  postWidth: isTabletWidth,
                                  commentWidth: isTabletWidth,
                                  avatar: 'assets/images/img-person-04.jpg',
                                  job: 'Bussiness Analist',
                                  username: 'Edward Palmer',
                                  content:
                                      'WELCOME ABOARD, MANAGEMENT TRAINEE BATCH 2024, TO SUNTORY PEPSICO FAMILY!',
                                  postImage: 'assets/images/Greece.jpg',
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              )),
        ));
      } else {
        return Scaffold(
            body: SafeArea(
          child: Container(
              decoration: const BoxDecoration(color: Color(0xfff4f2ee)),
              child: ListView(
                children: [
                  const ResponsiveNabar(),
                  const SizedBox(height: 30),
                  Container(
                    padding: const EdgeInsets.all(20),
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(maxWidth: 1200),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Expanded(flex: 1, child: UserProfile()),
                          Expanded(
                            flex: 2,
                            child: Container(
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              constraints:
                                  BoxConstraints(maxWidth: isDesktopWidth),
                              child: Column(
                                children: [
                                  UserPosts(
                                    postWidth: isDesktopWidth,
                                    commentWidth: isDesktopWidth,
                                    avatar: 'assets/images/img-person-01.jpg',
                                    job: 'UX-UI Designer',
                                    username: 'Jane Harwood',
                                    content:
                                        'WELCOME ABOARD, MANAGEMENT TRAINEE BATCH 2024, TO SUNTORY PEPSICO FAMILY!',
                                    postImage: 'assets/images/6.jpg',
                                  ),
                                  UserPosts(
                                      postWidth: isDesktopWidth,
                                      commentWidth: isDesktopWidth,
                                      avatar: 'assets/images/img-person-03.jpg',
                                      job: 'FrontEnd Developer',
                                      username: 'Adam Price',
                                      content:
                                          'WELCOME ABOARD, MANAGEMENT TRAINEE BATCH 2024, TO SUNTORY PEPSICO FAMILY!',
                                      postImage: 'assets/images/danang2.jpg'),
                                  UserPosts(
                                    postWidth: isDesktopWidth,
                                    commentWidth: isDesktopWidth,
                                    avatar: 'assets/images/img-person-04.jpg',
                                    job: 'Bussiness Analist',
                                    username: 'Edward Palmer',
                                    content:
                                        'WELCOME ABOARD, MANAGEMENT TRAINEE BATCH 2024, TO SUNTORY PEPSICO FAMILY!',
                                    postImage: 'assets/images/Greece.jpg',
                                  )
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                              flex: 1,
                              child: Column(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.symmetric(
                                        vertical: 20),
                                    child: const Text(
                                      'Search Form',
                                      style: TextStyle(fontSize: 24),
                                    ),
                                  ),
                                  MobileSearch(
                                    widthContainer: screenWidth * 0.2,
                                  ),
                                  Container(
                                    margin:
                                        const EdgeInsets.fromLTRB(0, 40, 0, 20),
                                    child: const Text(
                                      'Map Results',
                                      style: TextStyle(fontSize: 24),
                                    ),
                                  ),
                                  Container(
                                      margin: const EdgeInsets.fromLTRB(
                                          0, 20, 0, 0),
                                      child: GoogleMap(
                                          width: screenWidth * 0.2,
                                          height: 300))
                                ],
                              ))
                        ],
                      ),
                    ),
                  )
                ],
              )),
        ));
      }
    });
  }
}
