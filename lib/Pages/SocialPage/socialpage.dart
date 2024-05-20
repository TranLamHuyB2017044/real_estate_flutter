import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_real_estate/Widget/GoogleMapWidget/google_map.dart';
import 'package:my_real_estate/Widget/PostsWidget/post.dart';
import 'package:my_real_estate/Widget/SearchWidget/mobile_search.dart';
import '../../Widget/NavbarWidget/drawer.dart';
import '../../Widget/NavbarWidget/responsive_appbar.dart';
import '../../Widget/ProfileWidget/profile.dart';

class SocialPage extends StatefulWidget {
  const SocialPage({Key? key});

  @override
  State<SocialPage> createState() => _SocialPageState();
}

class _SocialPageState extends State<SocialPage> {
  @override
  Widget build(BuildContext context) {
    bool isDesktop = MediaQuery.of(context).size.width > 900;
    double isTabletPostWidth = MediaQuery.of(context).size.width * 0.6;
    return Scaffold(
      appBar: ResponsiveAppBar(
        isDesktop: isDesktop,
        height: isDesktop ? 100 : 60,
      ),
      drawer: !isDesktop ? CustomDrawer() : null,
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(color: Color(0xfff6f6f6)),
          child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              if (constraints.maxWidth < 768) {
                return SingleChildScrollView(
                  child: ConstrainedBox(
                    constraints:
                        BoxConstraints(minHeight: constraints.maxHeight),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Search Form',
                          style: TextStyle(fontSize: 24),
                        ),
                        MobileSearch(
                          widthContainer:
                              MediaQuery.of(context).size.width * 0.9,
                        ),
                        SizedBox(height: 20),
                        ListView(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          children: [
                            UserPosts(
                              routeName: 'Detail Page',
                              postWidth:
                                  MediaQuery.of(context).size.width * 0.9,
                              avatar: 'assets/images/img-person-01.jpg',
                              job: 'UX-UI Designer',
                              username: 'Jane Harwood',
                              content:
                                  'WELCOME ABOARD, MANAGEMENT TRAINEE BATCH 2024, TO SUNTORY PEPSICO FAMILY!',
                              postImage: 'assets/images/6.jpg',
                            ),
                            UserPosts(
                              routeName: 'Detail Page',
                              postWidth:
                                  MediaQuery.of(context).size.width * 0.9,
                              avatar: 'assets/images/img-person-03.jpg',
                              job: 'FrontEnd Developer',
                              username: 'Adam Price',
                              content:
                                  'WELCOME ABOARD, MANAGEMENT TRAINEE BATCH 2024, TO SUNTORY PEPSICO FAMILY!',
                              postImage: 'assets/images/danang2.jpg',
                            ),
                            UserPosts(
                              routeName: 'Detail Page',
                              postWidth:
                                  MediaQuery.of(context).size.width * 0.9,
                              avatar: 'assets/images/img-person-04.jpg',
                              job: 'Bussiness Analist',
                              username: 'Edward Palmer',
                              content:
                                  'WELCOME ABOARD, MANAGEMENT TRAINEE BATCH 2024, TO SUNTORY PEPSICO FAMILY!',
                              postImage: 'assets/images/Greece.jpg',
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              } else if (constraints.maxWidth >= 768 &&
                  constraints.maxWidth <= 1200) {
                return SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 35,
                              ),
                              Text(
                                'Search Form',
                                style: TextStyle(fontSize: 24),
                              ),
                              MobileSearch(
                                widthContainer:
                                    MediaQuery.of(context).size.width * 0.9,
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: ListView(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            children: [
                              SizedBox(
                                height: 35,
                              ),
                              UserPosts(
                                routeName: 'Detail Page',
                                postWidth: isTabletPostWidth,
                                avatar: 'assets/images/img-person-01.jpg',
                                job: 'UX-UI Designer',
                                username: 'Jane Harwood',
                                content:
                                    'WELCOME ABOARD, MANAGEMENT TRAINEE BATCH 2024, TO SUNTORY PEPSICO FAMILY!',
                                postImage: 'assets/images/6.jpg',
                              ),
                              UserPosts(
                                routeName: 'Detail Page',
                                postWidth: isTabletPostWidth,
                                avatar: 'assets/images/img-person-03.jpg',
                                job: 'FrontEnd Developer',
                                username: 'Adam Price',
                                content:
                                    'WELCOME ABOARD, MANAGEMENT TRAINEE BATCH 2024, TO SUNTORY PEPSICO FAMILY!',
                                postImage: 'assets/images/danang2.jpg',
                              ),
                              UserPosts(
                                routeName: 'Detail Page',
                                postWidth: isTabletPostWidth,
                                avatar: 'assets/images/img-person-04.jpg',
                                job: 'Bussiness Analist',
                                username: 'Edward Palmer',
                                content:
                                    'WELCOME ABOARD, MANAGEMENT TRAINEE BATCH 2024, TO SUNTORY PEPSICO FAMILY!',
                                postImage: 'assets/images/Greece.jpg',
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              } else {
                return SingleChildScrollView(
                  child: Center(
                    child: Container(
                      width: 1200,
                      padding: EdgeInsets.all(20.0),
                      margin: EdgeInsets.fromLTRB(0, 35, 0, 0),
                      child: ConstrainedBox(
                        constraints: BoxConstraints(
                            minHeight: constraints.maxHeight, maxWidth: 1200),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(flex: 1, child: UserProfile()),
                            Expanded(
                              flex: 2,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                                child: ListView(
                                  shrinkWrap: true,
                                  physics: NeverScrollableScrollPhysics(),
                                  children: [
                                    UserPosts(
                                      routeName: 'Detail Page',
                                      postWidth:
                                          MediaQuery.of(context).size.width * 0.5,
                                      avatar: 'assets/images/img-person-01.jpg',
                                      job: 'UX-UI Designer',
                                      username: 'Jane Harwood',
                                      content:
                                          'WELCOME ABOARD, MANAGEMENT TRAINEE BATCH 2024, TO SUNTORY PEPSICO FAMILY!',
                                      postImage: 'assets/images/6.jpg',
                                    ),
                                    UserPosts(
                                      routeName: 'Detail Page',
                                      postWidth:
                                          MediaQuery.of(context).size.width * 0.5,
                                      avatar: 'assets/images/img-person-03.jpg',
                                      job: 'FrontEnd Developer',
                                      username: 'Adam Price',
                                      content:
                                          'WELCOME ABOARD, MANAGEMENT TRAINEE BATCH 2024, TO SUNTORY PEPSICO FAMILY!',
                                      postImage: 'assets/images/danang2.jpg',
                                    ),
                                    UserPosts(
                                      routeName: 'Detail Page',
                                      postWidth:
                                          MediaQuery.of(context).size.width * 0.5,
                                      avatar: 'assets/images/img-person-04.jpg',
                                      job: 'Bussiness Analist',
                                      username: 'Edward Palmer',
                                      content:
                                          'WELCOME ABOARD, MANAGEMENT TRAINEE BATCH 2024, TO SUNTORY PEPSICO FAMILY!',
                                      postImage: 'assets/images/Greece.jpg',
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Column(
                                children: [
                                  Text(
                                    'Search Form',
                                    style: TextStyle(fontSize: 24),
                                  ),
                                  SizedBox(height: 30,),
                                  MobileSearch(
                                    widthContainer:
                                        MediaQuery.of(context).size.width * 0.9,
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Text('Map Result',
                                      style: TextStyle(fontSize: 24)),
                                  SizedBox(height: 30,),
                                  GoogleMap(width: 300, height: 300)
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
