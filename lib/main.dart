import 'package:flutter/material.dart';

import 'package:plant_water_tracker/constants/app_theme.dart';
import 'package:plant_water_tracker/client/pages/home_page.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: appTheme(),
    );
  }
}
