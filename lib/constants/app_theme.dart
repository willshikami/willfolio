import 'package:flutter/material.dart';

ThemeData appTheme() {
  return ThemeData(
    // Define the default brightness and colors.
    // brightness: Brightness.dark,
    // accentColor: Colors.cyan[600],
    primaryColor: Color(0xFF599E67),
    backgroundColor: Color(0xFFEFF4F8),
    splashColor: Color(0xFFFFFFFF),
    accentColor: Color(0xFF828282),
    canvasColor: Color(0xFF9AA0AC),
    shadowColor: Color(0xFF2F2F31),
    highlightColor: Color(0xFFE94D89),
    hoverColor: Color(0xFF0D66C2),

    // Default font family.
    fontFamily: 'Futura',

    // Text Theme
    textTheme: TextTheme(
      headline1: TextStyle(
        fontFamily: 'Futura',
        fontSize: 64.0,
        fontWeight: FontWeight.w500,
      ),
      headline2: TextStyle(
        fontFamily: 'Futura',
        fontSize: 42.0,
        fontWeight: FontWeight.w500,
      ),
      headline3: TextStyle(
        fontFamily: 'Futura',
        fontSize: 24.0,
        fontStyle: FontStyle.normal,
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
        fontFamily: 'Orchide Regular',
        fontSize: 42.0,
      ),
      bodyText1: TextStyle(
        fontFamily: 'Futura',
        fontSize: 14.0,
        fontWeight: FontWeight.bold,
      ),
      bodyText2: TextStyle(
        fontFamily: 'Futura',
        fontSize: 12.0,
      ),
    ),
  );
}
