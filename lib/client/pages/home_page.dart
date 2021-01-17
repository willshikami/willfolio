import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:willfolio/client/widgets/footer.dart';
import 'package:willfolio/client/widgets/nav/nav_bar.dart';
import 'package:willfolio/client/widgets/nav/nav_drawer.dart';
import 'package:willfolio/client/widgets/masthead.dart';
import 'package:willfolio/client/widgets/project-section/responsive_projects_section.dart';
import 'package:willfolio/client/widgets/scroll_down.dart';
import 'package:willfolio/client/widgets/project-section/projects_section.dart';
import 'package:willfolio/constants/constants.dart';
import 'package:willfolio/constants/responsiveness.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final isLargeScreen = ResponsiveWidget.isLargeScreen(context);
    return ResponsiveBuilder(
      builder: (BuildContext context, SizingInformation sizingInformation) =>
          Scaffold(
        drawer: sizingInformation.deviceScreenType == DeviceScreenType.mobile
            ? NavigationDrawer()
            : null,
        backgroundColor: Theme.of(context).splashColor,
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                NavBar(),
                MastHead(),
                ScrollDown(),
                // Projects
                isLargeScreen ? ProjectSection() : ResponsiveProjectSection(),
                veryLargeVerticalSpacing,
                Footer(),
                veryLargeVerticalSpacing,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
