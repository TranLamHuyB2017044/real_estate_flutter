import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart';
import 'package:my_real_estate/models/photo_model.dart';

class PhotoViewModel {
  final String baseURL = 'https://jsonplaceholder.typicode.com/photos';

  Future<List<Photo>> getPhotos() async {
    Response response = await get(Uri.parse(baseURL));

    if (response.statusCode == 200) {
      final List result = jsonDecode(response.body);
      return result.map((photo) => Photo.fromJson(photo)).toList();
    } else {
      throw Exception(response.reasonPhrase);
    }
  }
}

final photoProvider = Provider<PhotoViewModel>((ref) => PhotoViewModel());
