import 'package:flutter/material.dart';

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
    Size size = MediaQuery.of(context).size;
    return CustomContainer(
      child: Column(
        children: [
          Image(
            image: AssetImage(projectPath),
            width: size.width * 0.36,
            height: size.width * 0.36,
            fit: BoxFit.fill,
          ),
          SizedBox(
            height: 24,
          ),
          Text(
            projectTitle,
            style: Theme.of(context).textTheme.headline3.copyWith(
                  color: Theme.of(context).shadowColor,
                ),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            projectRole,
            style: Theme.of(context).textTheme.headline4,
          ),
        ],
      ),
    );
  }
}
