import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final Function? onPressed;
  final IconData iconData;
  final double iconSize;
  final Color iconColor;
  final Color backgroundColor;
  final double backgroundHeight;
  final double backgroundWith;

  const CustomIconButton({
    super.key,
    this.onPressed,
    required this.iconData,
    required this.iconSize,
    required this.iconColor,
    required this.backgroundHeight,
    required this.backgroundWith,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(50),
      ),
      height: backgroundHeight + 14,
      width: backgroundWith + 14,
      child: Center(
        child: IconButton(
          onPressed: () => onPressed!(),
          icon: Icon(
            iconData,
            color: iconColor,
            size: iconSize,
          ),
        ),
      ),
    );
  }
}
