import 'package:flutter/material.dart';

class Palette {
  static const Color mainFontColor = Colors.white;
  static const Color firstSuggestionBoxColor = Color.fromRGBO(51, 61, 71, 1);
  static const Color secondSuggestionBoxColor = Color.fromRGBO(41, 51, 61, 1);
  static const Color thirdSuggestionBoxColor = Color.fromRGBO(31, 41, 51, 1);
  static const Color assistantCircleColor = Color.fromRGBO(20, 29, 38, 1);
  static const Color borderColor = Color.fromRGBO(120, 120, 120, 1);
  static const Color blackColor = Colors.black;
  static const Color whiteColor = Colors.white;
  static const LinearGradient gradientColor = LinearGradient(
    colors: [Color(0xFFB967FF), Color(0xFF6B60FF)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
}
