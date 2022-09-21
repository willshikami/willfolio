import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:willfolio/constants/responsiveness.dart';
import 'package:willfolio/routes/routes.dart';

class Logo extends StatefulWidget {
  const Logo({Key? key}) : super(key: key);

  @override
  State<Logo> createState() => _LogoState();
}

class _LogoState extends State<Logo> {
  bool onMouseHover = false;

  @override
  Widget build(BuildContext context) {
    final isLargeScreen = ResponsiveWidget.isLargeScreen(context);
    final isMobileScreen = ResponsiveWidget.isMobileScreen(context);
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, Routes.home),
      child: MouseRegion(
        onEnter: (event) => onEntered(true),
        onExit: (event) => onEntered(false),
        cursor: SystemMouseCursors.click,
        child: CachedNetworkImage(
          imageUrl: 'assets/images/logo.png',
          width: isLargeScreen
              ? 52
              : isMobileScreen
                  ? 40
                  : 42,
        ),
      ),
    );
  }

  onEntered(bool onMouseHovered) {
    setState(() {
      onMouseHover = onMouseHovered;
    });
  }
}
