import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart';
import 'package:my_real_estate/models/books_model.dart';

class BookViewModel {
  final String baseURL = 'http://localhost:5000/api/collection/';

  Future getBooks() async {
    Response response = await get(Uri.parse(baseURL));

    if (response.statusCode == 200) {
      final Map<String, dynamic> jsonResponse = jsonDecode(response.body);
      final List<dynamic> items = jsonResponse['items'];
      final List<BookModel> booksResponse =
          items.map((item) => BookModel.fromJson(item)).toList();
      return booksResponse;
    } else {
      throw Exception(response.reasonPhrase);
    }
  }
}

final booksProvider = Provider<BookViewModel>((ref) => BookViewModel());
