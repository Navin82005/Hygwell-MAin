import 'package:flutter/material.dart';

class DisplayCardText extends StatelessWidget {
  final String serviceName;
  final String serviceDescription;
  final String serviceRent;
  const DisplayCardText(
      {super.key,
      required this.serviceName,
      required this.serviceDescription,
      required this.serviceRent});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 8),
        Text(
          serviceName,
          style: const TextStyle(
            fontFamily: "Montserrat",
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          serviceDescription,
          style: const TextStyle(
            fontFamily: "Montserrat",
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 8),
        Row(children: [
          const Icon(Icons.currency_rupee, size: 17),
          Text(
            "$serviceRent / Adult",
            style: const TextStyle(
              fontFamily: "Montserrat",
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
        ])
      ],
    );
  }
}
