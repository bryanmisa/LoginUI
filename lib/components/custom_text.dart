import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

enum CustomFontWeight {
  light,
  normal,
  bold,
}

class CustomText extends StatelessWidget {
  final String text;
  final double fontSize;
  final CustomFontWeight fontWeight;
  final Color color; // default color

  const CustomText({
    super.key,
    required this.text,
    required this.fontSize,
    this.fontWeight = CustomFontWeight.normal,
    this.color = Colors.black,
  });

  FontWeight _getFontWeight() {
    switch (fontWeight) {
      case CustomFontWeight.light:
        return FontWeight.w300;
      case CustomFontWeight.normal:
        return FontWeight.normal;
      case CustomFontWeight.bold:
        return FontWeight.bold;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: 'Roboto',
        fontWeight: _getFontWeight(),
        fontSize: fontSize,
        color: color,
      ),
      textAlign: TextAlign.center,
    );
  }
}
