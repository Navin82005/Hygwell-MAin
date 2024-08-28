import 'package:flutter/material.dart';
import 'package:travelbookingapp/components/heading.dart';
import 'package:travelbookingapp/components/increment-decrement-button.dart';
import 'package:travelbookingapp/core/meals_data.dart';
import 'package:travelbookingapp/core/switches.dart';

class MealsSection extends StatefulWidget {
  final List<MealsData> data;
  final Function onSetMeals;
  const MealsSection({super.key, required this.data, required this.onSetMeals});

  @override
  State<MealsSection> createState() => _MealsSectionState();
}

class _MealsSectionState extends State<MealsSection> {
  bool editVisibility = false;
  late List<MealsSwitch> switches;
  late List<MealsData> meals;

  @override
  void initState() {
    super.initState();
    switches = [];
    meals = widget.data;

    for (var i = 0; i < widget.data.length; i++) {
      switches += [MealsSwitch(items: 0, visibility: true)];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Heading(
          text: "Meals Section",
          fontSize: 16,
        ),
        ...returnList(widget.data, switches),
      ],
    );
  }

  returnList(List<MealsData> data, List<MealsSwitch> switches) {
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
                    Heading(text: data[i].mealsName),
                    Row(
                      children: [
                        Icon(
                          getIcon(data[i].priceIcon),
                          size: 15,
                        ),
                        Heading(
                          text: "${data[i].price}",
                          color: const Color(0xFF4F4B68),
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                        )
                      ],
                    ),
                  ],
                ),
                IncrementDecrementButton(
                  index: i,
                  onsetMeals: widget.onSetMeals,
                  meals: meals,
                  mealSwitch: switches[i],
                  mealSwitches: switches,
                  increment: switches[i].increment,
                  decrement: switches[i].decrement,
                ),
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
