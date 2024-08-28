import 'package:flutter/material.dart';
import 'package:travelbookingapp/components/icon-button.dart';
import 'package:travelbookingapp/components/rounded-rect-button.dart';
import 'package:travelbookingapp/controller/fetch-service.dart';
import 'package:travelbookingapp/core/service_data.dart';
import 'package:travelbookingapp/views/available/components/display-com.dart';
import 'package:travelbookingapp/views/available/components/header-com.dart';
import 'package:travelbookingapp/views/info/info-page.dart';

// DISPLAYS THE AVAILABLE BOATS FOR BOOKING AND RENTS
class AvailableServicePage extends StatefulWidget {
  const AvailableServicePage({super.key});

  @override
  State<AvailableServicePage> createState() => _AvailableServicePageState();
}

class _AvailableServicePageState extends State<AvailableServicePage> {
  final List<String> imagePaths = [
    "https://s3-alpha-sig.figma.com/img/4312/9012/f0aef966de9cbd539770017636caed66?Expires=1725840000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=gnFCMoaxyhAYpeFwZGkzIibyfajznVrpqiw5CmDTnV8PpbBQtyRW-s6H90c2cUa5SvfLw2KpjRoi1qzqUWpmBUqtGdhzxVEMPNb0Jbodt8UN4ZoToJYGztfbAHEYxlgvAAUzSvG86FoUegQ6Zaclx08fIxtqJBEaYtQ1TE4O778iub2oaaJ0-D3PraDjnKYI0xSngt8HTem8MuMGe6ebJ2QUSBYS7QDtwz8tQL7EogkKuFVc~nPomkZU3UnbAsxAPRSpV3ZzAp3Gi5OM3AHi6IbIM6p8O-UdXmeSDBpP~qF7KBLLJF4sPYcVBS4jrGjIHwS0J3lOluhhhV9gdrGb~A__",
    "https://s3-alpha-sig.figma.com/img/b812/8322/d45073eb059216ad4d3fa817e30806cd?Expires=1725840000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=adIm6YF00YKu5Q9aRf43vlObTB4aQ7AypDQNnQvyRj03fLfdR3esuaInK5i6zV-T2CweWx2AJqylzFE9QbdjZIpT~IquodZ64yLdoCY6asc9h9DR2EFTPbBn6R1xdS328MKyFZe~QBa~o9qWwNvT3SwWjpQdhh8Y-wayTcEKxjYDNZWXkSwuxw6gs49GksJLSlUMVxBavoDzAphqKKfexfsKITSozLWdnoLv1fky-dqjAmuUWgz0G0XLBRM~RCMZoul20boh7RIcsxryRZ392-VVMI0izzaQ~H6igrChB7HJeuBV4qC9cbal952ElTHTq72IdOXrVlJHOEQJDGI3mA__",
    "https://s3-alpha-sig.figma.com/img/8eb0/06f3/0dc1acabb86d39794dbde269076d75a1?Expires=1725840000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=mQrnQ0fVo8zQ4u9TreO~cMIBqnz2lD7xhA~nbvTdEXql~G0MlT~ewArIzFPSawxLQ9v7wEzxPFij9DyWj9rGgSYiwDaLLfJdGlXDHLZp62w8njY-Xn8MDQNwZNgb7wdPrUZ1Cm~ciYNiTY5xios4-W1n3Kx6LLEq8Qbe9DKMMGfprWOLiSQIPvTR8Y9eh6NKvLdX2zA9KtnSCgSO4Iyrdt5d8GbWRfLJkqK3toMpZapvJiyZN5Ejgog9wDuTN54MPw~2QZl9uS7CTww4bx3mhav3JTDqXZIIfl0~Hp0mSitBRRsUsVxO~9UTcr4V~FXk662zNjVnlfAZ9m-rfCki7g__",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.blueAccent,
        title: const HeaderAvailable(),
        leading: Container(
          constraints: const BoxConstraints(maxHeight: 32, maxWidth: 32),
          child: CustomIconButton(
            iconData: Icons.arrow_back_ios_new,
            onPressed: () => print("Back from available page"),
            iconSize: 16,
            iconColor: Colors.white,
            backgroundHeight: 32,
            backgroundWith: 32,
            backgroundColor: Colors.transparent,
          ),
        ),
        actions: [
          RoundedRectangularButton(
            onPressed: () => print("Modify"),
            text: "Modify",
            buttonColor: Colors.white,
          ),
          const SizedBox(
            width: 25,
          )
        ],
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          header,
          const SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.only(bottom: 40),
            child: GestureDetector(
              onTap: () => Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => InfoPage(
                    backWidget: const AvailableServicePage(),
                    serviceData: FetchServiceData.data,
                  ),
                ),
              ),
              child: DisplayCard(
                images: imagePaths,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 40),
            child: DisplayCard(
              images: imagePaths,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 40),
            child: DisplayCard(
              images: imagePaths,
            ),
          ),
          const SizedBox(height: 50)
        ],
      ),
    );
  }

  Widget header = Material(
    elevation: 2,
    color: Colors.white,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
    child: Container(
      height: 48,
      margin: const EdgeInsets.only(left: 16),
      width: double.infinity,
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Showing available boats",
            style: TextStyle(
              fontFamily: "Montserrat",
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    ),
  );
}
