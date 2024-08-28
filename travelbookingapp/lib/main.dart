import 'package:flutter/material.dart';
import 'package:travelbookingapp/controller/fetch-service.dart';
import 'package:travelbookingapp/core/service_data.dart';
import 'package:travelbookingapp/core/vehicle_data.dart';
import 'package:travelbookingapp/views/add-ons/add-ons-page1.dart';
import 'package:travelbookingapp/views/available/available-page.dart';
import 'package:travelbookingapp/views/info/info-page.dart';
import 'package:travelbookingapp/views/passenger-detail/passenger-details-page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: InfoPage(
      //   backWidget: const AvailableServicePage(),
      //   serviceData: data,
      // ),
      home: AddOnsMain(travelData: FetchServiceData.data),
    );
  }
}
