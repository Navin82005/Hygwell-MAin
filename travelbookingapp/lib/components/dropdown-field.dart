import 'package:flutter/material.dart';

class FormDropDownField extends StatefulWidget {
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

  final List<String> items;

  const FormDropDownField({
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
    required this.items,
  });

  @override
  State<FormDropDownField> createState() => _FormDropDownFieldState();
}

class _FormDropDownFieldState extends State<FormDropDownField> {
  String? selectedGender = "Male";

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.headerText,
          style: TextStyle(
            fontFamily: "Montserrat",
            fontSize: widget.headerFontSize,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 5),
        DropdownButtonFormField<String>(
          value: selectedGender,
          decoration: InputDecoration(
            hintText: widget.placeHolder,
            hintStyle: TextStyle(
              color: widget.placeHolderColor,
              fontFamily: "Montserrat",
              fontSize: widget.placeHolderTextFontSize,
            ),
            filled: true,
            fillColor: Colors.white,
            contentPadding: widget.contentPadding,
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: widget.borderColor,
                width: widget.borderThickness,
              ),
              borderRadius: BorderRadius.circular(widget.borderRadius),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: widget.borderColorFocused,
                width: widget.borderThickness,
              ),
            ),
          ),
          style: TextStyle(
            fontFamily: "Montserrat",
            fontSize: widget.placeHolderTextFontSize,
            color: widget.placeHolderColor,
          ),
          items: widget.items
              .map((gender) => DropdownMenuItem<String>(
                    value: gender,
                    child: Text(gender),
                  ))
              .toList(),
          onChanged: (value) {
            setState(() {
              selectedGender = value;
            });
          },
        )
      ],
    );
  }
}
