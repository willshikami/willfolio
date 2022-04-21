import 'package:flutter/material.dart';
import 'package:willfolio/constants/constants.dart';
import 'package:willfolio/client/widgets/footer.dart';
import 'package:willfolio/client/widgets/masthead.dart';
import 'package:willfolio/client/widgets/nav/nav_bar.dart';
import 'package:willfolio/client/widgets/scroll_down.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:willfolio/client/widgets/nav/nav_drawer.dart';
import 'package:willfolio/client/widgets/project-section/projects_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (BuildContext context, SizingInformation sizingInformation) =>
          Scaffold(
        drawer: sizingInformation.deviceScreenType == DeviceScreenType.mobile
            ? const NavigationDrawer()
            : null,
        backgroundColor: Theme.of(context).splashColor,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: <Widget>[
              Column(
                children: const <Widget>[
                  NavBar(),
                  MastHead(),
                  ScrollDown(),
                ],
              ),
              mediumVerticalSpacing,
              const ProjectSection(),
              veryLargeVerticalSpacing,
              Footer(),
              veryLargeVerticalSpacing,
            ],
          ),
        ),
      ),
    );
  }
}
