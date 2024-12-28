import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LabelText extends StatelessWidget {
  const LabelText ({
    super.key,
    required this.label,
    required this.fontSize,
    required this.fontColor,
    required this.fontWeight,
  });

  final String label;
  final double fontSize;
  final Color fontColor;
  final FontWeight fontWeight;

  @override
  Widget build (context){
    return Text(
      label,
      style: GoogleFonts.lato(
        fontSize: fontSize,
        color: fontColor,
        fontWeight: fontWeight,
      ),
      textAlign: TextAlign.center,
    );
  }
}