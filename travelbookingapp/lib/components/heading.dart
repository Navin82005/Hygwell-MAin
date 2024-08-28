import 'package:flutter/material.dart';

class Heading extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final Color color;
  const Heading({
    super.key,
    required this.text,
    this.fontSize = 16,
    this.fontWeight = FontWeight.w600,
    this.color = const Color(0xFF000000),
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: "Montserrat",
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
      ),
    );
  }
}
