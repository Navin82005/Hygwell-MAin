import 'package:flutter/material.dart';

class RideOptions extends StatefulWidget {
  const RideOptions({super.key});

  @override
  _RideOptionsState createState() => _RideOptionsState();
}

class _RideOptionsState extends State<RideOptions> {
  // This list will track whether an item has been selected or not
  List<bool> isSelected = [false, false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: const Color(0xFFE8E7EE)),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 10,
                spreadRadius: 2,
                offset: const Offset(0, 5),
              ),
            ],
          ),
          child: Column(
            children: [
              buildRideOption("Private Car (4 Seater)", "₹ 500", 0),
              buildRideOption("Private Car (7 Seater)", "₹ 500", 1),
              buildRideOption("Shared rides", "₹ 500", 2),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildRideOption(String title, String price, int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                price,
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          IconButton(
            icon: Icon(
              isSelected[index] ? Icons.check_circle : Icons.add_circle,
              color: isSelected[index] ? Colors.green : Colors.blue,
              size: 30,
            ),
            onPressed: () {
              setState(() {
                isSelected[index] = !isSelected[index];
              });
            },
          ),
        ],
      ),
    );
  }
}
