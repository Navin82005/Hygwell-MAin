import 'package:flutter/material.dart';
import 'package:travelbookingapp/components/heading.dart';
import 'package:travelbookingapp/core/switches.dart';
import 'package:travelbookingapp/core/vehicle_data.dart';

class RaidOption extends StatefulWidget {
  final List<VehicleData> vehicleData;
  final Function onSetVehicles;
  const RaidOption(
      {super.key, required this.vehicleData, required this.onSetVehicles});

  @override
  State<RaidOption> createState() => _RaidOptionState();
}

class _RaidOptionState extends State<RaidOption> {
  late List<VehicleData> vehicleData;
  late List<Switches> switches;
  bool descriptionVisibility = true;
  bool editVisibility = false;

  @override
  void initState() {
    super.initState();
    vehicleData = widget.vehicleData;
    switches = [];

    for (var i = 0; i < vehicleData.length; i++) {
      switches += [Switches(click: 0, visibility: true)];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Heading(
              text: "Transportation Options",
              fontSize: 16,
            ),
            if (editVisibility)
              TextButton(
                onPressed: () {
                  setState(() {
                    for (var i in switches) {
                      i.refactorClick();
                    }
                    editVisibility = false;
                    List<VehicleData> l = [];
                    widget.onSetVehicles(l);
                  });
                },
                child: const Text(
                  "Edit",
                  style: TextStyle(
                    color: Color(0xFFFF3333),
                    fontFamily: "Montserrat",
                    fontSize: 10,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
          ],
        ),
        const SizedBox(height: 4),
        if (descriptionVisibility)
          const Heading(
            text:
                "Cab service pickUp and dropOff at Station; driver details will be shared via WhatsApp.",
            fontSize: 15,
            fontWeight: FontWeight.w500,
          ),
        const SizedBox(height: 12),
        // ...vehicleData.map((data) => buildRideOption(data)).toList(),
        ...returnList(vehicleData, switches),
      ],
    );
  }

  returnList(List<VehicleData> data, List<Switches> switches) {
    List<Widget> l = [];
    for (int i = 0; i < data.length; i++) {
      if (switches[i].visibility) {
        l += [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 7),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Heading(
                      text:
                          '${data[i].vehicleName} ${data[i].vehicleType != "" ? "(${data[i].vehicleType})" : ""}',
                    ),
                    Row(
                      children: [
                        Icon(
                          getIcon(data[i].rentIcon),
                          size: 15,
                        ),
                        Heading(
                          text: "${data[i].rent}",
                          color: const Color(0xFF4F4B68),
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                        )
                      ],
                    ),
                  ],
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      switches[i].click();
                      if (switches[i].clicks == 2) {
                        List<VehicleData> l = [];
                        descriptionVisibility = false;
                        editVisibility = true;
                        for (int j = 0; j < switches.length; j++) {
                          if (switches[j].clicks == 0) {
                            switches[j].visibility = false;
                          } else {
                            switches[j].click();
                            l += [data[j]];
                          }
                        }
                        for (var element in l) {
                          print(
                              "${element.vehicleName} ${element.vehicleType}");
                        }
                        widget.onSetVehicles(l);
                      }
                    });
                  },
                  icon: Icon(
                    switches[i].clicks == 0
                        ? (Icons.add_circle)
                        : (Icons.check_circle),
                    size: 20,
                  ),
                  color: switches[i].clicks != 2
                      ? const Color(0xFF1E79E1)
                      : const Color(0xFF198F51),
                )
              ],
            ),
          )
        ];
      }
    }
    return l;
  }

  getIcon(currencyType) {
    switch (currencyType) {
      case "rupee":
        return Icons.currency_rupee;
      case "pound":
        return Icons.currency_pound;
      default:
        return Icons.currency_rupee;
    }
  }
}
