import 'package:flutter/material.dart';
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
      required this.postWidth,
      required this.commentWidth});
  final String username;
  final String job;
  final String avatar;
  final String content;
  final String postImage;
  final double postWidth;
  final double commentWidth;

  @override
  State<UserPosts> createState() => _UserPostsState();
}

class _UserPostsState extends State<UserPosts> {
  bool _isHaveComments = false;
  bool _isModelOpen = false;
  bool _typeComments = false;
  String changtypeComment = 'Most relevant';



  void _handelOpenModel() {
    setState(() {
      _isModelOpen = !_isModelOpen;
    });
  }

  void _hanleOpenComment() {
    setState(() {
      _isHaveComments = !_isHaveComments;
    });
  }

  void _hanleChooseTypeComment() {
    setState(() {
      _typeComments = !_typeComments;
    });
  }

  @override
  Widget build(BuildContext context) {
    bool isSmallestScreen(BuildContext context) =>
        MediaQuery.of(context).size.width < 400;
    return Stack(
      children: [
        Container(
          width: widget.postWidth,
          color: Colors.white,
          margin: const EdgeInsets.symmetric(vertical: 10),

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
                          padding: MaterialStateProperty.all<EdgeInsets>(
                              EdgeInsets.zero),
                          minimumSize:
                              MaterialStateProperty.all<Size>(Size.zero),
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
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: isSmallestScreen(context)
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                width: 64,
                                height: 64,
                                margin: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  image: DecorationImage(
                                      image: NetworkImage(widget.avatar),
                                      fit: BoxFit.cover),
                                ),
                              ).showCursorOnHover,
                              SizedBox(
                                height: 60,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      widget.username,
                                      style:
                                          const TextStyle(color: Colors.black),
                                    ).showCursorOnHover,
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
                              Container(
                                width: 64,
                                height: 64,
                                margin: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  image: DecorationImage(
                                      image: NetworkImage(widget.avatar),
                                      fit: BoxFit.cover),
                                ),
                              ).showCursorOnHover,
                              SizedBox(
                                height: 60,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      widget.username,
                                      style:
                                          const TextStyle(color: Colors.black),
                                    ).showCursorOnHover,
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
                  padding: const EdgeInsets.fromLTRB(20, 10,30, 10),
                  child: Text(widget.content)),
              Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Image.asset(
                    widget.postImage,
                    width: widget.postWidth + 50,
                    height: 300,
                    fit: BoxFit.cover,
                  )).showCursorOnHover,
              Container(
                decoration: const BoxDecoration(
                  border: Border(
                      bottom: BorderSide(color: Colors.black12, width: 0.2)),
                ),
                padding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/heart-circle-svgrepo-com.png',
                          width: 20,
                          height: 25,
                          color: Colors.redAccent,
                        ),
                        Image.asset(
                          'assets/images/like.png',
                          width: 25,
                          color: Colors.blue,
                        ),
                        Image.asset(
                          'assets/images/facebook-wow-logo-svgrepo-com.png',
                          width: 20,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        TextButton(
                          onPressed: _hanleOpenComment,
                          child: const TextColorChangeOnHover(
                            defaultStyle: TextStyle(color: Colors.black54, fontSize: 14),
                            hoverStyle: TextStyle(color: Colors.blue, fontSize: 14),
                            text:  '64 comments',

                          ),
                        ).showCursorOnHover,
                        Container(
                          margin: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                          child: const Text('44 shares',
                              style: TextStyle(
                                  fontSize: 14, color: Colors.black54)),
                        ).showCursorOnHover
                      ],
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
                      'assets/images/like.png',
                      width: 30,
                      color: Colors.black,
                    ).showCursorOnHover,
                    TextButton(
                        onPressed: _hanleOpenComment,
                        child: Image.asset(
                          'assets/images/comment.png',
                          width: 30,
                          color: Colors.black,
                        )),
                    Image.asset(
                      'assets/images/share.png',
                      width: 30,
                      color: Colors.black,
                    ).showCursorOnHover
                  ],
                ),
              ),
              if (_isHaveComments)
                Container(
                  width: widget.postWidth,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 45,
                            height: 45,
                            margin: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                            decoration: BoxDecoration(
                                image: const DecorationImage(
                                  image:
                                      NetworkImage('assets/images/gamtime.jpg'),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(100.0)),
                          ),
                          SizedBox(
                            width: widget.commentWidth *0.6,
                            child: Stack(
                              children: [
                                TextField(
                                  decoration: InputDecoration(
                                    constraints:
                                        const BoxConstraints(maxHeight: 50),
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(20),
                                        borderSide: const BorderSide(
                                            color: Colors.grey, width: 0.3)),
                                    contentPadding:
                                        const EdgeInsets.fromLTRB(10, 10, 0, 0),
                                    hintText: isSmallestScreen(context)
                                        ? null
                                        : 'Add a comment...',
                                  ),
                                ),
                                Positioned(
                                  top: 12,
                                  right: 12,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 0, 20, 0),
                                        child: Image.asset(
                                          'assets/images/smile.png',
                                          width: 25,
                                        ),
                                      ),
                                      Image.asset(
                                        'assets/images/gallery.png',
                                        width: 25,
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 10, 10, 10),
                        // width: ,
                        child: Stack(children: [
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextButton(
                                onPressed: _hanleChooseTypeComment,
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          0, 0, 5.0, 0),
                                      child: Text(
                                        changtypeComment,
                                        style: const TextStyle(
                                            color: Colors.black54),
                                      ),
                                    ),
                                    Container(
                                        margin: const EdgeInsets.fromLTRB(
                                            0, 3.0, 0, 0),
                                        child:
                                            const Icon(Icons.arrow_drop_down))
                                  ],
                                ),
                              ),
                              ContentComments(
                                contentWidth: widget.commentWidth* 0.8 ,
                                username: 'W3schools.com',
                                follower: '123,442,233',
                                content:
                                    'Glad to have you learn Flutter with us! 🐊👋😊😊😊',
                              )
                            ],
                          ),
                          if (_typeComments)
                            Positioned(
                              top: 30,
                              left: 0,
                              child: Container(
                                padding:
                                    const EdgeInsets.fromLTRB(10, 10, 5, 10),
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
                                        topRight: Radius.circular(4.0),
                                        bottomRight: Radius.circular(4.0),
                                        bottomLeft: Radius.circular(4.0))),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    TextButton(
                                      onPressed: () {
                                        setState(() {
                                          changtypeComment = 'Most relevant';
                                          _typeComments = false;
                                        });
                                      },
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                            'assets/images/roket.png',
                                            width: 25,
                                            color: Colors.black54,
                                          ),
                                          const Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    10, 20, 10, 5),
                                                child: Text(
                                                  'Most relevant',
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      color: Colors.black),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    10, 0, 10, 0),
                                                child: Text(
                                                  'See the most relevant comments',
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      color: Colors.black54),
                                                ),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        setState(() {
                                          changtypeComment = 'Most recent';
                                          _typeComments = false;
                                        });
                                      },
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                            'assets/images/clock_fire.png',
                                            width: 25,
                                            color: Colors.black54,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              const Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    10, 20, 10, 5),
                                                child: Text(
                                                  'Most recent',
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      color: Colors.black),
                                                ),
                                              ),
                                              Container(
                                                  padding:
                                                      const EdgeInsets.fromLTRB(
                                                          10, 0, 10, 0),
                                                  child: const Text(
                                                      'See recent comments',
                                                      style: TextStyle(
                                                        fontSize: 14,
                                                        color: Colors.black54,
                                                      )))
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                        ]),
                      ),
                    ],
                  ),
                )
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
