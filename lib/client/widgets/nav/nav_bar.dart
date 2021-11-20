import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:willfolio/client/widgets/nav/mobile_nav.dart';
import 'package:willfolio/client/widgets/nav/navbar.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: const MobileNavigation(),
      tablet: const NavigationBar(),
    );
  }
}
