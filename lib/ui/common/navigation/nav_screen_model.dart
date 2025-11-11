import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

import '../../screens/home/home_screen.dart';
import '../../screens/projects/projects_screen.dart';
import '../../screens/experience/experience_screen.dart';
import '../../screens/blog/blog_screen.dart';

class NavScreenModel {
  final Widget navScreen;
  final String navScreenName;
  final HugeIcon navScreenIcon;

  NavScreenModel({
    required this.navScreen,
    required this.navScreenName,
    required this.navScreenIcon,
  });
}

List<NavScreenModel> navScreens = [
  NavScreenModel(
    navScreen: HomeScreen(),
    navScreenName: "Home",
    navScreenIcon: HugeIcon(
      icon: HugeIcons.strokeRoundedHome07,
      color: Colors.white,
    ),
  ),
  NavScreenModel(
    navScreen: ProjectsScreen(),
    navScreenName: "Projects",
    navScreenIcon: HugeIcon(
      icon: HugeIcons.strokeRoundedSourceCodeSquare,
      color: Colors.white,
    ),
  ),
  NavScreenModel(
    navScreen: ExperienceScreen(),
    navScreenName: "Experience",
    navScreenIcon: HugeIcon(
      icon: HugeIcons.strokeRoundedWork,
      color: Colors.white,
    ),
  ),
  NavScreenModel(
    navScreen: BlogScreen(),
    navScreenName: "Blog",
    navScreenIcon: HugeIcon(
      icon: HugeIcons.strokeRoundedNews01,
      color: Colors.white,
    ),
  ),
];
