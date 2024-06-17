import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_real_estate/Widgets/NavbarWidget/drawer.dart';
import 'package:my_real_estate/Widgets/NavbarWidget/responsive_appbar.dart';

import '../../models/photo_model.dart';
import '../../viewmodels/photo_provider.dart';

class PhotoPage extends ConsumerWidget {
  const PhotoPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final photoData = ref.watch(photoDataProvider);
    bool isDesktop = MediaQuery.of(context).size.width > 900;
    return Scaffold(
      appBar: ResponsiveAppBar(
        isDesktop: isDesktop,
        height: isDesktop ? 100 : 60,
      ),
      drawer: !isDesktop ? const CustomDrawer() : null,
      body: photoData.when(
          data: (photoData) {
            List<Photo> photoList = photoData.map((photo) => photo).toList();
            return ListView.builder(
                itemCount: photoList.length,
                itemBuilder: (_, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.network(
                        photoList[index].thumbnailUrl!,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text('${photoList[index].albumId}'),
                      const SizedBox(
                        height: 15,
                      ),
                      Text('${photoList[index].id}'),
                      const SizedBox(
                        height: 15,
                      ),
                      Text('${photoList[index].title}'),
                    ],
                  );
                });
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
