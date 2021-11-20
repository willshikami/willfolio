import 'package:flutter/material.dart';

import 'package:willfolio/constants/responsiveness.dart';

class CustomContainer extends StatelessWidget {
  final Widget child;

  const CustomContainer({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isLargeScreen = ResponsiveWidget.isLargeScreen(context);
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: isLargeScreen ? 64 : 24,
        vertical: 24,
      ),
      child: child,
    );
  }
}
