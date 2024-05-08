import 'package:flutter/material.dart';
import 'package:my_real_estate/extensions/translate_onHover_extension.dart';
import 'package:universal_html/html.dart' as html;


extension HoverExtensions on Widget {
  static final appContainer =
      html.window.document.getElementById('app-container');

  Widget get showCursorOnHover {
    return MouseRegion(
      child: this,
      onHover: (event){
        appContainer?.style.cursor = 'pointer';
      },
      onExit: (event){
        appContainer?.style.cursor = 'default';
      }
    );
  }
  Widget get moveUpOnHover {
    return TranslateOnHover(
      child: this,
    );
  }

  Widget changeColorOnHover({
    Color? normalColor,
    Color? hoverColor,
  }) {
    return MouseRegion(
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        color: normalColor,
        child: this,
      ),
      onHover: (event) {

      },
    );
  }
}