import 'package:flutter/material.dart';

class DashedDivider extends StatelessWidget {
  final Color color;
  final double thickness;
  final double dashLength;
  final double dashGap;
  final double indent;
  final double endIndent;

  const DashedDivider({
    super.key,
    this.color = Colors.black,
    this.thickness = 1.0,
    this.dashLength = 5.0,
    this.dashGap = 5.0,
    this.indent = 0.0,
    this.endIndent = 0.0,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final boxWidth = constraints.constrainWidth();
        final dashCount =
            (boxWidth - indent - endIndent) ~/ (dashLength + dashGap);
        return Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: List.generate(dashCount, (_) {
            return Padding(
              padding: EdgeInsets.only(right: dashGap),
              child: SizedBox(
                width: dashLength,
                height: thickness,
                child: DecoratedBox(
                  decoration: BoxDecoration(color: color),
                ),
              ),
            );
          }),
        );
      },
    );
  }
}
