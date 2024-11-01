import 'package:flutter/material.dart';
import 'package:travelbookingapp/components/icon-button.dart';
import 'package:travelbookingapp/components/rounded-rect-button.dart';
import 'package:travelbookingapp/controller/fetch-service.dart';

import 'package:travelbookingapp/views/available/components/display-com.dart';
import 'package:travelbookingapp/views/available/components/header-com.dart';
import 'package:travelbookingapp/views/info/info-page.dart';

// DISPLAYS THE AVAILABLE BOATS FOR BOOKING AND RENTS
class AvailableServicePage extends StatefulWidget {
  const AvailableServicePage({super.key});

  @override
  State<AvailableServicePage> createState() => _AvailableServicePageState();
}

class _AvailableServicePageState extends State<AvailableServicePage> {
  final List<String> imagePaths = [
    "https://elements-resized.envatousercontent.com/envato-dam-assets-production/EVA/TRX/c4/68/75/62/0a/v1_E10/E10QS57.jpg?w=1400&cf_fit=scale-down&mark-alpha=18&mark=https%3A%2F%2Felements-assets.envato.com%2Fstatic%2Fwatermark4.png&q=85&format=auto&s=56285bda978c986d245aaf096ef4fe4325d2556df53778e01d04b681d880fcc9",
    "https://images.unsplash.com/photo-1444487233259-dae9d907a740?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    "https://images.unsplash.com/photo-1436162716854-dcb9157bfac1?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.blueAccent,
        title: const HeaderAvailable(),
        leading: Container(
          constraints: const BoxConstraints(maxHeight: 32, maxWidth: 32),
          child: CustomIconButton(
            iconData: Icons.arrow_back_ios_new,
            onPressed: () => print("Back from available page"),
            iconSize: 16,
            iconColor: Colors.white,
            backgroundHeight: 32,
            backgroundWith: 32,
            backgroundColor: Colors.transparent,
          ),
        ),
        actions: [
          RoundedRectangularButton(
            onPressed: () => print("Modify"),
            text: "Modify",
            buttonColor: Colors.white,
          ),
          const SizedBox(
            width: 25,
          )
        ],
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          header,
          const SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.only(bottom: 40),
            child: GestureDetector(
              onTap: () => Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => InfoPage(
                    backWidget: const AvailableServicePage(),
                    serviceData: FetchServiceData.data,
                  ),
                ),
              ),
              child: DisplayCard(
                images: imagePaths,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 40),
            child: DisplayCard(
              images: imagePaths,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 40),
            child: DisplayCard(
              images: imagePaths,
            ),
          ),
          const SizedBox(height: 50)
        ],
      ),
    );
  }

  Widget header = Material(
    elevation: 2,
    color: Colors.white,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
    child: Container(
      height: 48,
      margin: const EdgeInsets.only(left: 16),
      width: double.infinity,
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Showing available boats",
            style: TextStyle(
              fontFamily: "Montserrat",
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    ),
  );
}
