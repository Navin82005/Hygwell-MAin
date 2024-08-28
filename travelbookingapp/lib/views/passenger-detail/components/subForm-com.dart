import 'package:flutter/material.dart';
import 'package:travelbookingapp/components/dropdown-field.dart';
import 'package:travelbookingapp/components/text-field.dart';

class SubForm extends StatefulWidget {
  final String headerText;
  final double headerFontSize;
  final FontWeight headerFontWeight;

  const SubForm({
    super.key,
    required this.headerFontSize,
    required this.headerFontWeight,
    required this.headerText,
  });

  @override
  State<SubForm> createState() => SubFormState();
}

class SubFormState extends State<SubForm> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.headerText,
          style: TextStyle(
            fontFamily: "Montserrat",
            fontSize: widget.headerFontSize,
            fontWeight: widget.headerFontWeight,
          ),
        ),
        const SizedBox(height: 12),
        const FormTextField(
          headerText: "Enter Full Name",
          borderColor: Color(0xFFD1D0DD),
          borderThickness: 1,
          borderColorFocused: Color.fromARGB(255, 179, 178, 189),
          placeHolderColor: Color(0xFF767199),
          placeHolder: "Enter your name",
          helperTextFontSize: 12,
          helperText: "Enter name as per Aadhar",
        ),
        const SizedBox(height: 16),
        const Row(
          children: [
            Expanded(
              child: FormTextField(
                headerText: "Enter your age",
                borderColor: Color(0xFFD1D0DD),
                borderThickness: 1,
                borderColorFocused: Color.fromARGB(255, 179, 178, 189),
                placeHolderColor: Color(0xFF767199),
                placeHolder: "Enter your age",
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: FormDropDownField(
                headerText: "Gender",
                items: ["Male", "Female", "Other"],
                borderColor: Color(0xFFD1D0DD),
                // borderThickness: 1,
                borderColorFocused: Color.fromARGB(255, 179, 178, 189),
              ),
            ),
          ],
        )
      ],
    );
  }
}
