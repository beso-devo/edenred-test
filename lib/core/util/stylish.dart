import 'package:flutter/cupertino.dart';

import 'colors.dart';

class Stylish {
  static TextStyle titleStyleEnglish() => TextStyle(
      color: DARK_OFF_FONT,
      fontFamily: "RobotoCondensed",
      fontSize: 32,
      decoration: TextDecoration.none,
      fontWeight: FontWeight.w500);

  static TextStyle primaryStyleEnglish(Color color) => TextStyle(
      color: color,
      fontFamily: "RobotoCondensed",
      fontSize: 28,
      decoration: TextDecoration.none,
      fontWeight: FontWeight.w500);

  static TextStyle primaryStyleArabic(Color color) => TextStyle(
      color: color,
      fontFamily: "RobotoCondensed",
      fontSize: 24,
      decoration: TextDecoration.none,
      fontWeight: FontWeight.w500);

  static TextStyle secondaryStyleEnglish({Color color = DARK_OFF_FONT}) =>
      TextStyle(
          color: color,
          fontFamily: "RobotoCondensed",
          fontSize: 24,
          decoration: TextDecoration.none,
          fontWeight: FontWeight.w500);

  static TextStyle thirdStyleEnglish(
          {Color color = DARK_OFF_FONT, double fontSize = 18.0}) =>
      TextStyle(
          color: color,
          fontFamily: "RobotoCondensed",
          fontSize: fontSize,
          decoration: TextDecoration.none,
          fontWeight: FontWeight.w500);

  static TextStyle secondaryStyleArabic() => TextStyle(
      color: DARK_OFF_FONT,
      fontFamily: "RobotoCondensed",
      fontSize: 20,
      decoration: TextDecoration.none,
      fontWeight: FontWeight.w500);

  static TextStyle textFieldStyleEnglish() => TextStyle(
      fontFamily: "RobotoCondensed",
      fontSize: 17.0,
      decoration: TextDecoration.none,
      fontWeight: FontWeight.w500);
}
