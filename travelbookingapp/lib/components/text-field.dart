import 'package:flutter/material.dart';

class FormTextField extends StatelessWidget {
  final String placeHolder;
  final Color placeHolderColor;
  final double placeHolderTextFontSize;
  final String helperText;
  final Color helperHolderColor;
  final double helperTextFontSize;
  final EdgeInsets contentPadding;
  final double borderRadius;
  final Color borderColor;
  final Color borderColorFocused;
  final double borderThickness;

  final String headerText;
  final Color headerColor;
  final double headerFontSize;

  const FormTextField({
    super.key,
    this.placeHolder = "enter value",
    this.placeHolderColor = const Color(0xFF767199),
    this.placeHolderTextFontSize = 14,
    this.helperText = "",
    this.helperHolderColor = const Color(0xFF767199),
    this.helperTextFontSize = 14,
    this.contentPadding =
        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
    this.borderRadius = 8,
    this.borderColor = const Color(0xFF000000),
    this.borderColorFocused = const Color(0xFF000000),
    this.borderThickness = 1,
    this.headerText = "header",
    this.headerColor = const Color(0xFF767199),
    this.headerFontSize = 12,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          headerText,
          style: TextStyle(
            fontFamily: "Montserrat",
            fontSize: headerFontSize,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 5),
        TextField(
          decoration: InputDecoration(
            hintText: placeHolder,
            hintStyle: TextStyle(
              color: placeHolderColor,
              fontFamily: "Montserrat",
              fontSize: placeHolderTextFontSize,
            ),
            filled: true,
            fillColor: Colors.white,
            contentPadding: contentPadding,
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: borderColor,
                width: borderThickness,
              ),
              borderRadius: BorderRadius.circular(borderRadius),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: borderColorFocused,
                width: borderThickness,
              ),
            ),
          ),
        ),
        const SizedBox(height: 5),
        Text(
          helperText,
          style: TextStyle(
            color: helperHolderColor,
            fontFamily: "Montserrat",
            fontSize: helperTextFontSize,
          ),
        ),
      ],
    );
  }
}
