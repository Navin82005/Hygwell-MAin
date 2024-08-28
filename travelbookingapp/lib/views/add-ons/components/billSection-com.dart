import 'package:flutter/material.dart';
import 'package:travelbookingapp/components/currency.dart';
import 'package:travelbookingapp/components/dashed-divider.dart';
import 'package:travelbookingapp/components/heading.dart';
import 'package:travelbookingapp/components/rounded-rect-button.dart';
import 'package:travelbookingapp/core/bill_data.dart';
import 'package:travelbookingapp/core/vehicle_data.dart';

class GenerateBill extends StatefulWidget {
  final BillData billData;
  const GenerateBill({super.key, required this.billData});

  @override
  State<GenerateBill> createState() => _GenerateBillState();
}

class _GenerateBillState extends State<GenerateBill> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Heading(
          text: "Bill Breakdown",
          fontSize: 16,
        ),
        const SizedBox(height: 8),
        passengerData(widget.billData),
        const SizedBox(height: 16),
        const DashedDivider(
          color: Color(0xFFD1D0DD),
        ),
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Heading(
              text: "Total",
              color: Color(0xFF4F4B68),
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
            const Heading(
              text: " (taxes included)",
              color: Color(0xFF4F4B68),
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
            const Spacer(),
            Currency(
              currencyIcon: const Icon(Icons.currency_rupee, size: 15),
              text: recalculateTotalAmount(),
            ),
          ],
        )
      ],
    );
  }

  Widget passengerData(BillData billData) => Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              const Icon(
                Icons.person_outline,
                size: 20,
                color: Color(0xFF1E79E1),
              ),
              const SizedBox(width: 6),
              Text("${billData.passengerCount} Passenger"),
            ],
          ),
          ...buildPassengerList(billData.passengers),
          if (billData.isTransportChargesAdded)
            renderTransportationData(billData.transportCharges),
        ],
      );

  List<Widget> buildPassengerList(List<Passenger> passengerList) {
    List<Widget> l = [];
    for (var i in passengerList) {
      l += [
        Padding(
          padding: const EdgeInsets.only(left: 26),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const SizedBox(width: 10),
                  const Icon(Icons.circle, size: 5, color: Color(0xFF4F4B68)),
                  const SizedBox(width: 12),
                  Text(
                    i.passengerType,
                    style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      fontFamily: "Montserrat",
                      color: Color(0xFF4F4B68),
                    ),
                  ),
                  // const Spacer(),
                ],
              ),
              Row(
                children: [
                  const Icon(Icons.currency_rupee, size: 16),
                  Text(
                    i.formattedAmount,
                    style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      fontFamily: "Montserrat",
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ],
          ),
        )
      ];
    }
    return l;
  }

  Widget renderTransportationData(List<VehicleData> data) {
    List<Widget> l = [];
    for (var i in data) {
      l += [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Heading(
              text: i.vehicleName,
              color: const Color(0xFF2B2939),
            ),
            Currency(
              currencyIcon: const Icon(Icons.currency_rupee, size: 16),
              text: "${i.rent}",
            )
          ],
        )
      ];
    }
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Heading(text: "Transportation"),
          ...l,
        ],
      ),
    );
  }

  String recalculateTotalAmount() {
    widget.billData.totalAmount = 0;
    if (widget.billData.passengerCount > 0) {
      for (var element in widget.billData.passengers) {
        widget.billData.totalAmount += element.amount;
      }
    }
    if (widget.billData.isTransportChargesAdded) {
      for (var element in widget.billData.transportCharges) {
        widget.billData.totalAmount += element.rent;
      }
    }
    if (widget.billData.isMealsChargesAdded) {
      for (var element in widget.billData.mealsCharges) {
        widget.billData.totalAmount += element.price;
      }
    }
    if (widget.billData.isOtherChargesAdded) {
      for (var element in widget.billData.otherCharges) {
        widget.billData.totalAmount += element.price;
      }
    }
    return widget.billData.formattedTotalAmount;
  }
}
