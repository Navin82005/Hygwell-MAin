import 'package:flutter/material.dart';

class BulletList extends StatelessWidget {
  final String heading;
  final List list;
  final double bulletGap;
  const BulletList(
      {super.key,
      required this.list,
      required this.heading,
      required this.bulletGap});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          heading,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 16,
            fontFamily: "Montserrat",
          ),
        ),
        const SizedBox(height: 4),
        ...list
            .map(
              (e) => Padding(
                padding: EdgeInsets.symmetric(vertical: bulletGap),
                child: Row(
                  children: [
                    const SizedBox(width: 10),
                    const Icon(Icons.circle, size: 5, color: Color(0xFF4F4B68)),
                    const SizedBox(width: 12),
                    Text(
                      e,
                      style: const TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        fontFamily: "Montserrat",
                        color: Color(0xFF4F4B68),
                      ),
                    ),
                  ],
                ),
              ),
            )
            .toList()
      ],
    );
  }
}
