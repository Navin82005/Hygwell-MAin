import 'package:intl/intl.dart';

class VehicleData {
  final String _vehicleName;
  final String _vehicleType;
  final String _rentIcon;
  final int _rent;

  VehicleData({
    required String vehicleName,
    required String vehicleType,
    required int rent,
    required String rentIcon,
  })  : _vehicleName = vehicleName,
        _vehicleType = vehicleType,
        _rent = rent,
        _rentIcon = rentIcon;

  // Getters for each field
  String get vehicleName => _vehicleName;
  String get vehicleType => _vehicleType;
  String get rentIcon => _rentIcon;
  int get rent => _rent;

  // Getter for formatted rent
  String get formattedRent =>
      NumberFormat.currency(locale: 'en_US', symbol: '', decimalDigits: 0)
          .format(_rent);
}
