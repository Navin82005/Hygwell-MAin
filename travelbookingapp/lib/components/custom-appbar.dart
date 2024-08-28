import 'package:flutter/material.dart';
import 'package:travelbookingapp/components/icon-button.dart';

class BackShareAppBar extends StatelessWidget {
  final Widget backWidget;
  final Function? backFunction;
  const BackShareAppBar({
    super.key,
    this.backWidget = const Placeholder(),
    this.backFunction,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomIconButton(
                iconData: Icons.arrow_back,
                iconSize: 18,
                iconColor: const Color(0xFF2B2939),
                backgroundHeight: 32,
                backgroundWith: 32,
                backgroundColor: Colors.white,
                onPressed: () {
                  if (backFunction != null) {
                    backFunction!();
                  } else {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => backWidget),
                    );
                  }
                }),
            const CustomIconButton(
              iconData: Icons.share,
              iconSize: 18,
              iconColor: Color(0xFF2B2939),
              backgroundHeight: 32,
              backgroundWith: 32,
              backgroundColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
