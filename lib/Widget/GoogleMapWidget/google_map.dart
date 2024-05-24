// ignore_for_file: implementation_imports

// ignore: avoid_web_libraries_in_flutter
import 'dart:html';
import 'package:flutter/material.dart';
import 'package:google_maps/google_maps.dart';
import 'dart:ui_web' as ui;
// ignore: depend_on_referenced_packages
import 'package:web/src/dom/html.dart';

class GoogleMap extends StatelessWidget {
  const GoogleMap({super.key, required this.width, required this.height});
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    String htmlId = "7";

    // ignore: undefined_prefixed_name
    ui.platformViewRegistry.registerViewFactory(htmlId, (int viewId) {
      final myLatlng3 = LatLng(10.762622, 106.660172); //Hồ Chí Minh
      // final myLatlng2 = LatLng(21.028511, 105.804817); //  Hà Nội
      final myLatlng = LatLng(10.045031, 105.746855); //Cần Thơ
      final mapOptions = MapOptions()
        ..zoom = 10
        ..center = LatLng(10.762622, 106.660172) // Đặt trung tâm ở Hồ Chí Minh
        ..zoomControlOptions = (ZoomControlOptions()
          ..position = ControlPosition.TOP_RIGHT) // Set zoom control position
        ..mapTypeControlOptions =
            (MapTypeControlOptions()..position = ControlPosition.TOP_RIGHT)
        ..gestureHandling = 'cooperative';

      final elem = DivElement()
        ..id = htmlId
        ..style.width = "100%"
        ..style.height = "100%"
        ..style.border = 'none';

      final map = GMap(elem as HTMLElement?, mapOptions);

      final marker = Marker(MarkerOptions()
        ..position = myLatlng
        ..map = map
        ..title = 'Hello World!'
        ..icon =
            'https://developers.google.com/maps/documentation/javascript/examples/full/images/beachflag.png');

      // Another marker
      Marker(
        MarkerOptions()
          ..position = myLatlng3
          ..map = map,
      );

      final infoWindow = InfoWindow(InfoWindowOptions()..content = '123');
      marker.onClick.listen((event) => infoWindow.open(map, marker));
      return elem;
    });

    return SizedBox(
      height: height,
      width: width,
      child: HtmlElementView(viewType: htmlId),
    );
  }
}
