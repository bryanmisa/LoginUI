import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomElevatedButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final double fontSize;

  const CustomElevatedButton({
    super.key,
    required this.onPressed,
    required this.text,
    required this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      // elevated button style
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF013665),
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
      // adding a padding of the inside text.
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Text(
          text,
          style: TextStyle(
            fontFamily: 'Roboto',
            fontSize: fontSize,
          ),
        ),
      ),
    );
  }
}
