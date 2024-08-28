import 'package:flutter/material.dart';

class Currency extends StatelessWidget {
  final Icon currencyIcon;
  final String text;
  const Currency({super.key, required this.currencyIcon, required this.text});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        currencyIcon,
        Text(
          text,
          style: const TextStyle(
            fontFamily: "Montserrat",
            fontWeight: FontWeight.w600,
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}
