import 'package:travelbookingapp/core/meals_data.dart';
import 'package:travelbookingapp/core/vehicle_data.dart';

import 'package:intl/intl.dart';

class OtherServices {
  final String _serviceName;
  final String _priceIcon;
  final int _price;

  OtherServices({
    required String serviceName,
    required int price,
    required String priceIcon,
  })  : _serviceName = serviceName,
        _price = price,
        _priceIcon = priceIcon;

  // Getters for each field
  String get serviceName => _serviceName;
  String get priceIcon => _priceIcon;
  int get price => _price;

  // Getter for formatted price
  String get formattedPrice =>
      NumberFormat.currency(locale: 'en_US', symbol: '', decimalDigits: 0)
          .format(_price);
}

class ServiceData {
  String name;
  String description;
  String date;
  String meals;
  bool isSpecialNotesAvailable;

  List<String> amenities;
  List<String> safetyFeatures;
  List<String> specialNots;
  List<String> imagePaths;

  List<VehicleData> vehicleData;
  List<MealsData> mealsData;
  List<OtherServices> otherServices;

  ServiceData({
    required this.name,
    required this.description,
    required this.date,
    required this.meals,
    required this.amenities,
    required this.safetyFeatures,
    required this.specialNots,
    required this.imagePaths,
    required this.isSpecialNotesAvailable,
    required this.vehicleData,
    required this.mealsData,
    required this.otherServices,
  });
}
