import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_real_estate/extensions/hover_extension.dart';

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
  bool _isModelOpen = false;
  bool _isHovering = false;
  bool _isHoveringAvatar = false;
  bool isShowAlert = false;
  void _handelOpenModel() {
    setState(() {
      _isModelOpen = !_isModelOpen;
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
      child: InkWell(
        onTap: () {
          context.goNamed(widget.routeName!);
        },
        hoverColor: Colors.transparent,
        child: Stack(
          children: [
            Container(
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
                  Container(
                    height: 35,
                    padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                    margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                    decoration: const BoxDecoration(),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 0, 8.0, 0),
                          child: TextButton(
                            style: ButtonStyle(
                              padding: WidgetStateProperty.all<EdgeInsets>(
                                  EdgeInsets.zero),
                              minimumSize:
                                  WidgetStateProperty.all<Size>(Size.zero),
                              tapTargetSize: MaterialTapTargetSize
                                  .shrinkWrap, // Giảm vùng nhấn của button
                            ),
                            onPressed: _handelOpenModel,
                            child: Image.asset(
                              'assets/images/more-horizontal-svgrepo-com.png',
                            ),
                          ),
                        ),
                        const Icon(Icons.close, size: 25).showCursorOnHover,
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                    child: isSmallestScreen(context)
                        ? Column(
                            mainAxisAlignment: MainAxisAlignment.start,
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
                                      margin: const EdgeInsets.fromLTRB(
                                          0, 0, 10, 0),
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        image: DecorationImage(
                                            image: NetworkImage(widget.avatar),
                                            fit: BoxFit.cover),
                                      ),
                                    ).showCursorOnHover,
                                  ),
                                  SizedBox(
                                    height: 60,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            context
                                                .goNamed('Agent Profile Page');
                                          },
                                          child: Text(
                                            widget.username,
                                            style: const TextStyle(
                                                color: Colors.black),
                                          ).showCursorOnHover,
                                        ),
                                        Text(
                                          widget.job,
                                          style: const TextStyle(
                                              color: Colors.black54,
                                              fontSize: 12),
                                        ),
                                        const Text(
                                          '1 days ago',
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.black54),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              Container(
                                margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                                child: TextButton(
                                    onPressed: () {},
                                    child: const Row(
                                      children: [
                                        Icon(
                                          Icons.add,
                                          size: 20,
                                          color: Colors.blue,
                                        ),
                                        Text(
                                          ' Follow',
                                          style: TextStyle(
                                              color: Colors.blue, fontSize: 18),
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
                                        margin: const EdgeInsets.fromLTRB(
                                            0, 0, 10, 0),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(100),
                                          image: DecorationImage(
                                              image:
                                                  NetworkImage(widget.avatar),
                                              fit: BoxFit.cover,
                                              colorFilter: _isHoveringAvatar
                                                  ? ColorFilter.mode(
                                                      Colors.black
                                                          .withOpacity(0.2),
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        MouseRegion(
                                          onEnter: (e) =>
                                              _onHoverUnderlineText(true),
                                          onExit: (e) =>
                                              _onHoverUnderlineText(false),
                                          child: GestureDetector(
                                            onTap: () {
                                              context.goNamed(
                                                  'Agent Profile Page');
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
                                              color: Colors.black54,
                                              fontSize: 12),
                                        ),
                                        const Text(
                                          '1 days ago',
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.black54),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              TextButton(
                                  onPressed: () {},
                                  child: const Row(
                                    children: [
                                      Icon(
                                        Icons.add,
                                        size: 20,
                                        color: Colors.blue,
                                      ),
                                      Text(
                                        ' Follow',
                                        style: TextStyle(
                                            color: Colors.blue, fontSize: 18),
                                      )
                                    ],
                                  ))
                            ],
                          ),
                  ),
                  Padding(
                      padding: const EdgeInsets.fromLTRB(20, 10, 30, 10),
                      child: Text(widget.content)),
                  Container(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      width: double.infinity,
                      child: Image.asset(
                        widget.postImage,
                        height: 300,
                        fit: BoxFit.cover,
                      )).showCursorOnHover,
                  Container(
                    decoration: const BoxDecoration(
                      border: Border(
                          bottom:
                              BorderSide(color: Colors.black12, width: 0.2)),
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const TextColorChangeOnHover(
                          defaultStyle:
                              TextStyle(color: Colors.black54, fontSize: 14),
                          hoverStyle:
                              TextStyle(color: Colors.blue, fontSize: 14),
                          text: '64 comments',
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                          child: const Text('44 shares',
                              style: TextStyle(
                                  fontSize: 14, color: Colors.black54)),
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
                        TextButton(
                          onPressed: () {
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
                          child: Image.asset(
                            'assets/images/heart-circle-svgrepo-com.png',
                            width: 40,
                            color:
                                widget.isFavorite ? Colors.red : Colors.black,
                          ).showCursorOnHover,
                        ),
                        Image.asset(
                          'assets/images/share.png',
                          width: 30,
                          color: Colors.black,
                        ).showCursorOnHover
                      ],
                    ),
                  ),
                ],
              ),
            ),
            if (_isModelOpen)
              Positioned(
                top: 50,
                right: 40,
                child: Container(
                  padding: const EdgeInsets.fromLTRB(10, 10, 5, 10),
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey,
                            blurRadius: 7,
                            spreadRadius: -2,
                            offset: Offset(-1, 2))
                      ],
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(4.0),
                          bottomRight: Radius.circular(4.0),
                          bottomLeft: Radius.circular(4.0))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
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
                              'Save',
                              style: TextStyle(fontSize: 16),
                            ),
                          )
                        ],
                      ).showCursorOnHover,
                      Row(
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/images/cancel-icon.png',
                            width: 25,
                            height: 20,
                            color: Colors.black54,
                          ),
                          const Padding(
                            padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
                            child: Text(
                              'Unfollow',
                              style: TextStyle(fontSize: 16),
                            ),
                          )
                        ],
                      ).showCursorOnHover,
                      Row(
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
                      ).showCursorOnHover
                    ],
                  ),
                ),
              )
          ],
        ),
      ).showCursorOnHover,
    );
  }
}
