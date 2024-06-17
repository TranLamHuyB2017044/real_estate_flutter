import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_real_estate/Widgets/NavbarWidget/drawer.dart';
import 'package:my_real_estate/Widgets/NavbarWidget/responsive_appbar.dart';
import 'package:my_real_estate/models/books_model.dart';
import '../../viewmodels/photo_provider.dart';

class PhotoPage extends ConsumerWidget {
  const PhotoPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final photoData = ref.watch(photoDataProvider);
    final bookData = ref.watch(bookDataProvider);
    bool isDesktop = MediaQuery.of(context).size.width > 900;
    bool isMobile = MediaQuery.of(context).size.width < 650;
    return Scaffold(
      appBar: ResponsiveAppBar(
        isDesktop: isDesktop,
        height: isDesktop ? 100 : 60,
      ),
      drawer: !isDesktop ? const CustomDrawer() : null,
      body: bookData.when(
          data: (bookData) {
            List<BookModel> bookList = bookData.map((book) => book).toList();
            return GridView.count(
              padding:
                  const EdgeInsets.symmetric(horizontal: 150, vertical: 50),
              crossAxisSpacing: 80,
              mainAxisSpacing: 80,
              crossAxisCount: isDesktop ? 4 : (isMobile ? 1 : 2),
              children: <Widget>[
                ...bookList.map((item) => Image.network(item.thumbnailUrl!,
                    fit: BoxFit.contain, width: 60, height: 100))
              ],
            );
          },
          error: (err, s) => Text(err.toString()),
          loading: () => const Center(
                child: CircularProgressIndicator(
                  color: Colors.blue,
                ),
              )),
    );
  }
}
