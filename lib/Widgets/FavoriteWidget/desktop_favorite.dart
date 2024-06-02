import 'package:flutter/material.dart';
import 'package:my_real_estate/Widgets/FooterWidget/footer.dart';
import 'package:my_real_estate/Widgets/PostsWidget/post.dart';

class DesktopFavorite extends StatefulWidget {
  const DesktopFavorite({super.key, required this.favoriteList});
  final List<UserPosts> favoriteList;

  @override
  State<DesktopFavorite> createState() => _DesktopFavoriteState();
}

class _DesktopFavoriteState extends State<DesktopFavorite> {
  @override
  Widget build(BuildContext context) {
    var status = <String>[
      'Newest Saved',
      'Asc Price',
      'Desc Price',
      'Acs Area',
      'Desc Area',
    ];
    String? chosenStatus;

    return ListView(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
          margin: const EdgeInsets.fromLTRB(0, 20, 0, 10),
          decoration: const BoxDecoration(
              border:
                  Border(bottom: BorderSide(color: Colors.grey, width: 0.3))),
          child: const Text(
            'Favorite Post',
            style: TextStyle(fontSize: 20),
            textAlign: TextAlign.center,
          ),
        ),
        widget.favoriteList.isEmpty
            ? Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/favorite-blank.jpg',
                      width: 300,
                      height: 200,
                    ),
                    Wrap(
                      children: [
                        const Text(
                          'No favorite post, please click on ',
                          textAlign: TextAlign.center,
                        ),
                        Image.asset(
                          'assets/images/heart-ouline.png',
                          width: 20,
                          height: 20,
                        ),
                        const Text(
                          'icon and see favorite post in here',
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 80,
                    )
                  ],
                ),
              )
            : Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Center(
                    child: Container(
                      constraints: const BoxConstraints(maxWidth: 800),
                      margin: const EdgeInsets.symmetric(vertical: 20),
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '${widget.favoriteList.length} posts total',
                            style: const TextStyle(fontSize: 20),
                          ),
                          Container(
                            margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                            height: 32,
                            width: 150,
                            child: DropdownButtonFormField(
                              isExpanded: true, // make icon spacebetween
                              value: chosenStatus,
                              items: status
                                  .map<DropdownMenuItem<String>>((status) {
                                return DropdownMenuItem<String>(
                                    value: status, child: Text(status));
                              }).toList(),
                              onChanged: (newValue) {
                                setState(() {
                                  chosenStatus = newValue;
                                });
                              },
                              hint: const Text(
                                'Status',
                                style: TextStyle(color: Colors.black54),
                              ),
                              decoration: const InputDecoration(
                                  border: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.black54)),
                                  contentPadding:
                                      EdgeInsets.fromLTRB(10, 0, 0, 10)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Center(
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(maxWidth: 800),
                      child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [...widget.favoriteList],
                          )),
                    ),
                  ),
                ],
              ),
        const SizedBox(
          height: 80,
        ),
        const Footer()
      ],
    );
  }
}
