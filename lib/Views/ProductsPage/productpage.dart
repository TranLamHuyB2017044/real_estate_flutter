import 'package:flutter/material.dart';
// import 'package:flutter_lightbox/image_type.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_real_estate/models/product_model.dart';
import '../../viewmodels/provider.dart';
// import 'package:flutter_lightbox/flutter_lightbox.dart';
import 'package:flutter_avif/flutter_avif.dart';
import 'package:path/path.dart' as p;

class ProductPage extends ConsumerWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final productData = ref.watch(productDataProvider);
    bool isDesktop = MediaQuery.of(context).size.width > 1150;
    bool isMobile = MediaQuery.of(context).size.width < 1000;

    Widget renderStar() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          for (int i = 0; i < 4; i++)
            SvgPicture.asset(
              'assets/images/star.svg',
              width: 20,
              height: 20,
            ),
        ],
      );
    }

    bool checkExtensionFile(path) {
      final extension = p.extension(path);
      if (extension == '.avif') {
        return true;
      }
      return false;
    }

    return productData.when(
        data: (productData) {
          List<ProductModel> productList =
              productData.map((product) => product).toList();
          return GridView.count(
            padding: EdgeInsets.symmetric(
                horizontal: isMobile ? 20 : 150, vertical: 50),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: isMobile ? 0.8 : 0.55,
            crossAxisCount: isDesktop ? 4 : (isMobile ? 1 : 2),
            children: <Widget>[
              ...productList.map((item) => Container(
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
                                // showGeneralDialog(
                                //   context: context,
                                //   pageBuilder: (BuildContext context,
                                //       Animation animation,
                                //       Animation secondaryAnimation) {
                                //     return LightBox(
                                //         initialIndex: item.sId!,
                                //         images: [
                                //           ...productList.map((e) => e.img!)
                                //         ],
                                //         imageType: ImageType.network);
                                //   },
                                // );
                              },
                              child: ClipRRect(
                                borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(8),
                                    topRight: Radius.circular(8)),
                                child: checkExtensionFile(item.img)
                                    ? AvifImage.network(
                                        item.img!,
                                        fit: BoxFit.cover,
                                        width: double.infinity,
                                      )
                                    : Image.network(
                                        item.img!,
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
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        '${item.price}\$',
                                        style: const TextStyle(
                                            color: Colors.red,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      const SizedBox(
                                        width: 30,
                                      ),
                                      if (!isMobile) renderStar(),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    item.desc!,
                                    style: const TextStyle(
                                        overflow: TextOverflow.ellipsis),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text('Sold: ${item.inStock}'),
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
            ));
  }
}
