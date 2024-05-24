import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_real_estate/extensions/hover_extension.dart';

import '../../extensions/changecolor_onhover-extension.dart';

class UserPosts extends StatefulWidget {
  const UserPosts(
      {super.key,
      required this.username,
      required this.job,
      required this.avatar,
      required this.content,
      required this.postImage,
      this.routeName});
  final String username;
  final String job;
  final String avatar;
  final String content;
  final String postImage;
  final String? routeName;
  @override
  State<UserPosts> createState() => _UserPostsState();
}

class _UserPostsState extends State<UserPosts> {
  bool _isModelOpen = false;
  void _handelOpenModel() {
    setState(() {
      _isModelOpen = !_isModelOpen;
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
                        Image.asset(
                          'assets/images/bookmark.png',
                          width: 30,
                          color: Colors.black,
                        ).showCursorOnHover,
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

class ContentComments extends StatefulWidget {
  const ContentComments(
      {super.key,
      required this.username,
      required this.follower,
      required this.content,
      required this.contentWidth});
  final String username;
  final String follower;
  final String content;
  final double contentWidth;
  @override
  State<ContentComments> createState() => _CommentsState();
}

class _CommentsState extends State<ContentComments> {
  bool _chatOption = false;
  void _hanleChatOption() {
    setState(() {
      _chatOption = !_chatOption;
    });
  }

  @override
  Widget build(BuildContext context) {
    bool isSmallestScreen(BuildContext context) =>
        MediaQuery.of(context).size.width < 400;

    return Stack(
      children: [
        Container(
          color: Colors.white,
          padding: const EdgeInsets.all(10.0),
          width: widget.contentWidth,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: NetworkImage('assets/images/2.jpg'),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(100.0)),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: widget.contentWidth * 0.7,
                    margin: const EdgeInsets.fromLTRB(15, 0, 0, 10),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10.0),
                          bottomLeft: Radius.circular(10.0),
                          bottomRight: Radius.circular(10.0)),
                      color: Color(0xfff2f2f2),
                    ),
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              children: [
                                Text(
                                  widget.username,
                                  style: const TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                                Text(
                                  '${widget.follower} follower',
                                  style: const TextStyle(
                                      color: Colors.black54, fontSize: 11),
                                )
                              ],
                            ),
                            isSmallestScreen(context)
                                ? Column(
                                    children: [
                                      const Text('9h'),
                                      TextButton(
                                          onPressed: _hanleChatOption,
                                          child: const Icon(
                                            Icons.more_horiz,
                                            size: 20,
                                            color: Colors.black,
                                          ))
                                    ],
                                  )
                                : Row(
                                    children: [
                                      const Text('9h'),
                                      TextButton(
                                          onPressed: _hanleChatOption,
                                          child: const Icon(
                                            Icons.more_horiz,
                                            size: 20,
                                            color: Colors.black,
                                          ))
                                    ],
                                  )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(widget.content),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const Text(
                          'Like',
                          style: TextStyle(fontSize: 14, color: Colors.black),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(8.0, 0, 0, 8.0),
                          child: Image.asset(
                            'assets/images/heart-circle-svgrepo-com.png',
                            width: 20,
                            height: 25,
                            color: Colors.redAccent,
                          ),
                        ),
                        const Text('100 | ',
                            style:
                                TextStyle(fontSize: 14, color: Colors.black54)),
                        const Text('Reply',
                            style: TextStyle(fontSize: 14, color: Colors.black))
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
        if (_chatOption)
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
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.add,
                        size: 30,
                      ),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                        child: Text(
                          'Follow',
                          style: TextStyle(fontSize: 16),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/images/flag.png',
                        width: 25,
                        color: Colors.black54,
                      ),
                      const Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                        child: Text(
                          'Report',
                          style: TextStyle(fontSize: 16),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
      ],
    );
  }
}
