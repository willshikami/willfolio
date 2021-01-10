import 'package:flutter/material.dart';

class Project {
  final int id;
  final bool isActive;
  final String projectTitle, projectDescription, projectRole, projectImagePath;

  Project({
    @required this.id,
    @required this.projectTitle,
    this.projectDescription,
    @required this.projectImagePath,
    @required this.projectRole,
    this.isActive,
  });
}

List<Project> projects = <Project>[
  Project(
    id: 1,
    projectTitle: 'Meal Time',
    projectImagePath: 'assets/images/meal_time.jpg',
    projectDescription: '',
    projectRole: 'UI/UX Design',
    isActive: true,
  ),
  Project(
    id: 2,
    projectTitle: 'My Plants',
    projectImagePath: 'assets/images/myplants.jpg',
    projectDescription: '',
    projectRole: 'UI/UX Design',
    isActive: true,
  ),
  Project(
    id: 3,
    projectTitle: 'NHIF Redesign',
    projectImagePath: 'assets/images/nhif_redesign.jpg',
    projectDescription: '',
    projectRole: 'UI/UX Design',
    isActive: true,
  ),
  Project(
    id: 4,
    projectTitle: 'Places',
    projectImagePath: 'assets/images/places.jpg',
    projectDescription: '',
    projectRole: 'UI/UX Design',
    isActive: true,
  ),
];
