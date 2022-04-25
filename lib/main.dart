import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';

import 'package:willfolio/constants/app_theme.dart';
import 'package:willfolio/constants/constants.dart';
import 'package:willfolio/client/pages/home_page.dart';
import 'package:willfolio/routes/router_generator.dart';

void configureApp() {
  setUrlStrategy(PathUrlStrategy());
}

void main() async {
  configureApp();
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      home: const HomePage(),
      theme: appTheme(),
      onGenerateRoute: RouterGenerator.generateRoute,
    );
  }
}
