import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class ProjectCard extends StatelessWidget {
  final String? projectTitle;
  final String? projectFeaturedImagePath;
  final String? projectRole;

  const ProjectCard({
    Key? key,
    this.projectTitle,
    this.projectFeaturedImagePath,
    this.projectRole,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return InkWell(
      onTap: () {},
      hoverColor: Colors.black.withOpacity(0.4),
      highlightColor: Colors.black.withOpacity(0.4),
      child: CachedNetworkImage(
        imageUrl: projectFeaturedImagePath!,
      ),
    );
  }
}
