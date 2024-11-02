import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  CustomText(
      {super.key,
      required this.text,
      required this.fSize,
      required this.fColor,
      required this.fWeight});

  String text;
  double fSize;
  Color fColor;
  FontWeight fWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          decoration: TextDecoration.none,
          fontSize: fSize,
          color: fColor,
          fontWeight: fWeight),
    );
  }
}
