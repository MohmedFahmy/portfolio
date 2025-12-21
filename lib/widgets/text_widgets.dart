import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SansText extends StatelessWidget {
  const SansText({
    super.key,
    required this.text,
    required this.fontSize,
    required this.fontWeight,
  });
  final String text;
  final double fontSize;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.openSans(fontSize: fontSize, fontWeight: fontWeight),
    );
  }
}
