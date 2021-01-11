import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:willfolio/client/pages/home_page.dart';
import 'package:willfolio/routes/routes.dart';

class RouterGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    //Use this incase we're passing down args
    // final dynamic args = settings.arguments;

    switch (settings.name) {
      case Routes.home:
        return CupertinoPageRoute<HomePage>(
          builder: (_) => HomePage(),
        );
      // case Routes.notifications:
      //   return MaterialPageRoute<NotificationsPage>(
      //     builder: (_) => NotificationsPage(),
      //   );
      default:
        return _home();
    }
  }

  static Route<dynamic> _home() {
    return CupertinoPageRoute<HomePage>(
      builder: (_) => HomePage(),
    );
  }
}
