import 'package:flutter/material.dart';
import 'package:travelbookingapp/views/passenger-detail/components/travelCard-com.dart';

class Ticket extends StatelessWidget {
  const Ticket({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: const Color(0xFFE8E7EE)),
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: const Padding(
        padding: EdgeInsets.all(16),
        child: TravelDetails(),
      ),
    );
  }
}
