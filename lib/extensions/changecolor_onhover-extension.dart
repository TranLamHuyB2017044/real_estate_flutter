import 'package:flutter/material.dart';

class ColorChangeOnHover extends StatefulWidget {
  final Widget child;
  final Color hoverColor;
  final Color nonHoverColor;

  const ColorChangeOnHover({
    super.key,
    required this.child,
    required this.hoverColor,
    required this.nonHoverColor,
  });

  @override
  // ignore: library_private_types_in_public_api
  _ColorChangeOnHoverState createState() => _ColorChangeOnHoverState();
}

class _ColorChangeOnHoverState extends State<ColorChangeOnHover> {
  bool _hovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => _mouseEnter(true),
      onExit: (_) => _mouseEnter(false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        color: _hovering ? widget.hoverColor : widget.nonHoverColor,
        child: widget.child,
      ),
    );
  }

  void _mouseEnter(bool hover) {
    setState(() {
      _hovering = hover;
    });
  }
}

class TextColorChangeOnHover extends StatefulWidget {
  final String text;
  final TextStyle defaultStyle;
  final TextStyle hoverStyle;

  const TextColorChangeOnHover({
    super.key,
    required this.text,
    required this.defaultStyle,
    required this.hoverStyle,
  });

  @override
  // ignore: library_private_types_in_public_api
  _TextColorChangeOnHoverState createState() => _TextColorChangeOnHoverState();
}

class _TextColorChangeOnHoverState extends State<TextColorChangeOnHover> {
  bool _hovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => _mouseEnter(true),
      onExit: (_) => _mouseEnter(false),
      child: AnimatedDefaultTextStyle(
        style: _hovering ? widget.hoverStyle : widget.defaultStyle,
        duration: const Duration(milliseconds: 0),
        child: Text(widget.text),
      ),
    );
  }

  void _mouseEnter(bool hover) {
    setState(() {
      _hovering = hover;
    });
  }
}
