import 'package:flutter/material.dart';
import 'package:willfolio/client/widgets/project_card.dart';
import 'package:willfolio/projects/projects_data.dart';

class ProjectSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 42,
        horizontal: 24,
      ),
      child: Column(
        children: <Widget>[
          // First Row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              ProjectCard(
                projectTitle: projects[0].projectTitle,
                projectPath: projects[0].projectImagePath,
                projectRole: projects[0].projectRole,
              ),
              ProjectCard(
                projectTitle: projects[1].projectTitle,
                projectPath: projects[1].projectImagePath,
                projectRole: projects[1].projectRole,
              )
            ],
          ),
          // Between projects spacing
          SizedBox(
            width: 24,
          ),
          // Second Row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              ProjectCard(
                projectTitle: projects[2].projectTitle,
                projectPath: projects[2].projectImagePath,
                projectRole: projects[2].projectRole,
              ),
              ProjectCard(
                projectTitle: projects[3].projectTitle,
                projectPath: projects[3].projectImagePath,
                projectRole: projects[3].projectRole,
              )
            ],
          ),
        ],
      ),
    );
  }
}
