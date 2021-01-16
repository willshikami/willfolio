import 'package:flutter/material.dart';

import 'package:willfolio/constants/constants.dart';
import 'package:willfolio/client/widgets/custom_container.dart';

class ProjectCard extends StatelessWidget {
  final String projectTitle, projectPath, projectRole;

  const ProjectCard({
    Key key,
    @required this.projectTitle,
    @required this.projectPath,
    @required this.projectRole,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return CustomContainer(
      child: Column(
        children: [
          Image(
            image: AssetImage(projectPath),
          ),
          smallVerticalSpacing,
          Text(
            projectTitle,
            style: Theme.of(context).textTheme.headline4.copyWith(
                  color: Theme.of(context).shadowColor,
                ),
          ),
          extraSmallVerticalSpacing,
          Text(
            projectRole,
            style: Theme.of(context).textTheme.headline6.copyWith(
                  color: Theme.of(context).accentColor,
                ),
          ),
        ],
      ),
    );
  }
}
