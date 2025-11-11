import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:gap/gap.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:thomas_popham_portfolio/logic/utils/uri_utils.dart';
import 'package:thomas_popham_portfolio/ui/common/header_text.dart';
import 'package:thomas_popham_portfolio/ui/common/subtitle_text.dart';
import '../../common/cards/rounded_card.dart';
import '../../common/title_text.dart';

class ProjectsScreen extends StatefulWidget {
  const ProjectsScreen({super.key});

  @override
  State<ProjectsScreen> createState() => _ProjectsScreenState();
}

class _ProjectsScreenState extends State<ProjectsScreen> {
  late ScrollController _chipScrollController;
  bool landscapeWindow = false;
  bool foldableWindow = false;

  @override
  void initState() {
    super.initState();
    _chipScrollController = ScrollController();
  }

  @override
  void dispose() {
    super.dispose();
    _chipScrollController.dispose();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // Check the width of the window using MediaQuery if greater than 800 in a state change
    final double windowWidth = MediaQuery.of(context).size.width;
    landscapeWindow = windowWidth > 800;
  }

  @override
  Widget build(BuildContext context) {
    final colourScheme = Theme.of(context).colorScheme;
    return CustomScrollView(
      slivers: <Widget>[
        SliverGrid(
          gridDelegate: landscapeWindow
              ? buildSliverLandscapeGridDelegate()
              : buildSliverPortraitGridDelegate(),
          delegate: buildSliverChildListDelegate(landscapeWindow, colourScheme),
        ),
      ],
    );
  }
}

SliverChildListDelegate buildSliverChildListDelegate(
  bool landscapeWindow,
  ColorScheme colourScheme,
) {
  return SliverChildListDelegate(
    <Widget>[
      RoundedCard(
        child: Column(
          children: [
            TitleText(
              data: "Projects",
              fontSize: 40,
              minFontSize: 20,
              maxLines: 2,
              softWrap: true,
              textAlign: TextAlign.center,
              textOverflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
      RoundedCard(
        child: Column(
          children: [
            RoundedCard(
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                child: Stack(
                  children: [
                    Material(
                      child: InkWell(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        mouseCursor: SystemMouseCursors.click,
                        splashColor: colourScheme.primary,
                        child: Image(
                          image: AssetImage('assets/projects/dreamCare_Project.png'),
                          height: landscapeWindow ? 300 : 180,
                          width: landscapeWindow ? 600 : 500,
                          fit: BoxFit.cover,
                        ),
                        onTap: () {
                          UriUtils().launchGitHubProject1();
                        },
                      ),
                    ),
                    Positioned(
                      right: 20,
                      bottom: 20,
                      child: IconButton(
                        onPressed: () {},
                        icon: HugeIcon(
                          icon: HugeIcons.strokeRoundedArrowUpRight01,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Gap(10),
            HeaderText(
              data: "dreamCare - EHR Healthcare Collaborative Platform",
              fontSize: 30,
              minFontSize: 20,
              maxLines: 2,
              softWrap: true,
              textAlign: TextAlign.end,
              textOverflow: TextOverflow.fade,
            ),
            Row(
              children: [
                Chip(
                  label: const Text("Flutter"),
                  labelStyle: TextStyle(color: colourScheme.primary),
                  side: BorderSide(color: colourScheme.primary),
                ),
                Gap(10),
                Chip(
                  label: const Text("Riverpod"),
                  labelStyle: TextStyle(color: colourScheme.primary),
                  side: BorderSide(color: colourScheme.primary),
                ),
                Gap(10),
                Chip(
                  label: const Text(".NET"),
                  labelStyle: TextStyle(color: colourScheme.primary),
                  side: BorderSide(color: colourScheme.primary),
                ),
                Gap(10),
                Chip(
                  label: const Text(".NET Aspire"),
                  labelStyle: TextStyle(color: colourScheme.primary),
                  side: BorderSide(color: colourScheme.primary),
                ),
                Gap(10),
                Chip(
                  label: const Text("FHIR"),
                  labelStyle: TextStyle(color: colourScheme.primary),
                  side: BorderSide(color: colourScheme.primary),
                ),
              ],
            ),
            Row(
              children: [
                Chip(
                  label: const Text("AidBox Server"),
                  labelStyle: TextStyle(color: colourScheme.primary),
                  side: BorderSide(color: colourScheme.primary),
                ),
                Gap(10),
                Chip(
                  label: const Text(
                    "ReBAC (Relationship-Based Access Control)",
                  ),
                  labelStyle: TextStyle(color: colourScheme.primary),
                  side: BorderSide(color: colourScheme.primary),
                ),
              ],
            ),
            Gap(10),
            SubtitleText(
              data:
                  "This project is being developed as an novel approach to improving cross-collaboration for NHS workers working with EHR systems. Making effective use of Auth0 for JWT-based and ReBAC (Relationship-Based Access Control) authentication, Aidbox FHIR Server to model and manage FHIR health data, ASP.NET for building back-end architecture, and a Flutter client application that compiles to both Android, iOS and Web.",
              fontSize: 18,
              minFontSize: 12,
              maxLines: 7,
              softWrap: true,
              textAlign: TextAlign.end,
              textOverflow: TextOverflow.fade,
            ),
          ],
        ),
      ),
      RoundedCard(
        child: Column(
          children: [
            RoundedCard(
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                child: Stack(
                  children: [
                    Material(
                      child: InkWell(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        mouseCursor: SystemMouseCursors.click,
                        splashColor: colourScheme.primary,
                        child: Image(
                          image: AssetImage('assets/projects/dreamTravel_Project.png'),
                          height: landscapeWindow ? 300 : 180,
                          width: landscapeWindow ? 600 : 500,
                          fit: BoxFit.cover,
                        ),
                        onTap: () {
                          UriUtils().launchGitHubProject2();
                        },
                      ),
                    ),
                    Positioned(
                      right: 20,
                      bottom: 20,
                      child: IconButton(
                        onPressed: () {},
                        icon: HugeIcon(
                          icon: HugeIcons.strokeRoundedArrowUpRight01,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Gap(10),
            HeaderText(
              data:
                  "dreamTravel - Travel Booking and Social Media Full-Stack Platform",
              fontSize: 30,
              minFontSize: 20,
              maxLines: 2,
              softWrap: true,
              textAlign: TextAlign.end,
              textOverflow: TextOverflow.fade,
            ),
            Row(
              children: [
                Chip(
                  label: const Text("Flutter"),
                  labelStyle: TextStyle(color: colourScheme.primary),
                  side: BorderSide(color: colourScheme.primary),
                ),
                Gap(10),
                Chip(
                  label: const Text("Node.JS with TypeScript"),
                  labelStyle: TextStyle(color: colourScheme.primary),
                  side: BorderSide(color: colourScheme.primary),
                ),
                Gap(10),
                Chip(
                  label: const Text("Riverpod"),
                  labelStyle: TextStyle(color: colourScheme.primary),
                  side: BorderSide(color: colourScheme.primary),
                ),
              ],
            ),
            Row(
              children: [
                Chip(
                  label: const Text("Express"),
                  labelStyle: TextStyle(color: colourScheme.primary),
                  side: BorderSide(color: colourScheme.primary),
                ),
                Gap(10),
                Chip(
                  label: const Text("Zod"),
                  labelStyle: TextStyle(color: colourScheme.primary),
                  side: BorderSide(color: colourScheme.primary),
                ),
              ],
            ),
            Gap(10),
            SubtitleText(
              data:
                  "This project is being developed as a full-stack improvement on my TravelHopper Android project and is expanded with a Flutter application that implements state management with Riverpod, http networking with Dio and support for Android, iOS and web. While Node.JS was used with TypeScript to ensure type-checking, JWT-based authentication and REST-based queries with the Amadeus API to fetch travel data to the app.",
              fontSize: 18,
              minFontSize: 12,
              maxLines: 7,
              softWrap: true,
              textAlign: TextAlign.end,
              textOverflow: TextOverflow.fade,
            ),
          ],
        ),
      ),
      RoundedCard(
        child: Column(
          children: [
            RoundedCard(
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                child: Image(
                  image: AssetImage('assets/projects/CMP_Project.png'),
                  height: landscapeWindow ? 300 : 180,
                  width: landscapeWindow ? 600 : 450,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Gap(10),
            HeaderText(
              data:
                  "Flow-Motion - An Audio-Visual, Video Game-Based Mental Wellbeing Software Based on Synaesthesia and Music Therapy - Computing Masters Project",
              fontSize: 30,
              minFontSize: 20,
              maxLines: 3,
              softWrap: true,
              textAlign: TextAlign.end,
              textOverflow: TextOverflow.fade,
            ),
            Row(
              children: [
                Chip(
                  label: const Text("Unreal Engine 4"),
                  labelStyle: TextStyle(color: colourScheme.primary),
                  side: BorderSide(color: colourScheme.primary),
                ),
                Gap(10),
                Chip(
                  label: const Text("Blender"),
                  labelStyle: TextStyle(color: colourScheme.primary),
                  side: BorderSide(color: colourScheme.primary),
                ),
                Gap(10),
                Chip(
                  label: const Text("Adobe Audition"),
                  labelStyle: TextStyle(color: colourScheme.primary),
                  side: BorderSide(color: colourScheme.primary),
                ),
              ],
            ),
            Row(
              children: [
                Chip(
                  label: const Text("Digital Signal Processing (DSP)"),
                  labelStyle: TextStyle(color: colourScheme.primary),
                  side: BorderSide(color: colourScheme.primary),
                ),
              ],
            ),
            Gap(10),
            SubtitleText(
              data:
                  "This final year project was developed as a part of a major research paper that was built on existing work in sound-to colour Synaesthesia (Chromesthesia), Music Therapy and Video Game Design. The project was presented as a novel, sensory-based approach to managing mental wellbeing through an audio-driven game-based experience built on Chromesthesia research where colours and shapes appear depending on sounds that the user plays.",
              fontSize: 18,
              minFontSize: 12,
              maxLines: 7,
              softWrap: true,
              textAlign: TextAlign.end,
              textOverflow: TextOverflow.fade,
            ),
          ],
        ),
      ),
      RoundedCard(
        child: Column(
          children: [
            RoundedCard(
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                child: Stack(
                  children: [
                    Material(
                      child: InkWell(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        mouseCursor: SystemMouseCursors.click,
                        splashColor: colourScheme.primary,
                        child: Image(
                          image: AssetImage('assets/projects/MAD_Project.png'),
                          height: landscapeWindow ? 300 : 180,
                          width: landscapeWindow ? 600 : 500,
                          fit: BoxFit.cover,
                        ),
                        onTap: () {
                          UriUtils().launchGitHubProject3();
                        },
                      ),
                    ),
                    Positioned(
                      right: 20,
                      bottom: 20,
                      child: IconButton(
                        onPressed: () {},
                        icon: HugeIcon(
                          icon: HugeIcons.strokeRoundedArrowUpRight01,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Gap(10),
            HeaderText(
              data:
                  "TravelHopper - Android Travel App for Holiday Planning - Mobile Application Development",
              fontSize: 30,
              minFontSize: 20,
              maxLines: 2,
              softWrap: true,
              textAlign: TextAlign.end,
              textOverflow: TextOverflow.fade,
            ),
            Row(
              children: [
                Chip(
                  label: const Text("Android"),
                  labelStyle: TextStyle(color: colourScheme.primary),
                  side: BorderSide(color: colourScheme.primary),
                ),
                Gap(10),
                Chip(
                  label: const Text("Java"),
                  labelStyle: TextStyle(color: colourScheme.primary),
                  side: BorderSide(color: colourScheme.primary),
                ),
                Gap(10),
                Chip(
                  label: const Text("Fragments"),
                  labelStyle: TextStyle(color: colourScheme.primary),
                  side: BorderSide(color: colourScheme.primary),
                ),
                Gap(10),
                Chip(
                  label: const Text("Room"),
                  labelStyle: TextStyle(color: colourScheme.primary),
                  side: BorderSide(color: colourScheme.primary),
                ),
              ],
            ),
            Row(
              children: [
                Chip(
                  label: const Text("Google Maps API"),
                  labelStyle: TextStyle(color: colourScheme.primary),
                  side: BorderSide(color: colourScheme.primary),
                ),
                Gap(10),
                Chip(
                  label: const Text("CameraX"),
                  labelStyle: TextStyle(color: colourScheme.primary),
                  side: BorderSide(color: colourScheme.primary),
                ),
              ],
            ),
            Gap(10),
            SubtitleText(
              data:
                  "This Android application was developed as a Travel app for people to manage their trips, add favourite trips to a list, track their location through Google Maps and take photos and videos directly within the app. Agile development and Git Version Control was applied to the overall development process of the app to ensure the iterative development of all key features and to promote thorough software testing.",
              fontSize: 18,
              minFontSize: 12,
              maxLines: 7,
              softWrap: true,
              textAlign: TextAlign.end,
              textOverflow: TextOverflow.fade,
            ),
          ],
        ),
      ),
      RoundedCard(
        child: Column(
          children: [
            RoundedCard(
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                child: Stack(
                  children: [
                    Material(
                      child: InkWell(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        mouseCursor: SystemMouseCursors.click,
                        splashColor: colourScheme.primary,
                        child: Image(
                          image: AssetImage('assets/projects/AIF_Project.png'),
                          height: landscapeWindow ? 300 : 180,
                          width: landscapeWindow ? 600 : 500,
                          fit: BoxFit.cover,
                        ),
                        onTap: () {
                          UriUtils().launchGitHubProject4();
                        },
                      ),
                    ),
                    Positioned(
                      right: 20,
                      bottom: 20,
                      child: IconButton(
                        onPressed: () {},
                        icon: HugeIcon(
                          icon: HugeIcons.strokeRoundedArrowUpRight01,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Gap(10),
            HeaderText(
              data:
                  "Video Game AI Pathfinding Experiment - Artificial Intelligence Foundations",
              fontSize: 30,
              minFontSize: 20,
              maxLines: 2,
              softWrap: true,
              textAlign: TextAlign.end,
              textOverflow: TextOverflow.fade,
            ),
            Row(
              children: [
                Chip(
                  label: const Text("Python"),
                  labelStyle: TextStyle(color: colourScheme.primary),
                  side: BorderSide(color: colourScheme.primary),
                ),
                Gap(10),
                Chip(
                  label: const Text("Google Colab"),
                  labelStyle: TextStyle(color: colourScheme.primary),
                  side: BorderSide(color: colourScheme.primary),
                ),
                Gap(10),
                Chip(
                  label: const Text("Stable Baselines 3"),
                  labelStyle: TextStyle(color: colourScheme.primary),
                  side: BorderSide(color: colourScheme.primary),
                ),
              ],
            ),
            Row(
              children: [
                Chip(
                  label: const Text("Network X"),
                  labelStyle: TextStyle(color: colourScheme.primary),
                  side: BorderSide(color: colourScheme.primary),
                ),
                Gap(10),
                Chip(
                  label: const Text("Seaborn"),
                  labelStyle: TextStyle(color: colourScheme.primary),
                  side: BorderSide(color: colourScheme.primary),
                ),
              ],
            ),
            Gap(10),
            SubtitleText(
              data:
                  "This experiment was developed as a means of finding the most effective method of video game pathfinding between three different (informed search) methods. The methods used consisted of Q-Learning, Deep Reinforcement Learning using Stable Baselines 3 and A Star Search. All three methods were written and tested within a Google Colab environment in Python.",
              fontSize: 18,
              minFontSize: 12,
              maxLines: 6,
              softWrap: true,
              textAlign: TextAlign.end,
              textOverflow: TextOverflow.fade,
            ),
          ],
        ),
      ),
      RoundedCard(
        child: Column(
          children: [
            RoundedCard(
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                child: Image(
                  image: AssetImage('assets/projects/BDAndBI_Project.png'),
                  height: landscapeWindow ? 300 : 180,
                  width: landscapeWindow ? 600 : 450,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Gap(10),
            HeaderText(
              data:
                  "2015 Flight Delays and Cancellations BI Solution - Big Data and Business Intelligence",
              fontSize: 30,
              minFontSize: 20,
              maxLines: 2,
              softWrap: true,
              textAlign: TextAlign.end,
              textOverflow: TextOverflow.fade,
            ),
            Gap(10),
            Row(
              children: [
                Chip(
                  label: const Text("Microsoft Power BI"),
                  labelStyle: TextStyle(color: colourScheme.primary),
                  side: BorderSide(color: colourScheme.primary),
                ),
                Gap(10),
                Chip(
                  label: const Text("DAX"),
                  labelStyle: TextStyle(color: colourScheme.primary),
                  side: BorderSide(color: colourScheme.primary),
                ),
                Gap(10),
                Chip(
                  label: const Text("Power Query"),
                  labelStyle: TextStyle(color: colourScheme.primary),
                  side: BorderSide(color: colourScheme.primary),
                ),
              ],
            ),
            Row(
              children: [
                Chip(
                  label: const Text("Microsoft Excel"),
                  labelStyle: TextStyle(color: colourScheme.primary),
                  side: BorderSide(color: colourScheme.primary),
                ),
              ],
            ),
            Gap(10),
            SubtitleText(
              data:
                  "This business dashboard consisting of five pages was built on key business questions raised on data regarding flight delays and cancellations in 2015. Each page contains a combination of appropriate data visualisations and data queries created within Microsoft Power BI using data transformation, scaling and DAX queries.",
              fontSize: 18,
              minFontSize: 12,
              maxLines: 6,
              softWrap: true,
              textAlign: TextAlign.end,
              textOverflow: TextOverflow.fade,
            ),
          ],
        ),
      ),
      RoundedCard(
        child: Column(
          children: [
            RoundedCard(
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                child: Stack(
                  children: [
                    Material(
                      child: InkWell(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        mouseCursor: SystemMouseCursors.click,
                        splashColor: colourScheme.primary,
                        child: Image(
                          image: AssetImage('assets/projects/ML_Project.png'),
                          height: landscapeWindow ? 300 : 180,
                          width: landscapeWindow ? 600 : 500,
                          fit: BoxFit.cover,
                        ),
                        onTap: () {
                          UriUtils().launchGitHubProject5();
                        },
                      ),
                    ),
                    Positioned(
                      right: 20,
                      bottom: 20,
                      child: IconButton(
                        onPressed: () {},
                        icon: HugeIcon(
                          icon: HugeIcons.strokeRoundedArrowUpRight01,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Gap(10),
            HeaderText(
              data:
                  "British Sign Language Multi-Class Classification - Machine Learning",
              fontSize: 30,
              minFontSize: 20,
              maxLines: 2,
              softWrap: true,
              textAlign: TextAlign.end,
              textOverflow: TextOverflow.fade,
            ),
            Gap(10),
            Row(
              children: [
                Chip(
                  label: const Text("Python"),
                  labelStyle: TextStyle(color: colourScheme.primary),
                  side: BorderSide(color: colourScheme.primary),
                ),
                Gap(10),
                Chip(
                  label: const Text("SciKit Learn"),
                  labelStyle: TextStyle(color: colourScheme.primary),
                  side: BorderSide(color: colourScheme.primary),
                ),
                Gap(10),
                Chip(
                  label: const Text("Numpy"),
                  labelStyle: TextStyle(color: colourScheme.primary),
                  side: BorderSide(color: colourScheme.primary),
                ),
                Gap(10),
                Chip(
                  label: const Text("Pandas"),
                  labelStyle: TextStyle(color: colourScheme.primary),
                  side: BorderSide(color: colourScheme.primary),
                ),
              ],
            ),
            Gap(10),
            SubtitleText(
              data:
                  "This project was developed as an exploration into multi-class classification techniques that can correctly classify phrases made in British Sign Language based on the cartesian coordinate data retrieved from hand landmarks. This made effective use of data exploration, cleaning and PCA (Principal Component Analysis) techniques before fitting training and testing subsets onto Naïve Bayes, Support Vector Classification, K-Nearest Neighbours and Random Forest models.",
              fontSize: 18,
              minFontSize: 12,
              maxLines: 7,
              softWrap: true,
              textAlign: TextAlign.end,
              textOverflow: TextOverflow.fade,
            ),
          ],
        ),
      ),
      RoundedCard(
        child: Column(
          children: [
            RoundedCard(
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                child: Stack(
                  children: [
                    Material(
                      child: InkWell(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        mouseCursor: SystemMouseCursors.click,
                        splashColor: colourScheme.primary,
                        child: Image(
                          image: AssetImage('assets/projects/OOP_Project.png'),
                          height: landscapeWindow ? 300 : 180,
                          width: landscapeWindow ? 600 : 500,
                          fit: BoxFit.cover,
                        ),
                        onTap: () {
                          UriUtils().launchGitHubProject6();
                        },
                      ),
                    ),
                    Positioned(
                      right: 20,
                      bottom: 20,
                      child: IconButton(
                        onPressed: () {},
                        icon: HugeIcon(
                          icon: HugeIcons.strokeRoundedArrowUpRight01,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Gap(10),
            HeaderText(
              data:
                  "Stock Management Desktop Application - Object Orientated Programming",
              fontSize: 30,
              minFontSize: 20,
              maxLines: 2,
              softWrap: true,
              textAlign: TextAlign.end,
              textOverflow: TextOverflow.fade,
            ),
            Gap(10),
            Row(
              children: [
                Chip(
                  label: const Text("Java"),
                  labelStyle: TextStyle(color: colourScheme.primary),
                  side: BorderSide(color: colourScheme.primary),
                ),
                Gap(10),
                Chip(
                  label: const Text("Swing GUI"),
                  labelStyle: TextStyle(color: colourScheme.primary),
                  side: BorderSide(color: colourScheme.primary),
                ),
                Gap(10),
                Chip(
                  label: const Text("Maven"),
                  labelStyle: TextStyle(color: colourScheme.primary),
                  side: BorderSide(color: colourScheme.primary),
                ),
                Gap(10),
                Chip(
                  label: const Text("Agile Project Management"),
                  labelStyle: TextStyle(color: colourScheme.primary),
                  side: BorderSide(color: colourScheme.primary),
                ),
              ],
            ),
            Gap(10),
            SubtitleText(
              data:
                  "This desktop application was developed as a stock management application written in Java and Swing GUI as a part of a group-based project assignment, where roles and responsibilities were appropriately assigned and progress was recorded and shared during weekly meetings. The application itself was built to demonstrate best practices in Java development and testing.",
              fontSize: 18,
              minFontSize: 12,
              maxLines: 7,
              softWrap: true,
              textAlign: TextAlign.end,
              textOverflow: TextOverflow.fade,
            ),
          ],
        ),
      ),
      Gap(5),
    ],
    addAutomaticKeepAlives: false,
    addRepaintBoundaries: false,
  );
}

SliverQuiltedGridDelegate buildSliverPortraitGridDelegate() {
  return SliverQuiltedGridDelegate(
    repeatPattern: QuiltedGridRepeatPattern.same,
    crossAxisCount: 64,
    pattern: [
      QuiltedGridTile(12, 64),
      QuiltedGridTile(72, 64),
      QuiltedGridTile(70, 64),
      QuiltedGridTile(70, 64),
      QuiltedGridTile(70, 64),
      QuiltedGridTile(70, 64),
      QuiltedGridTile(70, 64),
      QuiltedGridTile(70, 64),
      QuiltedGridTile(70, 64),
      QuiltedGridTile(14, 64),
    ],
  );
}

SliverQuiltedGridDelegate buildSliverLandscapeGridDelegate() {
  return SliverQuiltedGridDelegate(
    repeatPattern: QuiltedGridRepeatPattern.same,
    crossAxisCount: 64,
    pattern: [
      QuiltedGridTile(4, 64),
      QuiltedGridTile(34, 32),
      QuiltedGridTile(34, 32),
      QuiltedGridTile(34, 32),
      QuiltedGridTile(34, 32),
      QuiltedGridTile(34, 32),
      QuiltedGridTile(34, 32),
      QuiltedGridTile(34, 32),
      QuiltedGridTile(34, 32),
      QuiltedGridTile(6, 64),
    ],
  );
}
