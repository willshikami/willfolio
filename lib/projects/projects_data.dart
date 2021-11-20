class Project {
  final int id;
  final bool? isActive;
  final String projectTitle;
  final String? projectDescription, projectRole, projectImagePath;

  Project({
    required this.id,
    required this.projectTitle,
    this.projectDescription,
    required this.projectImagePath,
    required this.projectRole,
    this.isActive,
  });
}

List<Project> projects = <Project>[
  Project(
    id: 1,
    projectTitle: 'Meal Time',
    projectImagePath:
        'https://hosted-assets.web.app/images/jpegs/portfolio/meal_time.jpg',
    projectDescription: '',
    projectRole: 'UI/UX Design',
    isActive: true,
  ),
  Project(
    id: 2,
    projectTitle: 'My Plants',
    projectImagePath:
        'https://hosted-assets.web.app/images/jpegs/portfolio/myplants.jpg',
    projectDescription: '',
    projectRole: 'UI/UX Design',
    isActive: true,
  ),
  Project(
    id: 3,
    projectTitle: 'NHIF Redesign',
    projectImagePath:
        'https://hosted-assets.web.app/images/jpegs/portfolio/nhif_redesign.jpg',
    projectDescription: '',
    projectRole: 'UI/UX Design',
    isActive: true,
  ),
  Project(
    id: 4,
    projectTitle: 'Places',
    projectImagePath:
        'https://hosted-assets.web.app/images/jpegs/portfolio/places.jpg',
    projectDescription: '',
    projectRole: 'UI/UX Design',
    isActive: true,
  ),
];
