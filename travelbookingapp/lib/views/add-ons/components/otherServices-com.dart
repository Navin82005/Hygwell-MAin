import 'package:flutter/material.dart';
import 'package:travelbookingapp/components/heading.dart';

import 'package:travelbookingapp/core/service_data.dart';
import 'package:travelbookingapp/core/switches.dart';

class OtherServicesPage extends StatefulWidget {
  final List<OtherServices> data;
  final Function onSetOtherServices;
  const OtherServicesPage(
      {super.key, required this.data, required this.onSetOtherServices});

  @override
  State<OtherServicesPage> createState() => _OtherServicesState();
}

class _OtherServicesState extends State<OtherServicesPage> {
  bool editVisibility = false;
  late List<Switches> switches;

  @override
  void initState() {
    super.initState();
    switches = [];

    for (var i = 0; i < widget.data.length; i++) {
      switches += [Switches(visibility: true, click: 0)];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Heading(
              text: "Other Recommendations",
              fontSize: 16,
            ),
            if (editVisibility)
              TextButton(
                onPressed: () {
                  setState(() {
                    for (var i in switches) {
                      i.refactorClick();
                    }
                    List<OtherServices> lk = [];
                    widget.onSetOtherServices(lk);
                    editVisibility = false;
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
        ...returnList(widget.data, switches),
      ],
    );
  }

  returnList(List<OtherServices> data, List<Switches> switches) {
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
                    Heading(text: data[i].serviceName),
                    Row(
                      children: [
                        Icon(
                          getIcon(data[i].priceIcon),
                          size: 15,
                        ),
                        Heading(
                          text: data[i].formattedPrice,
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
                        editVisibility = true;
                        List<OtherServices> lk = [];
                        for (int j = 0; j < switches.length; j++) {
                          if (switches[j].clicks == 0) {
                            setState(() {
                              switches[j].visibility = false;
                            });
                          } else {
                            lk += [data[j]];
                          }
                        }
                        widget.onSetOtherServices(lk);
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

  // Sample Implementation
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
