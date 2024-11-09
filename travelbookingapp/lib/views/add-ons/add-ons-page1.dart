import 'package:flutter/material.dart';

import 'package:travelbookingapp/components/crossicon-appbar.dart';
import 'package:travelbookingapp/components/rounded-rect-button.dart';

import 'package:travelbookingapp/core/bill_data.dart';
import 'package:travelbookingapp/core/meals_data.dart';
import 'package:travelbookingapp/core/service_data.dart';
import 'package:travelbookingapp/core/vehicle_data.dart';

import 'package:travelbookingapp/views/add-ons/components/additionalServices-com.dart';
import 'package:travelbookingapp/views/add-ons/components/billSection-com.dart';
import 'package:travelbookingapp/views/passenger-detail/components/ticket-com.dart';

class AddOnsMain extends StatefulWidget {
  final ServiceData travelData;
  const AddOnsMain({super.key, required this.travelData});

  @override
  State<AddOnsMain> createState() => _AddOnsMainState();
}

class _AddOnsMainState extends State<AddOnsMain> {
  late BillData billData;

  @override
  void initState() {
    super.initState();
    List<Passenger> passengers = [
      Passenger(passengerType: "Adult", amount: 1500),
      Passenger(passengerType: "Child 1 (age 3 - 10)", amount: 1000),
    ];
    billData = BillData(
      passengers: passengers,
      passengerCount: passengers.length,
    );
  }

  void addVehicleSupplements(List<VehicleData> supplement) {
    setState(() {
      billData.isTransportChargesAdded = true;
      if (supplement.isEmpty) {
        billData.isTransportChargesAdded = false;
      }
      billData.transportCharges = supplement;
    });
  }

  void addMealsSupplements(List<MealsData> supplement) {
    setState(() {
      billData.isMealsChargesAdded = true;
      if (supplement.isEmpty) {
        billData.isMealsChargesAdded = false;
      }
      billData.mealsCharges = supplement;
    });
  }

  void addOtherServicesSupplements(List<OtherServices> supplement) {
    setState(() {
      billData.isOtherChargesAdded = true;
      if (supplement.isEmpty) {
        billData.isOtherChargesAdded = false;
      }
      billData.otherCharges = supplement;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            PopUpAppBar(
              iconSize: 20,
              onPressed: () => Navigator.pop(context),
              heading: "Add-Ons",
            ),
            const SizedBox(height: 24),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Ticket(),
            ),
            AdditionalServices(
              travelData: widget.travelData,
              onSetVehicles: addVehicleSupplements,
              onSetMeals: addMealsSupplements,
              onSetOtherServices: addOtherServicesSupplements,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: GenerateBill(billData: billData),
            ),
            const SizedBox(height: 40),
            RoundedRectangularButton(
              onPressed: () => null,
              text: 'Continue',
              buttonColor: const Color(0xFFFDD951),
              textColor: const Color(0xFF836702),
              backgroundColor: const Color(0xFFFDD951),
              horizontalTextPadding: 120,
              verticalTextPadding: 14,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
