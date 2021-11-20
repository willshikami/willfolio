import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:willfolio/constants/app_colors.dart';

import 'package:willfolio/constants/constants.dart';
import 'package:willfolio/client/widgets/custom_container.dart';

class ProjectCard extends StatelessWidget {
  final String projectTitle;
  final String? projectPath;
  final String? projectRole;

  const ProjectCard({
    Key? key,
    required this.projectTitle,
    this.projectPath,
    this.projectRole,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return CustomContainer(
      child: Column(
        children: [
          CachedNetworkImage(
            imageUrl: projectPath!,
            fit: BoxFit.fill,
          ),
          smallVerticalSpacing,
          Text(
            projectTitle,
            style: Theme.of(context).textTheme.headline4?.copyWith(
                  color: Theme.of(context).shadowColor,
                ),
          ),
          extraSmallVerticalSpacing,
          Text(
            projectRole!,
            style: Theme.of(context).textTheme.headline6?.copyWith(
                  color: AppColors.accentColor,
                ),
          ),
        ],
      ),
    );
  }
}
