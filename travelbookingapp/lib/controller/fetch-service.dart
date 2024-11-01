import 'package:travelbookingapp/core/meals_data.dart';
import 'package:travelbookingapp/core/service_data.dart';
import 'package:travelbookingapp/core/vehicle_data.dart';

class FetchServiceData {
  static ServiceData data = ServiceData(
      name: "Assam Travel Service",
      description:
          "This hotel features air-conditioned cabins, plush seating, and an onboard dining area serving delicious local cuisine.",
      date: "Wed, Jun20 - 2 Passengers",
      amenities: [
        "Clean Restrooms",
        "Comfortable Sitting arrangements",
        "Onboarding Dining"
      ],
      safetyFeatures: [
        "Live jackets provided to all passengers.",
        "Emergency medical kit onboard.",
      ],
      isSpecialNotesAvailable: true,
      imagePaths: [
        "https://elements-resized.envatousercontent.com/envato-dam-assets-production/EVA/TRX/c4/68/75/62/0a/v1_E10/E10QS57.jpg?w=1400&cf_fit=scale-down&mark-alpha=18&mark=https%3A%2F%2Felements-assets.envato.com%2Fstatic%2Fwatermark4.png&q=85&format=auto&s=56285bda978c986d245aaf096ef4fe4325d2556df53778e01d04b681d880fcc9",
        "https://images.unsplash.com/photo-1444487233259-dae9d907a740?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        "https://images.unsplash.com/photo-1436162716854-dcb9157bfac1?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      ],
      specialNots: [
        "Please arrive 30 minutes before departure.",
        "Carry a valid ID for verification.",
      ],
      meals: "Veg/Non veg",
      vehicleData: [
        VehicleData(
          vehicleName: "Private Car",
          vehicleType: "4 Seater",
          rent: 500,
          rentIcon: "rupee",
        ),
        VehicleData(
          vehicleName: "Private Car",
          vehicleType: "7 Seater",
          rent: 500,
          rentIcon: "rupee",
        ),
        VehicleData(
          vehicleName: "Shared rides",
          vehicleType: "",
          rent: 500,
          rentIcon: "rupee",
        ),
      ],
      mealsData: [
        MealsData(
          mealsName: "Breakfast & Snacks",
          price: 500,
          priceIcon: "rupee",
        ),
        MealsData(
          mealsName: "Pure Veg Lunch",
          price: 500,
          priceIcon: "rupee",
        ),
        MealsData(
          mealsName: "Non Veg Lunch",
          price: 500,
          priceIcon: "rupee",
        ),
      ],
      otherServices: [
        OtherServices(
            serviceName: "Tour Guid", price: 1500, priceIcon: "rupee"),
      ]);
}
