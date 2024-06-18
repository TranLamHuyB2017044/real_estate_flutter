import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart';
import 'package:my_real_estate/models/product_model.dart';

class ProductViewModel {
  final String baseURL =
      'https://tranlamhuy-be-ecommerce.onrender.com/api/product';

  Future getProducts() async {
    Response response = await get(Uri.parse(baseURL));

    if (response.statusCode == 200) {
      final List jsonResponse = jsonDecode(response.body);
      
      final List productsResponse =
          jsonResponse.map((item) => ProductModel.fromJson(item)).toList();
      return productsResponse;
    } else {
      throw Exception(response.reasonPhrase);
    }
  }
}

final productsProvider =
    Provider<ProductViewModel>((ref) => ProductViewModel());
