import 'package:intl/intl.dart';
import 'package:travelbookingapp/core/meals_data.dart';
import 'package:travelbookingapp/core/service_data.dart';
import 'package:travelbookingapp/core/vehicle_data.dart';

class Passenger {
  String _passengerType;
  int _amount;

  Passenger({
    required String passengerType,
    required int amount,
  })  : _passengerType = passengerType,
        _amount = amount;

  // Getter and Setter for _passengerType
  String get passengerType => _passengerType;
  set passengerType(String value) {
    _passengerType = value;
  }

  // Getter and Setter for _amount
  int get amount => _amount;
  set amount(int value) {
    _amount = value;
  }

  // Getter to return formatted amount with commas
  String get formattedAmount {
    final formatter = NumberFormat('#,###');
    return formatter.format(_amount);
  }
}

class BillData {
  List<Passenger> _passengers;
  int _passengerCount;
  bool _isTransportChargesAdded;
  bool _isMealsChargesAdded;
  bool _isOtherChargesAdded;
  int _totalAmount;
  List<VehicleData> _transportCharges;
  List<MealsData> _mealsCharges;
  List<OtherServices> _otherCharges;

  BillData({
    required List<Passenger> passengers,
    required int passengerCount,
    bool isTransportChargesAdded = false,
    bool isMealsChargesAdded = false,
    bool isOtherChargesAdded = false,
    int totalAmount = 0,
    List<VehicleData> transportCharges = const [],
    List<MealsData> mealsCharges = const [],
    List<OtherServices> otherCharges = const [],
  })  : _passengers = passengers,
        _passengerCount = passengerCount,
        _isTransportChargesAdded = isTransportChargesAdded,
        _isMealsChargesAdded = isMealsChargesAdded,
        _isOtherChargesAdded = isOtherChargesAdded,
        _totalAmount = totalAmount,
        _transportCharges = transportCharges,
        _mealsCharges = mealsCharges,
        _otherCharges = otherCharges;

  // Getters and Setters for _passengers
  List<Passenger> get passengers => _passengers;
  set passengers(List<Passenger> value) {
    _passengers = value;
  }

  // Getters and Setters for _passengerCount
  int get passengerCount => _passengerCount;
  set passengerCount(int value) {
    _passengerCount = value;
  }

  // Getters and Setters for _isTransportChargesAdded
  bool get isTransportChargesAdded => _isTransportChargesAdded;
  set isTransportChargesAdded(bool value) {
    _isTransportChargesAdded = value;
  }

  // Getters and Setters for _isMealsChargesAdded
  bool get isMealsChargesAdded => _isMealsChargesAdded;
  set isMealsChargesAdded(bool value) {
    _isMealsChargesAdded = value;
  }

  // Getters and Setters for _isOtherChargesAdded
  bool get isOtherChargesAdded => _isOtherChargesAdded;
  set isOtherChargesAdded(bool value) {
    _isOtherChargesAdded = value;
  }

  // Getters and Setters for _totalAmount
  int get totalAmount => _totalAmount;
  set totalAmount(int value) {
    _totalAmount = value;
  }

  // Getters and Setters for _transportCharges
  List<VehicleData> get transportCharges => _transportCharges;
  set transportCharges(List<VehicleData> value) {
    _transportCharges = value;
  }

  // Getters and Setters for _mealsCharges
  List<MealsData> get mealsCharges => _mealsCharges;
  set mealsCharges(List<MealsData> value) {
    _mealsCharges = value;
  }

  // Getters and Setters for _otherCharges
  List<OtherServices> get otherCharges => _otherCharges;
  set otherCharges(List<OtherServices> value) {
    _otherCharges = value;
  }

  // Getter to return formatted totalAmount with commas
  String get formattedTotalAmount {
    final formatter = NumberFormat('#,###');
    return formatter.format(_totalAmount);
  }
}
