import 'package:flutter/material.dart';

ThemeData appTheme() {
  return ThemeData(
    primaryColor: const Color(0xFF599E67),
    backgroundColor: const Color(0xFFEFF4F8),
    splashColor: const Color(0xFFFFFFFF),
    canvasColor: const Color(0xFF9AA0AC),
    shadowColor: const Color(0xFF2F2F31),
    highlightColor: const Color(0xFF9AA0AC),
    hoverColor: const Color(0xFF9AA0AC),

    // Default font family.
    fontFamily: 'Futura',

    // Text Theme
    textTheme: const TextTheme(
      headline1: TextStyle(
        fontFamily: 'Borgat',
        fontSize: 64.0,
        fontWeight: FontWeight.w600,
      ),
      headline2: TextStyle(
        fontFamily: 'Borgat',
        fontSize: 42.0,
        fontWeight: FontWeight.w600,
      ),
      headline3: TextStyle(
        fontFamily: 'Futura',
        fontSize: 28.0,
        fontWeight: FontWeight.w500,
      ),
      headline4: TextStyle(
        fontFamily: 'Futura',
        fontSize: 18.0,
        fontWeight: FontWeight.bold,
      ),
      headline5: TextStyle(
        fontFamily: 'Futura',
        fontSize: 18.0,
      ),
      headline6: TextStyle(
        fontFamily: 'Futura',
        fontSize: 16.0,
      ),
      subtitle1: TextStyle(
        fontFamily: 'Rampant One',
        fontSize: 38.0,
      ),
      bodyText1: TextStyle(
        fontFamily: 'Futura',
        fontSize: 14.0,
        fontWeight: FontWeight.bold,
      ),
      bodyText2: TextStyle(
        fontFamily: 'Futura',
        fontSize: 14.0,
      ),
    ),
  );
}
