import 'package:flutter/material.dart';
import 'package:travelbookingapp/components/dashed-divider.dart';
import 'package:travelbookingapp/components/heading.dart';
import 'package:travelbookingapp/core/service_data.dart';
import 'package:travelbookingapp/views/add-ons/components/meals-com.dart';
import 'package:travelbookingapp/views/add-ons/components/otherServices-com.dart';
import 'package:travelbookingapp/views/add-ons/components/transport-com.dart';

class AdditionalServices extends StatefulWidget {
  final ServiceData travelData;
  final Function onSetVehicles;
  final Function onSetMeals;
  final Function onSetOtherServices;

  const AdditionalServices({
    super.key,
    required this.travelData,
    required this.onSetVehicles,
    required this.onSetMeals,
    required this.onSetOtherServices,
  });

  @override
  State<AdditionalServices> createState() => _AdditionalServicesState();
}

class _AdditionalServicesState extends State<AdditionalServices> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Heading(
            text: "Additional services",
            fontSize: 18,
          ),
          const SizedBox(height: 12),
          RaidOption(
            vehicleData: widget.travelData.vehicleData,
            onSetVehicles: widget.onSetVehicles,
          ),
          const SizedBox(height: 16),
          const DashedDivider(
            color: Color(0xFFD1D0DD),
          ),
          const SizedBox(height: 16),
          MealsSection(
            data: widget.travelData.mealsData,
            onSetMeals: widget.onSetMeals,
          ),
          const SizedBox(height: 16),
          const DashedDivider(
            color: Color(0xFFD1D0DD),
          ),
          const SizedBox(height: 16),
          OtherServicesPage(
            data: widget.travelData.otherServices,
            onSetOtherServices: widget.onSetOtherServices,
          ),
          const SizedBox(height: 16),
          const DashedDivider(
            color: Color(0xFFD1D0DD),
          ),
        ],
      ),
    );
  }
}
