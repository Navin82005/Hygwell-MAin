import 'package:flutter/material.dart';
import 'package:travelbookingapp/components/dashed-divider-icon.dart';
import 'package:travelbookingapp/components/dashed-divider.dart';

class TravelDetails extends StatelessWidget {
  const TravelDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Assam Travel Service",
          style: TextStyle(
            fontFamily: "Montserrat",
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text(
                  "7:00 AM",
                  style: TextStyle(
                    fontFamily: "Montserrat",
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  "From",
                  style: TextStyle(
                    fontFamily: "Montserrat",
                    fontSize: 10,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                DashedDividerWithIcon(
                  color: Color(0xFFD1D0DD),
                  icon: Icon(
                    Icons.directions_boat,
                    color: Colors.blueAccent,
                  ),
                  indent: 270,
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  "3:00 PM",
                  style: TextStyle(
                    fontFamily: "Montserrat",
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  "To",
                  style: TextStyle(
                    fontFamily: "Montserrat",
                    fontSize: 10,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: 20),
        DashedDivider(
          color: Color(0xFFC1B8B8),
          dashGap: 8,
          dashLength: 5,
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Row(
                  children: [
                    Icon(Icons.person, size: 20),
                    SizedBox(width: 8),
                    Text(
                      "2 Seats",
                      style: TextStyle(
                        fontFamily: "Montserrat",
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                )
              ],
            ),
            Row(
              children: [
                Row(
                  children: [
                    Icon(Icons.currency_rupee, size: 20),
                    SizedBox(width: 8),
                    Text(
                      "2,500",
                      style: TextStyle(
                        fontFamily: "Montserrat",
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ],
    );
  }
}
