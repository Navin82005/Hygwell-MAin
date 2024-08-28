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
        "https://s3-alpha-sig.figma.com/img/4312/9012/f0aef966de9cbd539770017636caed66?Expires=1725840000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=gnFCMoaxyhAYpeFwZGkzIibyfajznVrpqiw5CmDTnV8PpbBQtyRW-s6H90c2cUa5SvfLw2KpjRoi1qzqUWpmBUqtGdhzxVEMPNb0Jbodt8UN4ZoToJYGztfbAHEYxlgvAAUzSvG86FoUegQ6Zaclx08fIxtqJBEaYtQ1TE4O778iub2oaaJ0-D3PraDjnKYI0xSngt8HTem8MuMGe6ebJ2QUSBYS7QDtwz8tQL7EogkKuFVc~nPomkZU3UnbAsxAPRSpV3ZzAp3Gi5OM3AHi6IbIM6p8O-UdXmeSDBpP~qF7KBLLJF4sPYcVBS4jrGjIHwS0J3lOluhhhV9gdrGb~A__",
        "https://s3-alpha-sig.figma.com/img/b812/8322/d45073eb059216ad4d3fa817e30806cd?Expires=1725840000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=adIm6YF00YKu5Q9aRf43vlObTB4aQ7AypDQNnQvyRj03fLfdR3esuaInK5i6zV-T2CweWx2AJqylzFE9QbdjZIpT~IquodZ64yLdoCY6asc9h9DR2EFTPbBn6R1xdS328MKyFZe~QBa~o9qWwNvT3SwWjpQdhh8Y-wayTcEKxjYDNZWXkSwuxw6gs49GksJLSlUMVxBavoDzAphqKKfexfsKITSozLWdnoLv1fky-dqjAmuUWgz0G0XLBRM~RCMZoul20boh7RIcsxryRZ392-VVMI0izzaQ~H6igrChB7HJeuBV4qC9cbal952ElTHTq72IdOXrVlJHOEQJDGI3mA__",
        "https://s3-alpha-sig.figma.com/img/8eb0/06f3/0dc1acabb86d39794dbde269076d75a1?Expires=1725840000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=mQrnQ0fVo8zQ4u9TreO~cMIBqnz2lD7xhA~nbvTdEXql~G0MlT~ewArIzFPSawxLQ9v7wEzxPFij9DyWj9rGgSYiwDaLLfJdGlXDHLZp62w8njY-Xn8MDQNwZNgb7wdPrUZ1Cm~ciYNiTY5xios4-W1n3Kx6LLEq8Qbe9DKMMGfprWOLiSQIPvTR8Y9eh6NKvLdX2zA9KtnSCgSO4Iyrdt5d8GbWRfLJkqK3toMpZapvJiyZN5Ejgog9wDuTN54MPw~2QZl9uS7CTww4bx3mhav3JTDqXZIIfl0~Hp0mSitBRRsUsVxO~9UTcr4V~FXk662zNjVnlfAZ9m-rfCki7g__",
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
