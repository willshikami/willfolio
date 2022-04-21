import 'package:flutter/material.dart';
import 'package:willfolio/client/widgets/project-section/project_card.dart';
import 'package:willfolio/constants/responsiveness.dart';
import 'package:willfolio/projects/projects_data.dart';

class ProjectSection extends StatelessWidget {
  const ProjectSection({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    if (projects.isEmpty) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }

  final isLargeScreen = ResponsiveWidget.isLargeScreen(context);
  final isMobileScreen = ResponsiveWidget.isMobileScreen(context);

    return Flex(
      mainAxisSize: MainAxisSize.min,
      direction: Axis.vertical,
      children: <Widget>[
        GridView.count(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          crossAxisCount: isLargeScreen
              ? 3
              : isMobileScreen
                  ? 1
                  : 2,
          children: projects.map((item) {
            return ProjectCard(
              projectFeaturedImagePath: item.projectImagePath,
            );
          }).toList(),
        ),
      ],
    );
  }
}
