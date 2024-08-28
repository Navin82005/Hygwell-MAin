import 'package:flutter/material.dart';
import 'package:travelbookingapp/components/custom-appbar.dart';
import 'package:travelbookingapp/components/dashed-divider.dart';
import 'package:travelbookingapp/components/list-with-header.dart';
import 'package:travelbookingapp/components/rounded-rect-button.dart';
import 'package:travelbookingapp/core/service_data.dart';
import 'package:travelbookingapp/views/available/components/carousel-com.dart';
import 'package:travelbookingapp/views/passenger-detail/passenger-details-page.dart';

class InfoPage extends StatefulWidget {
  final Widget backWidget;
  final ServiceData serviceData;
  const InfoPage(
      {super.key, required this.backWidget, required this.serviceData});

  @override
  State<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  late List<String> imagePaths;

  @override
  void initState() {
    super.initState();
    imagePaths = widget.serviceData.imagePaths;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                ImageCarousel(
                  images: imagePaths,
                  header: null,
                  borderRadius: 0,
                ),
                const SizedBox(height: 16),
                header,
                const SizedBox(height: 16),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: DashedDivider(
                    color: Color(0xFFD1D0DD),
                    thickness: 1,
                    dashLength: 10,
                    dashGap: 10,
                  ),
                ),
                const SizedBox(height: 16),
                amenities(widget.serviceData.amenities),
                const SizedBox(height: 16),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: DashedDivider(
                    color: Color(0xFFD1D0DD),
                    thickness: 1,
                    dashLength: 10,
                    dashGap: 10,
                  ),
                ),
                const SizedBox(height: 16),
                safetyFeatures(widget.serviceData.safetyFeatures),
                if (widget.serviceData.isSpecialNotesAvailable) ...[
                  const SizedBox(height: 16),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: DashedDivider(
                      color: Color(0xFFD1D0DD),
                      thickness: 1,
                      dashLength: 10,
                      dashGap: 10,
                    ),
                  ),
                  const SizedBox(height: 16),
                  specialNotes(widget.serviceData.specialNots),
                ],
                const SizedBox(height: 40),
                RoundedRectangularButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PassengerDetails()),
                    );
                  },
                  text: "Go to passenger details",
                  buttonColor: const Color(0xFFFDD951),
                  backgroundColor: const Color(0xFFFDD951),
                  verticalTextPadding: 14,
                  horizontalTextPadding: 55,
                ),
                const SizedBox(height: 100)
              ],
            ),
          ),
          BackShareAppBar(backWidget: widget.backWidget)
        ],
      ),
    );
  }

  Widget header = const Padding(
    padding: EdgeInsets.symmetric(horizontal: 16),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Assam Travel Service",
          style: TextStyle(
            fontFamily: "Montserrat",
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(height: 4),
        Text(
          "This hotel features air-conditioned cabins, plush seating, and an onboard dining area serving delicious local cuisine.",
          style: TextStyle(
            fontFamily: "Montserrat",
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(height: 8),
        Text(
          "Wed, Jun20 - 2 Passengers",
          style: TextStyle(
            fontFamily: "Montserrat",
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    ),
  );

  Widget amenities(List<String> amenities) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: BulletList(
          heading: 'Amenities',
          list: amenities,
          bulletGap: 4,
        ),
      );

  Widget safetyFeatures(List<String> safetyFeatures) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: BulletList(
          heading: 'Safety Features',
          list: safetyFeatures,
          bulletGap: 4,
        ),
      );

  Widget specialNotes(List<String> specialNotes) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: BulletList(
          heading: 'Special notes',
          list: specialNotes,
          bulletGap: 4,
        ),
      );
}
