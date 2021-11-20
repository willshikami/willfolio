import 'package:flutter/material.dart';
import 'package:willfolio/client/widgets/project-section/project_card.dart';
import 'package:willfolio/constants/constants.dart';
import 'package:willfolio/projects/projects_data.dart';

class ResponsiveProjectSection extends StatelessWidget {
  const ResponsiveProjectSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 42,
        horizontal: 8,
      ),
      child: Column(
        children: <Widget>[
          // Project Number 1
          ProjectCard(
            projectTitle: projects[0].projectTitle,
            projectPath: projects[0].projectImagePath,
            projectRole: projects[0].projectRole,
          ),
          // Between projects spacing
          mediumHorizontalSpacing,
          // Project Number 2
          ProjectCard(
            projectTitle: projects[1].projectTitle,
            projectPath: projects[1].projectImagePath,
            projectRole: projects[1].projectRole,
          ),
          // Between projects spacing
          mediumHorizontalSpacing,
          // Project Number 3
          ProjectCard(
            projectTitle: projects[2].projectTitle,
            projectPath: projects[2].projectImagePath,
            projectRole: projects[2].projectRole,
          ),
          // Between projects spacing
          mediumHorizontalSpacing,
          // Project Number 4
          ProjectCard(
            projectTitle: projects[3].projectTitle,
            projectPath: projects[3].projectImagePath,
            projectRole: projects[3].projectRole,
          ),
          mediumHorizontalSpacing,
        ],
      ),
    );
  }
}
