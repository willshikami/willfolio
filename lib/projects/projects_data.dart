import 'package:flutter/material.dart';

class Project {
  final int id;
  final bool isActive;
  final Image plantImagePath;
  final String projectTitle, projectDescription, projectRole;

  Project({
    @required this.id,
    @required this.projectTitle,
    this.projectDescription,
    @required this.plantImagePath,
    @required this.projectRole,
    this.isActive,
  });
}

List<Project> projects = <Project>[
  Project(
    id: 1,
    projectTitle: 'Meal Time',
    plantImagePath: Image(image: AssetImage('assets/images/meal_time.jpg')),
    projectDescription: '',
    projectRole: 'UI/UX Design',
    isActive: true,
  ),
  Project(
    id: 2,
    projectTitle: 'My Plants',
    plantImagePath: Image(image: AssetImage('assets/images/myplants.jpg')),
    projectDescription: '',
    projectRole: 'UI/UX Design',
    isActive: true,
  ),
  Project(
    id: 3,
    projectTitle: 'NHIF Redesign',
    plantImagePath: Image(image: AssetImage('assets/images/nhif_redesign.jpg')),
    projectDescription: '',
    projectRole: 'UI/UX Design',
    isActive: true,
  ),
  Project(
    id: 4,
    projectTitle: 'Places',
    plantImagePath: Image(image: AssetImage('assets/images/places.jpg')),
    projectDescription: '',
    projectRole: 'UI/UX Design',
    isActive: true,
  ),
];
