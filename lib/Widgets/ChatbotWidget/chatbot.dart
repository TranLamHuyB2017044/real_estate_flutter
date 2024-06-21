import 'package:flutter_svg/svg.dart';
import 'package:my_real_estate/extensions/hover_extension.dart';
import 'package:flutter/material.dart';
import 'package:my_real_estate/viewmodels/chatbot_viewmodel.dart';
import 'package:provider/provider.dart';

class Chatbot extends StatefulWidget {
  const Chatbot({super.key});

  @override
  State<Chatbot> createState() => _ChatbotState();
}

class _ChatbotState extends State<Chatbot> {
  bool _isOpenChat = false;

  void _onShowChat(isOpenChat) {
    setState(() {
      _isOpenChat = isOpenChat;
    });
  }

  FocusNode myFocusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    bool isMobile = MediaQuery.of(context).size.width < 600;
    return Consumer<ChatBot_ViewModel>(builder: (context, viewModel, child) {
      return _isOpenChat
          ? Container(
              padding: const EdgeInsets.only(bottom: 20),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8.0),
                      topRight: Radius.circular(8.0))),
              margin: EdgeInsets.only(right: isMobile ? 10 : 20, bottom: 0),
              width: isMobile ? 300 : 400,
              height: 500,
              child: Column(
                children: <Widget>[
                  Container(
                    height: 50,
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                    decoration: const BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(8.0),
                            topRight: Radius.circular(8.0))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset(
                              'assets/images/flash-outline-svgrepo-com.svg',
                              width: 30,
                              height: 25,
                              // ignore: deprecated_member_use
                              color: Colors.white,
                            ).showCursorOnHover,
                            const SizedBox(
                              width: 5,
                            ),
                            const Text(
                              'Zibot',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                        GestureDetector(
                          onTap: () {
                            _onShowChat(false);
                            setState(() {
                              viewModel.userInput.clear();
                            });
                          },
                          child: const Icon(
                            Icons.close,
                            size: 20,
                            color: Colors.white,
                          ),
                        ).showCursorOnHover,
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: ListView.builder(
                      controller: viewModel.scrollController,
                      shrinkWrap: true,
                      itemCount: viewModel.messages.length,
                      itemBuilder: (context, index) {
                        final message = viewModel.messages[index];
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Align(
                            alignment: message.isUser
                                ? Alignment.centerRight
                                : Alignment.centerLeft,
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 14),
                              margin: const EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: message.isUser
                                    ? Colors.blueAccent
                                    : Colors.grey.shade300,
                              ),
                              child: Text(
                                message.message,
                                style: TextStyle(
                                  color: message.isUser
                                      ? Colors.white
                                      : Colors.black,
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Container(
                        height: 100,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey, width: 0.3),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(8.0)),
                        ),
                        padding: const EdgeInsets.fromLTRB(10.0, 5, 10.0, 15),
                        child: Column(
                          children: <Widget>[
                            Expanded(
                              child: TextField(
                                controller: viewModel.userInput,
                                autofocus: true,
                                focusNode: myFocusNode,
                                onSubmitted: (_) => {
                                  myFocusNode.requestFocus(),
                                  viewModel.sendMessage(),
                                },
                                decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Type a message",
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  children: [
                                    SvgPicture.asset(
                                      'assets/images/flash-outline-svgrepo-com.svg',
                                      width: 30,
                                      height: 25,
                                    ).showCursorOnHover,
                                    Container(
                                      width: 1,
                                      height: 20,
                                      color: Colors.grey,
                                      margin: const EdgeInsets.symmetric(
                                          horizontal: 10),
                                    ),
                                    SvgPicture.asset(
                                      'assets/images/smile-circle-svgrepo-com.svg',
                                      width: 30,
                                      height: 25,
                                    ).showCursorOnHover,
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    SvgPicture.asset(
                                      'assets/images/micro-svgrepo-com.svg',
                                      width: 30,
                                      height: 25,
                                    ).showCursorOnHover,
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    SvgPicture.asset(
                                      'assets/images/attachment-svgrepo-com.svg',
                                      width: 25,
                                      height: 25,
                                    ).showCursorOnHover,
                                  ],
                                ),
                                GestureDetector(
                                  onTap: () {
                                    viewModel.sendMessage();
                                  },
                                  child: SvgPicture.asset(
                                    'assets/images/send-svgrepo-com.svg',
                                    width: 20,
                                    height: 28,
                                  ).showCursorOnHover,
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          : GestureDetector(
              onTap: () => _onShowChat(true),
              child: Container(
                width: 65,
                height: 65,
                margin: const EdgeInsets.only(bottom: 50, right: 5),
                padding: const EdgeInsets.all(12),
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Colors.blue),
                child: Tooltip(
                    message: 'Help chat',
                    verticalOffset: 48,
                    textStyle:
                        const TextStyle(fontSize: 18, color: Colors.white),
                    child: SvgPicture.asset('assets/images/message-icon.svg')),
              ),
            ).showCursorOnHover;
    });
  }
}
