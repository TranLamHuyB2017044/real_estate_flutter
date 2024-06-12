import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_real_estate/extensions/hover_extension.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../extensions/changecolor_onhover-extension.dart';

// ignore: must_be_immutable
class UserPosts extends StatefulWidget {
  UserPosts({
    super.key,
    required this.username,
    required this.job,
    required this.avatar,
    required this.content,
    required this.postImage,
    this.routeName,
    this.isFavorite = false,
  });
  final String username;
  final String job;
  final String avatar;
  final String content;
  final String postImage;
  final String? routeName;

  bool isFavorite;
  @override
  State<UserPosts> createState() => _UserPostsState();
}

class _UserPostsState extends State<UserPosts> {
  bool _isHovering = false;
  bool _isHoveringAvatar = false;
  bool isShowAlert = false;
  bool isFollow = false;
  bool isLoading = false;
  Future<void> _handleFollower() async {
    setState(() {
      isLoading = true;
    });
    await Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        isLoading = false;
      });
    });
    setState(() {
      isFollow = !isFollow;
    });
  }



  void _onHoverUnderlineText(bool isHovering) {
    setState(() {
      _isHovering = isHovering;
    });
  }

  void _onHoverOpacity(bool isHoveringAvatar) {
    setState(() {
      _isHoveringAvatar = isHoveringAvatar;
    });
  }

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
    bool isSmallestScreen(BuildContext context) =>
        MediaQuery.of(context).size.width < 400;
    return Center(
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        decoration: const BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
              offset: Offset(0, 0),
              blurRadius: 7,
              spreadRadius: -1,
              color: Colors.grey)
        ]),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 15.0, top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  PopupMenuButton(
                    tooltip: 'More options',
                    icon: SvgPicture.asset(
                      width: 32,
                      'images/more-horizontal-icon.svg',
                    ),
                    onSelected: (Object? item) {},
                    constraints: const BoxConstraints(maxWidth: 300),
                    color: Colors.white,
                    position: PopupMenuPosition.under,
                    itemBuilder: (context) => [
                      PopupMenuItem(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(
                              'assets/images/bookmark.png',
                              width: 25,
                              color: Colors.black54,
                            ),
                            const Padding(
                              padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
                              child: Text(
                                'Save post',
                                style: TextStyle(fontSize: 16),
                              ),
                            )
                          ],
                        ).showCursorOnHover,
                      ),
                      PopupMenuItem(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(
                              'assets/images/clock.png',
                              width: 25,
                              color: Colors.black54,
                            ),
                            const Padding(
                              padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
                              child: Text(
                                'Outdated post',
                                style: TextStyle(fontSize: 16),
                              ),
                            )
                          ],
                        ).showCursorOnHover,
                      ),
                      PopupMenuItem(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(
                              'assets/images/clock_fire.png',
                              width: 25,
                              color: Colors.black54,
                            ),
                            const Padding(
                              padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
                              child: Text(
                                'Unfollow ',
                                style: TextStyle(fontSize: 16),
                              ),
                            )
                          ],
                        ).showCursorOnHover,
                      ),
                      PopupMenuItem(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(
                              'assets/images/flag.png',
                              width: 25,
                              color: Colors.black54,
                            ),
                            const Padding(
                              padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
                              child: Text(
                                'Report post',
                                style: TextStyle(fontSize: 16),
                              ),
                            )
                          ],
                        ).showCursorOnHover,
                      ),
                    ],
                  ),
                  const Icon(Icons.close, size: 25).showCursorOnHover,
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: isSmallestScreen(context)
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            GestureDetector(
                              onTap: () {
                                context.goNamed('Agent Profile Page');
                              },
                              child: Container(
                                width: 64,
                                height: 64,
                                margin: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  image: DecorationImage(
                                      image: AssetImage(widget.avatar),
                                      fit: BoxFit.cover),
                                ),
                              ).showCursorOnHover,
                            ),
                            SizedBox(
                              height: 60,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      context.goNamed('Agent Profile Page');
                                    },
                                    child: Text(
                                      widget.username,
                                      style:
                                          const TextStyle(color: Colors.black),
                                    ).showCursorOnHover,
                                  ),
                                  Text(
                                    widget.job,
                                    style: const TextStyle(
                                        color: Colors.black54, fontSize: 12),
                                  ),
                                  const Text(
                                    '1 days ago',
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.black54),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        isLoading
                            ? Container(
                                width: 20,
                                height: 20,
                                alignment: Alignment.centerLeft,
                                margin:
                                    const EdgeInsets.only(top: 20, left: 20),
                                child: const CircularProgressIndicator(
                                  color: Colors.blue,
                                ))
                            : Padding(
                                padding: const EdgeInsets.only(top: 15.0),
                                child: TextButton(
                                    onPressed: () async {
                                      await _handleFollower();
                                    },
                                    child: isFollow
                                        ? Row(
                                            children: [
                                              SvgPicture.asset(
                                                'images/user-following.svg',
                                                width: 20,
                                                // ignore: deprecated_member_use
                                                color: Colors.blue,
                                              ),
                                              const Text(
                                                ' Following',
                                                style: TextStyle(
                                                    color: Colors.blue,
                                                    fontSize: 18),
                                              )
                                            ],
                                          )
                                        : const Row(
                                            children: [
                                              Icon(
                                                Icons.add,
                                                size: 20,
                                                color: Colors.blue,
                                              ),
                                              Text(
                                                ' Follow',
                                                style: TextStyle(
                                                    color: Colors.blue,
                                                    fontSize: 18),
                                              )
                                            ],
                                          )),
                              )
                      ],
                    )
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            MouseRegion(
                              onEnter: (e) => _onHoverOpacity(true),
                              onExit: (e) => _onHoverOpacity(false),
                              child: GestureDetector(
                                onTap: () {
                                  context.goNamed('Agent Profile Page');
                                },
                                child: Container(
                                  width: 64,
                                  height: 64,
                                  margin:
                                      const EdgeInsets.fromLTRB(0, 0, 10, 0),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    image: DecorationImage(
                                        image: AssetImage(widget.avatar),
                                        fit: BoxFit.cover,
                                        colorFilter: _isHoveringAvatar
                                            ? ColorFilter.mode(
                                                Colors.black.withOpacity(0.2),
                                                BlendMode.srcOver)
                                            : null),
                                  ),
                                ).showCursorOnHover,
                              ),
                            ),
                            SizedBox(
                              height: 60,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  MouseRegion(
                                    onEnter: (e) => _onHoverUnderlineText(true),
                                    onExit: (e) => _onHoverUnderlineText(false),
                                    child: GestureDetector(
                                      onTap: () {
                                        context.goNamed('Agent Profile Page');
                                      },
                                      child: Text(
                                        widget.username,
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          decoration: _isHovering
                                              ? TextDecoration.underline
                                              : TextDecoration.none,
                                        ),
                                      ).showCursorOnHover,
                                    ),
                                  ),
                                  Text(
                                    widget.job,
                                    style: const TextStyle(
                                        color: Colors.black54, fontSize: 12),
                                  ),
                                  const Text(
                                    '1 days ago',
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.black54),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        isLoading
                            ? Container(
                                width: 20,
                                height: 20,
                                alignment: Alignment.center,
                                margin: const EdgeInsets.only(right: 20),
                                child: const CircularProgressIndicator(
                                  color: Colors.blue,
                                ))
                            : TextButton(
                                onPressed: () async {
                                  await _handleFollower();
                                },
                                child: isFollow
                                    ? Row(
                                        children: [
                                          SvgPicture.asset(
                                            'images/user-following.svg',
                                            width: 20,
                                            // ignore: deprecated_member_use
                                            color: Colors.blue,
                                          ),
                                          const Text(
                                            ' Following',
                                            style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 18),
                                          )
                                        ],
                                      )
                                    : const Row(
                                        children: [
                                          Icon(
                                            Icons.add,
                                            size: 20,
                                            color: Colors.blue,
                                          ),
                                          Text(
                                            ' Follow',
                                            style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 18),
                                          )
                                        ],
                                      ))
                      ],
                    ),
            ),
            Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 30, 10),
                child: Text(widget.content)),
            GestureDetector(
              onTap: () {
                context.goNamed('Detail Page');
              },
              child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  width: double.infinity,
                  child: Image.asset(
                    widget.postImage,
                    height: 300,
                    fit: BoxFit.cover,
                  )).showCursorOnHover,
            ),
            Container(
              decoration: const BoxDecoration(
                border: Border(
                    bottom: BorderSide(color: Colors.black12, width: 0.2)),
              ),
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const TextColorChangeOnHover(
                    defaultStyle:
                        TextStyle(color: Colors.black54, fontSize: 14),
                    hoverStyle: TextStyle(color: Colors.blue, fontSize: 14),
                    text: '64 comments',
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                    child: const Text('44 shares',
                        style: TextStyle(fontSize: 14, color: Colors.black54)),
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(15, 20, 15, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        widget.isFavorite = !widget.isFavorite;
                      });
                      typeShowSnackBar = widget.isFavorite;

                      showFavoriteSnackBar();
                      if (showSnackBar) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            behavior: SnackBarBehavior.floating,
                            margin: const EdgeInsets.only(
                                bottom: 0, left: 10, right: 10),
                            content: Text(
                              typeShowSnackBar
                                  ? 'Favorite item added!'
                                  : 'Favorite item removed!',
                            ),
                            duration: const Duration(seconds: 2),
                          ),
                        );
                      }
                    },
                    child: SvgPicture.asset(
                      widget.isFavorite
                          ? 'images/heart-color.svg'
                          : 'images/heart-circle.svg',
                      width: 40,
                      // ignore: deprecated_member_use
                    ).showCursorOnHover,
                  ),
                  SvgPicture.asset('images/send-svgrepo-com.svg', width: 35)
                      .showCursorOnHover
                ],
              ),
            ),
          ],
        ),
      ).showCursorOnHover,
    );
  }
}
