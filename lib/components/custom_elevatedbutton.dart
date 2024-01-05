import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final EdgeInsetsGeometry padding;
  final RoundedRectangleBorder shape;
  final double elevation;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final TextStyle textStyle;

  const CustomElevatedButton({
    super.key,
    required this.onPressed,
    required this.text,
    required this.padding,
    required this.shape,
    required this.textStyle,
    this.elevation = 2.0,
    this.backgroundColor,
    this.foregroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      // elevated button style
      style: ElevatedButton.styleFrom(
        shape: shape,
        elevation: elevation,
        backgroundColor: backgroundColor,
        foregroundColor: foregroundColor,
      ),
      // adding a padding of the inside text.
      child: Padding(
        padding: padding,
        child: Text(
          text,
          style: textStyle,
        ),
      ),
    );
  }
}
