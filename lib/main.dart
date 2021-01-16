import 'package:flutter/material.dart';

import 'package:url_strategy/url_strategy.dart';
import 'package:willfolio/constants/app_theme.dart';
import 'package:willfolio/constants/constants.dart';
import 'package:willfolio/client/pages/home_page.dart';
import 'package:willfolio/routes/router_generator.dart';

void main() {
  setPathUrlStrategy();
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      home: HomePage(),
      theme: appTheme(),
      onGenerateRoute: RouterGenerator.generateRoute,
    );
  }
}
