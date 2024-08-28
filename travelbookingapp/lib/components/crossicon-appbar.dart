import 'package:flutter/material.dart';
import 'package:travelbookingapp/components/heading.dart';

class PopUpAppBar extends StatelessWidget {
  final Function? onPressed;
  final double iconSize;
  final String heading;
  final double headerFontSize;
  final Color headerTextColor;
  final FontWeight headerFontWeight;

  const PopUpAppBar({
    super.key,
    this.onPressed,
    this.iconSize = 11,
    this.heading = "Header",
    this.headerFontSize = 16,
    this.headerFontWeight = FontWeight.w600,
    this.headerTextColor = const Color(0xFF2B2939),
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: 64,
        width: double.infinity,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              blurRadius: 10,
              color: Colors.black.withOpacity(.07),
              offset: const Offset(0, 1),
              spreadRadius: 2,
            )
          ],
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () => onPressed!(),
                icon: Icon(
                  Icons.close,
                  color: const Color(0XFF2B2939),
                  size: iconSize,
                ),
              ),
              Heading(
                text: heading,
                fontSize: headerFontSize,
                color: headerTextColor,
                fontWeight: headerFontWeight,
              ),
              const SizedBox(width: 50),
            ],
          ),
        ),
      ),
    );
  }
}
