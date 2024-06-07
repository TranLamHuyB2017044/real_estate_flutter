import 'package:flutter/material.dart';
import 'package:my_real_estate/Widgets/GoogleMapWidget/google_map.dart';
import 'package:my_real_estate/Widgets/PostsWidget/post.dart';
import 'package:my_real_estate/Widgets/SearchWidget/mobile_search.dart';
import '../../Widgets/NavbarWidget/drawer.dart';
import '../../Widgets/NavbarWidget/responsive_appbar.dart';
import '../../Widgets/ProfileWidget/profile.dart';

class ListingPage extends StatefulWidget {
  const ListingPage({super.key});

  @override
  State<ListingPage> createState() => _ListingPageState();
}

class _ListingPageState extends State<ListingPage> {
  bool showSnackBar = false;
  bool typeShowSnackBar = false;
  void showFavoriteSnackBar() {
    setState(() {
      showSnackBar = true;
    });

    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        showSnackBar = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    List<UserPosts> posts = [
      UserPosts(
        routeName: 'Detail Page',
        avatar: 'assets/images/img-person-01.jpg',
        job: 'UX-UI Designer',
        username: 'Jane Harwood',
        content:
            'WELCOME ABOARD, MANAGEMENT TRAINEE BATCH 2024, TO SUNTORY PEPSICO FAMILY!',
        postImage: 'assets/images/6.jpg',
      ),
      UserPosts(
        routeName: 'Detail Page',
        avatar: 'assets/images/img-person-03.jpg',
        job: 'FrontEnd Developer',
        username: 'Adam Price',
        content:
            'WELCOME ABOARD, MANAGEMENT TRAINEE BATCH 2024, TO SUNTORY PEPSICO FAMILY!',
        postImage: 'assets/images/danang2.jpg',
      ),
      UserPosts(
        routeName: 'Detail Page',
        avatar: 'assets/images/img-person-04.jpg',
        job: 'Bussiness Analist',
        username: 'Edward Palmer',
        content:
            'WELCOME ABOARD, MANAGEMENT TRAINEE BATCH 2024, TO SUNTORY PEPSICO FAMILY!',
        postImage: 'assets/images/Greece.jpg',
      ),
      UserPosts(
        routeName: 'Detail Page',
        avatar: 'assets/images/gamtime.jpg',
        job: 'Web Developer',
        username: 'Tran Lam Huy',
        content:
            'WELCOME ABOARD, MANAGEMENT TRAINEE BATCH 2024, TO SUNTORY PEPSICO FAMILY!',
        postImage: 'assets/images/Login-image.jpg',
      ),
      UserPosts(
        routeName: 'Detail Page',
        avatar: 'assets/images/optimus.png',
        job: 'Bussiness Management',
        username: 'Alex Telles',
        content:
            'WELCOME ABOARD, MANAGEMENT TRAINEE BATCH 2024, TO SUNTORY PEPSICO FAMILY!',
        postImage: 'assets/images/img-detail-03.jpg',
      ),
      UserPosts(
        routeName: 'Detail Page',
        avatar: 'assets/images/ronaldo.jpg',
        job: 'Football Player',
        username: 'Cristiano Ronaldo',
        content:
            'WELCOME ABOARD, MANAGEMENT TRAINEE BATCH 2024, TO SUNTORY PEPSICO FAMILY!',
        postImage: 'assets/images/img-detail-05.jpg',
      ),
      UserPosts(
        routeName: 'Detail Page',
        avatar: 'assets/images/faker.jpg',
        job: 'Football Player',
        username: 'lee sang hyuk',
        content:
            'WELCOME ABOARD, MANAGEMENT TRAINEE BATCH 2024, TO SUNTORY PEPSICO FAMILY!',
        postImage: 'assets/images/property2.jpg',
      ),
      UserPosts(
        routeName: 'Detail Page',
        avatar: 'assets/images/huy2.jpg',
        job: 'Doctor',
        username: 'Huy Tran Lam',
        content:
            'WELCOME ABOARD, MANAGEMENT TRAINEE BATCH 2024, TO SUNTORY PEPSICO FAMILY!',
        postImage: 'assets/images/img-detail-04.jpg',
      ),
      UserPosts(
        routeName: 'Detail Page',
        avatar: 'assets/images/faker.jpg',
        job: 'Engineer',
        username: 'lee sang hyuk',
        content:
            'WELCOME ABOARD, MANAGEMENT TRAINEE BATCH 2024, TO SUNTORY PEPSICO FAMILY!',
        postImage: 'assets/images/img-detail-01.jpg',
      ),
      UserPosts(
        routeName: 'Detail Page',
        avatar: 'assets/images/messi.jpg',
        job: 'Football Player',
        username: 'Leo Messi',
        content:
            'WELCOME ABOARD, MANAGEMENT TRAINEE BATCH 2024, TO SUNTORY PEPSICO FAMILY!',
        postImage: 'assets/images/VietNam.jpg',
      ),
    ];



    

    bool isDesktop = MediaQuery.of(context).size.width > 900;
    return Scaffold(
      appBar: ResponsiveAppBar(
        isDesktop: isDesktop,
        height: isDesktop ? 100 : 60,
      ),
      drawer: !isDesktop ? const CustomDrawer() : null,
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
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          'Search Form',
                          style: TextStyle(fontSize: 24),
                        ),
                        MobileSearch(
                          widthContainer:
                              MediaQuery.of(context).size.width * 0.9,
                        ),
                        const SizedBox(height: 20),
                        ListView(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          children: [...posts],
                        ),
                      ],
                    ),
                  ),
                );
              } else if (constraints.maxWidth >= 768 &&
                  constraints.maxWidth <= 1200) {
                return SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 35,
                              ),
                              const Text(
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
                        const SizedBox(
                          width: 30,
                        ),
                        Expanded(
                          flex: 2,
                          child: ListView(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            children: [
                              const SizedBox(
                                height: 35,
                              ),
                              ...posts
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
                      padding: const EdgeInsets.all(20.0),
                      margin: const EdgeInsets.fromLTRB(0, 35, 0, 0),
                      child: ConstrainedBox(
                        constraints: BoxConstraints(
                            minHeight: constraints.maxHeight, maxWidth: 1200),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Expanded(flex: 1, child: UserProfile()),
                            Expanded(
                              flex: 2,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20.0),
                                child: ListView(
                                  shrinkWrap: true,
                                  physics: const NeverScrollableScrollPhysics(),
                                  children: [...posts],
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Column(
                                children: [
                                  const Text(
                                    'Search Form',
                                    style: TextStyle(fontSize: 24),
                                  ),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  MobileSearch(
                                    widthContainer:
                                        MediaQuery.of(context).size.width * 0.9,
                                  ),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  const Text('Map Result',
                                      style: TextStyle(fontSize: 24)),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  const GoogleMapWeb(width: 300, height: 300)
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
