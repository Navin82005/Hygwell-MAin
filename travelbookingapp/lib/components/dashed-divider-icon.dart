import 'package:flutter/material.dart';

class DashedDividerWithIcon extends StatelessWidget {
  final Color color;
  final double thickness;
  final double dashLength;
  final double dashGap;
  final double indent;
  final double endIndent;
  final Icon icon;

  const DashedDividerWithIcon({
    super.key,
    this.color = Colors.black,
    this.thickness = 1.0,
    this.dashLength = 5.0,
    this.dashGap = 5.0,
    this.indent = 0.0,
    this.endIndent = 0.0,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    final iconWidth =
        icon.size ?? 24.0; // Assume a default icon size if not specified
    final totalDashWidth = dashLength + dashGap;

    // Calculate the number of dashes on either side of the icon
    final dashesPerSide =
        ((MediaQuery.of(context).size.width - indent - endIndent - iconWidth) /
                2) ~/
            totalDashWidth;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Left dashes
        for (int i = 0; i < dashesPerSide; i++)
          Padding(
            padding: EdgeInsets.only(right: dashGap),
            child: SizedBox(
              width: dashLength,
              height: thickness,
              child: DecoratedBox(
                decoration: BoxDecoration(color: color),
              ),
            ),
          ),

        // Center icon
        icon,

        // Right dashes
        for (int i = 0; i < dashesPerSide; i++)
          Padding(
            padding: EdgeInsets.only(left: dashGap),
            child: SizedBox(
              width: dashLength,
              height: thickness,
              child: DecoratedBox(
                decoration: BoxDecoration(color: color),
              ),
            ),
          ),
      ],
    );
  }
}
