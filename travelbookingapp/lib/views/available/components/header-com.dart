import 'package:flutter/material.dart';

class HeaderAvailable extends StatelessWidget {
  const HeaderAvailable({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Boarding point",
          style: TextStyle(
            fontFamily: "Montserrat",
            fontWeight: FontWeight.w600,
            fontSize: 16,
            color: Colors.white,
          ),
        ),
        Text(
          "Wed, Jun 20 - 2 passengers",
          style: TextStyle(
            fontSize: 12,
            color: Colors.white,
            fontFamily: "Montserrat",
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
