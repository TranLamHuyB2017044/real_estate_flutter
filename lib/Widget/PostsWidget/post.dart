
import 'package:flutter/material.dart';

class UserPosts extends StatefulWidget {
  UserPosts(
      {super.key,
      required this.username,
      required this.job,
      required this.avatar,
      required this.content,
      required this.postImages});
  final String username;
  final String job;
  final String avatar;
  final String content;
  final List<String> postImages;
  @override
  State<UserPosts> createState() => _UserPostsState();
}

class _UserPostsState extends State<UserPosts> {
  bool _isHaveComments = false;
  void _hanleOpenComment(){
    setState(() {
      _isHaveComments = !_isHaveComments;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 600,
      color: Colors.white,
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Container(
            height: 35,
            padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
            decoration: const BoxDecoration(
                ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                    margin: const EdgeInsets.fromLTRB(0, 0, 8.0, 0),
                    child: Image.asset(
                      'assets/images/more-horizontal-svgrepo-com.png',
                    )),
                const Icon(Icons.close, size: 25),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Row(
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
                    ),
                    SizedBox(
                      height: 60,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.username,
                            style: const TextStyle(color: Colors.black),
                          ),
                          Text(
                            widget.job,
                            style: const TextStyle(
                                color: Colors.black54, fontSize: 12),
                          ),
                          const Text(
                            '1 days ago',
                            style:
                                TextStyle(fontSize: 12, color: Colors.black54),
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
                          style: TextStyle(color: Colors.blue, fontSize: 18),
                        )
                      ],
                    ))
              ],
            ),
          ),
          Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 20, 10),
              child: Text(widget.content)),
          Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Wrap(
                  spacing: 10.0,
                  runSpacing: 10.0,
                  children: widget.postImages.map((url) {
                    return Image.asset(
                      url,
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    );
                  }).toList())),
          Container(
            decoration: const BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.black12, width: 0.2)),

            ),
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(text: const TextSpan(
                  text: '👍😂💓',
                  children: [
                    TextSpan(text: '123',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black54
                    ),),
                  ]
                ))
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(15, 20, 15, 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('assets/images/like.png', width: 30, color: Colors.black,),
                TextButton(
                  onPressed: _hanleOpenComment,
                    child: Image.asset('assets/images/comment.png', width: 30, color: Colors.black,)),
                Image.asset('assets/images/share.png', width: 30, color: Colors.black,)
              ],
            ),
          ),
          if(_isHaveComments)
            Container(
              color: Colors.white70,
              child: Text('comment....'),
            )
        ],
      ),
    );
  }
}
