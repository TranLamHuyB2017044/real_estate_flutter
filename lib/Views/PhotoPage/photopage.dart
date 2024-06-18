import 'package:flutter/material.dart';
import 'package:flutter_lightbox/image_type.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_real_estate/Widgets/NavbarWidget/drawer.dart';
import 'package:my_real_estate/Widgets/NavbarWidget/responsive_appbar.dart';
import 'package:my_real_estate/models/books_model.dart';
import '../../viewmodels/photo_provider.dart';
import 'package:flutter_lightbox/flutter_lightbox.dart';

class PhotoPage extends ConsumerWidget {
  const PhotoPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final photoData = ref.watch(photoDataProvider);
    final bookData = ref.watch(bookDataProvider);
    bool isDesktop = MediaQuery.of(context).size.width > 900;
    bool isMobile = MediaQuery.of(context).size.width < 650;

    Widget renderStar(int numStar) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          for (int i = 1; i < numStar + 1; i++)
            SvgPicture.asset(
              'assets/images/star.svg',
              width: 20,
              height: 20,
            ),
        ],
      );
    }

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
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 0.55,
              crossAxisCount: isDesktop ? 5 : (isMobile ? 1 : 2),
              children: <Widget>[
                ...bookList.map((item) => Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                          boxShadow: const [
                            BoxShadow(
                                offset: Offset(0, 0),
                                blurRadius: 7,
                                spreadRadius: -1,
                                color: Colors.grey)
                          ]),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              flex: 2,
                              child: InkWell(
                                onTap: () {
                                  showGeneralDialog(
                                    context: context,
                                    pageBuilder: (BuildContext context,
                                        Animation animation,
                                        Animation secondaryAnimation) {
                                      return LightBox(
                                          initialIndex: item.bookId!,
                                          images: [
                                            ...bookList
                                                .map((e) => e.thumbnailUrl!)
                                          ],
                                          imageType: ImageType.network);
                                    },
                                  );
                                },
                                child: ClipRRect(
                                  borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(8),
                                      topRight: Radius.circular(8)),
                                  child: Image.network(
                                    item.thumbnailUrl!,
                                    fit: BoxFit.cover,
                                    width: double.infinity,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Expanded(
                              flex: 1,
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          '${item.originalPrice!}\$',
                                          style: const TextStyle(
                                              color: Colors.red,
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        const SizedBox(
                                          width: 14,
                                        ),
                                        Text(
                                          ' - ${item.discount!}%',
                                          style: const TextStyle(
                                              color: Colors.black54,
                                              fontSize: 15),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    ConstrainedBox(
                                        constraints:
                                            const BoxConstraints(minHeight: 50),
                                        child: Text(item.title!)),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        renderStar(item.avgRating!),
                                        const SizedBox(
                                          width: 30,
                                        ),
                                        Text('Sold: ${item.quantitySold!}'),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            )
                          ]),
                    ))
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
