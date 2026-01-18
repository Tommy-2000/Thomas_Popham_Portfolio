import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:thomas_popham_portfolio/ui/screens/blog/blog_screen.dart';

import '../../screens/home/home_screen.dart';
import '../../screens/projects/projects_screen.dart';
import '../../screens/experience/experience_screen.dart';

class NavScreenModel {
  final Widget navScreen;
  final String navScreenName;
  final List<List<dynamic>> navScreenIcon;

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
    navScreenIcon: HugeIcons.strokeRoundedHome07,
  ),
  NavScreenModel(
    navScreen: ProjectsScreen(),
    navScreenName: "Projects",
    navScreenIcon: HugeIcons.strokeRoundedSourceCodeSquare,
  ),
  NavScreenModel(
    navScreen: ExperienceScreen(),
    navScreenName: "Experience",
    navScreenIcon: HugeIcons.strokeRoundedWork,
  ),
  NavScreenModel(
    navScreen: BlogScreen(),
    navScreenName: "Blog",
    navScreenIcon: HugeIcons.strokeRoundedNews,
  ),
];
