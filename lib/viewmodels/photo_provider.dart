import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_real_estate/models/books_model.dart';
import 'package:my_real_estate/models/photo_model.dart';
import 'package:my_real_estate/viewmodels/books_viewmodel.dart';
import 'package:my_real_estate/viewmodels/photo_viewmodel.dart';

final photoDataProvider = FutureProvider<List<Photo>>((ref) async {
  return await ref.watch(photoProvider).getPhotos();
});

final bookDataProvider = FutureProvider<List<BookModel>>((ref) async {
  return await ref.watch(booksProvider).getBooks();
});
