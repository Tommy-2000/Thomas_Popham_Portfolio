import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:gap/gap.dart';
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
    return CustomScrollView(
      slivers: <Widget>[
        SliverGrid(
          gridDelegate: landscapeWindow
              ? buildSliverLandscapeGridDelegate()
              : buildSliverPortraitGridDelegate(),
          delegate: buildSliverChildListDelegate(),
        ),
      ],
    );
  }
}

SliverChildListDelegate buildSliverChildListDelegate() {
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
                child: Image(
                  image: AssetImage('assets/projects/'),
                  height: 500,
                  width: 540,
                  fit: BoxFit.cover,
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
            Gap(10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              controller: ScrollController(),
              physics: AlwaysScrollableScrollPhysics(),
              child: Row(
                children: [
                  Chip(label: const Text("Flutter")),
                  Gap(10),
                  Chip(label: const Text(".NET with .NET Aspire")),
                  Gap(10),
                  Chip(label: const Text("Riverpod")),
                  Gap(10),
                  Chip(label: const Text("AidBox FHIR Server")),
                  Gap(10),
                  Chip(
                    label: const Text(
                      "ReBAC (Relationship-Based Access Control)",
                    ),
                  ),
                ],
              ),
            ),
            Gap(10),
            SubtitleText(
              data:
                  "This project is being developed as an novel approach to improving cross-collaboration for NHS workers working with EHR systems. Making effective use of Auth0 for JWT-based and ReBAC (Relationship-Based Access Control) authentication, Aidbox FHIR Server to model and manage FHIR health data, ASP.NET for building back-end architecture, and a Flutter client application that compiles to both Android, iOS and Web.",
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
                  image: AssetImage('assets/projects/'),
                  height: 500,
                  width: 540,
                  fit: BoxFit.cover,
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
            Gap(10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              controller: ScrollController(),
              physics: AlwaysScrollableScrollPhysics(),
              child: Row(
                children: [
                  Chip(label: const Text("Flutter")),
                  Gap(10),
                  Chip(label: const Text("Node.JS with TypeScript")),
                  Gap(10),
                  Chip(label: const Text("Riverpod")),
                  Gap(10),
                  Chip(label: const Text("Express")),
                  Gap(10),
                  Chip(label: const Text("Zod")),
                ],
              ),
            ),
            Gap(10),
            SubtitleText(
              data:
                  "This project is being developed as a full-stack improvement on my TravelHopper Android project and was expanded with a Flutter application that implements state management with Riverpod, http networking with Dio and support for Android, iOS and web. While Node.JS was used with TypeScript to ensure type-checking, JWT-based token authentication and REST-based queries with the Amadeus travel API to fetch flights, hotels and travel package data to the Flutter app.",
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
                  image: AssetImage('assets/projects/CMP_Project.png'),
                  height: 300,
                  width: 600,
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
            Gap(10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              controller: ScrollController(),
              physics: AlwaysScrollableScrollPhysics(),
              child: Row(
                children: [
                  Chip(label: const Text("Unreal Engine 4")),
                  Gap(10),
                  Chip(label: const Text("Blender")),
                  Gap(10),
                  Chip(label: const Text("Adobe Audition")),
                  Gap(10),
                  Chip(label: const Text("Digital Signal Processing (DSP)")),
                ],
              ),
            ),
            Gap(10),
            SubtitleText(
              data:
                  "This final year project was developed as a part of a major research paper that was built on existing work in sound-to colour Synaesthesia (Chromesthesia), Music Therapy and Video Game Design. The final project deliverable was presented as a novel, sensory-based approach to managing mental wellbeing through an audio-driven game-based experience built on Chromesthesia research where colours and shapes appear depending on the sounds being played by the user.",
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
                  image: AssetImage('assets/projects/MAD_Project.png'),
                  height: 300,
                  width: 600,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Gap(10),
            HeaderText(
              data:
                  "TravelHopper - Android Travel App for Holiday Planning and Navigation - Mobile Application Development",
              fontSize: 30,
              minFontSize: 20,
              maxLines: 2,
              softWrap: true,
              textAlign: TextAlign.end,
              textOverflow: TextOverflow.fade,
            ),
            Gap(10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              controller: ScrollController(),
              physics: AlwaysScrollableScrollPhysics(),
              child: Row(
                children: [
                  Chip(label: const Text("Android")),
                  Gap(10),
                  Chip(label: const Text("Java")),
                  Gap(10),
                  Chip(label: const Text("Fragments")),
                  Gap(10),
                  Chip(label: const Text("Room")),
                  Gap(10),
                  Chip(label: const Text("Google Maps API")),
                  Gap(10),
                  Chip(label: const Text("CameraX")),
                ],
              ),
            ),
            Gap(10),
            SubtitleText(
              data:
                  "This Android application was developed as a Travel app for people to manage their trips, add favourite trips to a list, track their location through Google Maps and take photos and videos directly within the app. Agile development and Git Version Control was applied to the overall development process of the app to ensure the iterative development of all key features and to promote thorough software testing.",
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
                  image: AssetImage('assets/projects/AIF_Project.png'),
                  height: 300,
                  width: 600,
                  fit: BoxFit.cover,
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
            Gap(10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              controller: ScrollController(),
              physics: AlwaysScrollableScrollPhysics(),
              child: Row(
                children: [
                  Chip(label: const Text("Python")),
                  Gap(10),
                  Chip(label: const Text("Google Colab")),
                  Gap(10),
                  Chip(label: const Text("Stable Baselines 3")),
                  Gap(10),
                  Chip(label: const Text("Network X")),
                  Gap(10),
                  Chip(label: const Text("Seaborn")),
                ],
              ),
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
                  height: 300,
                  width: 600,
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
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              controller: ScrollController(),
              physics: AlwaysScrollableScrollPhysics(),
              child: Row(
                children: [
                  Chip(label: const Text("Microsoft Power BI")),
                  Gap(10),
                  Chip(label: const Text("DAX")),
                  Gap(10),
                  Chip(label: const Text("Power Query")),
                  Gap(10),
                  Chip(label: const Text("Microsoft Excel")),
                ],
              ),
            ),
            Gap(10),
            SubtitleText(
              data:
                  "This final year project was developed as a part of a major research paper that was built on existing work in sound-to colour Synaesthesia (Chromesthesia), Music Therapy and Video Game Design. Unreal Engine (with Niagara VFX and Animations), Adobe Audition and Blender were used in developing an audio-driven gameplay experience based on Chromesthesia where colours and shapes appear depending on the sounds being played by the user within a sensory environment.",
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
                  image: AssetImage('assets/projects/ML_Project.png'),
                  height: 300,
                  width: 600,
                  fit: BoxFit.cover,
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
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              controller: ScrollController(),
              physics: AlwaysScrollableScrollPhysics(),
              child: Row(
                children: [
                  Chip(label: const Text("Python")),
                  Gap(10),
                  Chip(label: const Text("SciKit Learn")),
                  Gap(10),
                  Chip(label: const Text("Numpy")),
                  Gap(10),
                  Chip(label: const Text("Pandas")),
                ],
              ),
            ),
            Gap(10),
            SubtitleText(
              data:
                  "This project was developed as an exploration into multi-class classification techniques that can correctly classify phrases made in British Sign Language based on the cartesian coordinate data retrieved from hand landmarks. This made effective use of data exploration, cleaning and PCA (Principal Component Analysis) techniques before fitting training and testing subsets onto Naïve Bayes, Support Vector Classification, K-Nearest Neighbours and Random Forest models.",
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
                  image: AssetImage('assets/projects/OOP_Project.png'),
                  height: 300,
                  width: 600,
                  fit: BoxFit.cover,
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
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              controller: ScrollController(),
              physics: AlwaysScrollableScrollPhysics(),
              child: Row(
                children: [
                  Chip(label: const Text("Java")),
                  Gap(10),
                  Chip(label: const Text("Swing GUI")),
                  Gap(10),
                  Chip(label: const Text("Agile Project Management")),
                  Gap(10),
                  Chip(label: const Text("Group Project")),
                ],
              ),
            ),
            Gap(10),
            SubtitleText(
              data:
                  "This desktop application was developed as a basic stock management application written in Java and Swing GUI as a part of a group-based project assignment, where roles and responsibilities were appropriately assigned and progress was recorded and shared during weekly meetings. The application itself was built within the Apache NetBeans IDE to demonstrate best practices in Java development and testing as a part of this project.",
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
    ],
    addAutomaticKeepAlives: false,
    addRepaintBoundaries: false,
  );
}

SliverQuiltedGridDelegate buildSliverPortraitGridDelegate() {
  return SliverQuiltedGridDelegate(
    repeatPattern: QuiltedGridRepeatPattern.same,
    crossAxisCount: 32,
    pattern: [
      QuiltedGridTile(6, 32),
      QuiltedGridTile(32, 32),
      QuiltedGridTile(32, 32),
      QuiltedGridTile(32, 32),
      QuiltedGridTile(32, 32),
      QuiltedGridTile(32, 32),
      QuiltedGridTile(32, 32),
      QuiltedGridTile(32, 32),
      QuiltedGridTile(32, 32),
      QuiltedGridTile(32, 32),
      QuiltedGridTile(32, 32),
    ],
  );
}

SliverQuiltedGridDelegate buildSliverLandscapeGridDelegate() {
  return SliverQuiltedGridDelegate(
    repeatPattern: QuiltedGridRepeatPattern.same,
    crossAxisCount: 32,
    pattern: [
      QuiltedGridTile(2, 32),
      QuiltedGridTile(16, 16),
      QuiltedGridTile(16, 16),
      QuiltedGridTile(16, 16),
      QuiltedGridTile(16, 16),
      QuiltedGridTile(16, 16),
      QuiltedGridTile(16, 16),
      QuiltedGridTile(16, 16),
      QuiltedGridTile(16, 16),
      QuiltedGridTile(16, 16),
      QuiltedGridTile(16, 16),
    ],
  );
}
