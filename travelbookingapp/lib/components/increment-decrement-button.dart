import 'package:flutter/material.dart';
import 'package:travelbookingapp/components/heading.dart';
import 'package:travelbookingapp/core/meals_data.dart';
import 'package:travelbookingapp/core/switches.dart';

class IncrementDecrementButton extends StatefulWidget {
  final Function increment;
  final Function decrement;
  final Function onsetMeals;
  final MealsSwitch mealSwitch;
  final List<MealsSwitch> mealSwitches;
  final List<MealsData> meals;
  final int index;

  const IncrementDecrementButton({
    super.key,
    required this.mealSwitch,
    required this.increment,
    required this.decrement,
    required this.onsetMeals,
    required this.meals,
    required this.index,
    required this.mealSwitches,
  });

  @override
  State<IncrementDecrementButton> createState() =>
      _IncrementDecrementButtonState();
}

class _IncrementDecrementButtonState extends State<IncrementDecrementButton> {
  bool isFirst = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 90,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: const Color(0xFF1E79E1),
      ),
      child: (widget.mealSwitch.items == 0)
          ? TextButton(
              onPressed: () {
                setState(() {
                  widget.increment();
                  List<MealsData> l = [];
                  for (var i = 0; i < widget.meals.length; i++) {
                    if (widget.mealSwitches[i].items >= 1) {
                      l += [widget.meals[i]];
                    }
                  }
                  widget.onsetMeals(l);
                });
              },
              child: const Center(
                child: Heading(
                  text: "Add",
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            )
          : Row(
              // mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      widget.increment();
                      List<MealsData> l = [];
                      for (var i = 0; i < widget.meals.length; i++) {
                        if (widget.mealSwitches[i].items >= 1) {
                          l += [widget.meals[i]];
                        }
                      }
                      widget.onsetMeals(l);
                    });
                  },
                  icon: const Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                  iconSize: 10,
                ),
                // const SizedBox(width: 5),
                Heading(
                  text: "${widget.mealSwitch.items}",
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
                // const SizedBox(width: 5),
                IconButton(
                  onPressed: () {
                    setState(() {
                      widget.decrement();
                      List<MealsData> l = [];
                      for (var i = 0; i < widget.meals.length; i++) {
                        if (widget.mealSwitches[i].items >= 1) {
                          l += [widget.meals[i]];
                        }
                      }
                      widget.onsetMeals(l);
                    });
                  },
                  icon: const Icon(
                    Icons.remove,
                    color: Colors.white,
                  ),
                  iconSize: 10,
                ),
              ],
            ),
    );
  }
}
