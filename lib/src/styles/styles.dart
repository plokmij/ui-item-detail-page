import 'package:flutter/material.dart';

class Colours{
  static Color primaryColor = Color(0xff214899);
  static Color themeRed = Color(0xffff4c5d);
  static Color themeGrey = Color(0xffcad8e4);
  static Color  themeBlack = Color(0xff0a1525);
  static Color white = Colors.white;
}

class HeaderStyles{
  static TextStyle dateTimePicker = TextStyle(
    color: Colours.themeBlack,
    fontWeight: FontWeight.w500,
    fontSize: 16.0
  );

  static TextStyle buttonText =TextStyle(
    color: Colours.white,
    fontWeight: FontWeight.w500,
    fontSize: 17.0
  );
}