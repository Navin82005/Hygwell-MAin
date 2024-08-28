import 'package:flutter/material.dart';

class RoundedRectangularButton extends StatelessWidget {
  final Function onPressed;
  final String text;
  final Color buttonColor;
  final Color backgroundColor;
  final Color textColor;
  final double verticalTextPadding;
  final double horizontalTextPadding;
  final double fontSize;
  final FontWeight fontWeight;

  const RoundedRectangularButton({
    super.key,
    required this.onPressed,
    required this.text,
    required this.buttonColor,
    this.textColor = Colors.white,
    this.backgroundColor = Colors.transparent,
    this.verticalTextPadding = 8,
    this.horizontalTextPadding = 14,
    this.fontSize = 15,
    this.fontWeight = FontWeight.w500,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => onPressed(),
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(backgroundColor),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
              side: BorderSide(
                width: 1,
                color: buttonColor,
              ),
            ),
          )),
      child: Padding(
        padding: EdgeInsets.symmetric(
            vertical: verticalTextPadding, horizontal: horizontalTextPadding),
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontFamily: "Montserrat",
            fontSize: fontSize,
            fontWeight: fontWeight,
          ),
        ),
      ),
    );
  }
}
