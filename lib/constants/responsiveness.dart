import 'package:flutter/material.dart';

/// Widget that draws depending on screen size as specified by the breakpoints.
class ResponsiveWidget extends StatelessWidget {
  /// Refer to https://developer.android.com/training/multiscreen/screensizes#TaskUseSWQuali
  static const int smallScreenBreakPoint = 840;
  static const int smallScreenHeight = 600;

  /// Creates a ResponsiveWidget.
  ///
  /// The argument [largeScreen] must not be null.
  /// If medium screen is null then large screen will be drawn in place.
  /// if small screen is null then large screen will be drawn in place.
  const ResponsiveWidget(
      {this.largeScreen, this.mediumScreen, this.smallScreen});

  /// Widget to be drawn on a large screen.
  final Widget largeScreen;

  /// Widget to be drawn on a medium screen.
  final Widget mediumScreen;

  /// Widget to be drawn on a small screen.
  final Widget smallScreen;

  @override
  Widget build(BuildContext context) {
    //Returns the widget which is more appropriate for the screen size
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth >= smallScreenBreakPoint) {
          return largeScreen;
        } else {
          //if small screen implementation not available, then return large screen
          return smallScreen ?? largeScreen;
        }
      },
    );
  }

  /// Large screen is any screen whose width is more than [largeScreenBreakPoint] pixels
  static bool isLargeScreen(BuildContext context) {
    return MediaQuery.of(context).size.width >= smallScreenBreakPoint;
  }

  /// Small screen is any screen whose width is less than [smallScreenBreakPoint] pixels
  static bool isSmallScreen(BuildContext context) {
    return MediaQuery.of(context).size.width < smallScreenBreakPoint;
  }
}
