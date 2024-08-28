import 'package:flutter/material.dart';
import 'package:travelbookingapp/components/custom-appbar.dart';
import 'package:travelbookingapp/components/rounded-rect-button.dart';
import 'package:travelbookingapp/views/add-ons/add-ons-page1.dart';
import 'package:travelbookingapp/views/passenger-detail/components/form-com.dart';
import 'package:travelbookingapp/views/passenger-detail/components/ticket-com.dart';
import 'package:travelbookingapp/views/passenger-detail/components/travelCard-com.dart';

class PassengerDetails extends StatelessWidget {
  const PassengerDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  color: const Color(0xFFB5D3F5),
                  height: 150,
                  width: double
                      .infinity, // Ensure the container has a bounded width
                ),
                Column(
                  children: [
                    BackShareAppBar(
                      backFunction: () => Navigator.pop(context),
                    ),
                    const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                      child: Ticket(),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          border: Border.all(
                              width: 1, color: const Color(0xFFE8E7EE)),
                          color: const Color(0xFFFF6666),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16),
                          child: Column(
                            children: [
                              const Text(
                                "Your ticket information will be sent on this number",
                                style: TextStyle(
                                  fontFamily: "Montserrat",
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(height: 25),
                              Row(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(right: 6),
                                    child: Icon(
                                      Icons.person,
                                      color: Colors.white,
                                      size: 17,
                                    ),
                                  ),
                                  const Text(
                                    "91911234589",
                                    style: TextStyle(
                                      fontFamily: "Montserrat",
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white,
                                    ),
                                  ),
                                  const Spacer(),
                                  RoundedRectangularButton(
                                    onPressed: () => print("edit"),
                                    text: "Edit",
                                    buttonColor: Colors.white,
                                    horizontalTextPadding: 16,
                                    verticalTextPadding: 4,
                                    backgroundColor: Colors.white,
                                    textColor: const Color(0xFFFF6666),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(16),
                      child: PassengerDetailsFrom(),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
