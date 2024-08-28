import 'package:intl/intl.dart';

class MealsData {
  final String _mealName;
  final String _priceIcon;
  final int _price;

  MealsData({
    required String mealsName,
    required int price,
    required String priceIcon,
  })  : _mealName = mealsName,
        _price = price,
        _priceIcon = priceIcon;

  // Getters for each field
  String get mealsName => _mealName;
  String get priceIcon => _priceIcon;
  int get price => _price;

  // Getter for formatted price
  String get formattedPrice =>
      NumberFormat.currency(locale: 'en_US', symbol: '', decimalDigits: 0)
          .format(_price);
}
