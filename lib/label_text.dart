import 'package:flutter/material.dart';


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
      style: TextStyle(
        fontSize: fontSize,
        color: fontColor,
        fontWeight: fontWeight,
      ),
    );
  }
}