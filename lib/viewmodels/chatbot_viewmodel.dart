import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class Message {
  final String message;
  final bool isUser;
  Message(this.message, this.isUser);
}

class ChatBot_ViewModel extends ChangeNotifier {
  final TextEditingController _userInput = TextEditingController();
  String response = '';
  // final String _url = 'http://127.0.0.1:5000/chatbot';
  final String _url = 'https://dialogflow-3qwj3fu0n-tranlamhuyb2017044s-projects.vercel.app/chatbot';
  final List<Message> _messages = [];

  TextEditingController get userInput => _userInput;
  String get url => _url;
  List<Message> get messages => _messages;

  set userInput(_) {
    notifyListeners();
  }

  Future<void> sendMessage() async {
    try {
      if (_userInput.text.isEmpty) return;
      String userRequest = _userInput.text;
      _userInput.clear();
      messages.add(Message(userRequest, true));
      notifyListeners();
      var rs = await http.post(
        Uri.parse(url),
        headers: {'Content-Type': 'application/json'},
        body: json.encode({'text': userRequest}),
      );
      notifyListeners();
      if (rs.statusCode == 200) {
        final responseData = json.decode(rs.body);
        response = responseData['Zibot'];
        notifyListeners();
        messages.add(Message(response, false));
        notifyListeners();
      }
    } catch (e) {
      debugPrint('Error: $e');
    }
  }

  @override
  void dispose() {
    userInput.dispose();
    super.dispose();
  }
}
