import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart';
import 'package:my_real_estate/models/photo_model.dart';

class PhotoViewModel extends ChangeNotifier {
  final String baseURL = 'https://jsonplaceholder.typicode.com/photos';

  Future<List<Photo>> getPhoto() async {
    Response response = await get(Uri.parse(baseURL));

    if (response.statusCode == 200) {
      final List result = jsonDecode(response.body)['data'];
      return result.map((photo) => Photo.fromJson(photo)).toList();
    } else {
      throw Exception(response.reasonPhrase);
    }
  }

  final photoProvider = Provider<PhotoViewModel>((ref) => PhotoViewModel());
}
