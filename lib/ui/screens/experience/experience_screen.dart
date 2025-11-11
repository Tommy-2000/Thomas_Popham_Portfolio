import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:gap/gap.dart';
import '../../common/cards/rounded_card.dart';
import '../../common/header_text.dart';
import '../../common/subtitle_text.dart';
import '../../common/title_text.dart';

class ExperienceScreen extends StatefulWidget {
  const ExperienceScreen({super.key});

  @override
  State<ExperienceScreen> createState() => _ExperienceScreenState();
}

class _ExperienceScreenState extends State<ExperienceScreen> {
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
              data: "Experience",
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
            HeaderText(
              data: "Work Experience",
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
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          child: Image(
            image: AssetImage('assets/Amazon_Image.png'),
            height: 100,
            width: 300,
            fit: BoxFit.contain,
          ),
        ),
      ),
      RoundedCard(
        child: Column(
          children: [
            HeaderText(
              data: "Amazon UK Services - Fulfilment Associate - September 2020-September 2021",
              fontSize: 30,
              minFontSize: 10,
              maxLines: 3,
              softWrap: true,
              textAlign: TextAlign.end,
              textOverflow: TextOverflow.fade,
            ),
            Gap(5),
            SubtitleText(
              data:
              "Checked, scanned and managed customer packages throughout the delivery process within Outbound area. Management of warehouse stock and stock rotations within Returns. Reported any damaged orders and potential chemical hazards to Operations Manager within Outbound. Operated within health and safety operations and guidelines established under the company.Met both team-based and individual KPI targets for orders within Outbound process. Operated with Linux-based system to check, scan and dispatch customer goods. Raised potential health and safety hazards to operations managers within all areas of Outbound. Demonstrated emotional resilience and cooperated with fellow goods associates throughout the role.",
              fontSize: 18,
              minFontSize: 12,
              maxLines: 11,
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
            HeaderText(
              data: "Education",
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
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          child: Image(
            image: AssetImage('assets/TU_Image.png'),
            height: 100,
            width: 300,
            fit: BoxFit.contain,
          ),
        ),
      ),
      RoundedCard(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            HeaderText(
              data: "Teesside University - MSc. Computer Science - January 2022-June 2023",
              fontSize: 30,
              minFontSize: 10,
              maxLines: 3,
              softWrap: true,
              textAlign: TextAlign.end,
              textOverflow: TextOverflow.fade,
            ),
            Gap(5),
            SubtitleText(
              data:
              "Research Methods",
              fontSize: 18,
              minFontSize: 12,
              maxLines: 1,
              softWrap: true,
              textAlign: TextAlign.end,
              textOverflow: TextOverflow.fade,
            ),
            SubtitleText(
              data:
              "Machine Learning",
              fontSize: 18,
              minFontSize: 12,
              maxLines: 1,
              softWrap: true,
              textAlign: TextAlign.end,
              textOverflow: TextOverflow.fade,
            ),
            SubtitleText(
              data:
              "Object-Oriented Programming",
              fontSize: 18,
              minFontSize: 12,
              maxLines: 1,
              softWrap: true,
              textAlign: TextAlign.end,
              textOverflow: TextOverflow.fade,
            ),
            SubtitleText(
              data:
              "Mobile Application Development",
              fontSize: 18,
              minFontSize: 12,
              maxLines: 1,
              softWrap: true,
              textAlign: TextAlign.end,
              textOverflow: TextOverflow.fade,
            ),
            SubtitleText(
              data:
              "Big Data and Business Intelligence",
              fontSize: 18,
              minFontSize: 12,
              maxLines: 1,
              softWrap: true,
              textAlign: TextAlign.end,
              textOverflow: TextOverflow.fade,
            ),
            SubtitleText(
              data:
              "Artificial Intelligence Foundations",
              fontSize: 18,
              minFontSize: 12,
              maxLines: 1,
              softWrap: true,
              textAlign: TextAlign.end,
              textOverflow: TextOverflow.fade,
            ),
            SubtitleText(
              data:
              "Computer Masters Project",
              fontSize: 18,
              minFontSize: 12,
              maxLines: 1,
              softWrap: true,
              textAlign: TextAlign.end,
              textOverflow: TextOverflow.fade,
            ),
          ],
        ),

      ),
      RoundedCard(
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          child: Image(
            image: AssetImage('assets/NCD_Image.png'),
            height: 100,
            width: 300,
            fit: BoxFit.contain,
          ),
        ),
      ),
      RoundedCard(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            HeaderText(
              data:
                  "New College Durham - BSc. Business Computing (Honours) - September 2018-July 2019",
              fontSize: 30,
              minFontSize: 20,
              maxLines: 3,
              softWrap: true,
              textAlign: TextAlign.end,
              textOverflow: TextOverflow.fade,
            ),
            Gap(5),
            SubtitleText(
              data:
              "Research Methods",
              fontSize: 18,
              minFontSize: 12,
              maxLines: 1,
              softWrap: true,
              textAlign: TextAlign.end,
              textOverflow: TextOverflow.fade,
            ),
            SubtitleText(
              data:
              "Business Intelligence",
              fontSize: 18,
              minFontSize: 12,
              maxLines: 1,
              softWrap: true,
              textAlign: TextAlign.end,
              textOverflow: TextOverflow.fade,
            ),
            SubtitleText(
              data:
              "Project Management",
              fontSize: 18,
              minFontSize: 12,
              maxLines: 1,
              softWrap: true,
              textAlign: TextAlign.end,
              textOverflow: TextOverflow.fade,
            ),
            SubtitleText(
              data:
              "Mobile Application Development",
              fontSize: 18,
              minFontSize: 12,
              maxLines: 1,
              softWrap: true,
              textAlign: TextAlign.end,
              textOverflow: TextOverflow.fade,
            ),
            SubtitleText(
              data:
              "Social Media & SEO",
              fontSize: 18,
              minFontSize: 12,
              maxLines: 1,
              softWrap: true,
              textAlign: TextAlign.end,
              textOverflow: TextOverflow.fade,
            ),
            SubtitleText(
              data:
              "Computing Project",
              fontSize: 18,
              minFontSize: 12,
              maxLines: 1,
              softWrap: true,
              textAlign: TextAlign.end,
              textOverflow: TextOverflow.fade,
            ),
          ],
        ),
      ),
      RoundedCard(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            HeaderText(
              data:
              "New College Durham - FdSc. (Foundation Degree.) Applied Business Computing - September 2016-July 2018",
              fontSize: 30,
              minFontSize: 20,
              maxLines: 3,
              softWrap: true,
              textAlign: TextAlign.end,
              textOverflow: TextOverflow.fade,
            ),
            Gap(5),
            SubtitleText(
              data:
              "Personal and Professional Development IT",
              fontSize: 18,
              minFontSize: 12,
              maxLines: 1,
              softWrap: true,
              textAlign: TextAlign.end,
              textOverflow: TextOverflow.fade,
            ),
            SubtitleText(
              data:
              "Work Related Learning IT 1",
              fontSize: 18,
              minFontSize: 12,
              maxLines: 1,
              softWrap: true,
              textAlign: TextAlign.end,
              textOverflow: TextOverflow.fade,
            ),
            SubtitleText(
              data:
              "Introduction to Web Development",
              fontSize: 18,
              minFontSize: 12,
              maxLines: 1,
              softWrap: true,
              textAlign: TextAlign.end,
              textOverflow: TextOverflow.fade,
            ),
            SubtitleText(
              data:
              "Database Design and Development",
              fontSize: 18,
              minFontSize: 12,
              maxLines: 1,
              softWrap: true,
              textAlign: TextAlign.end,
              textOverflow: TextOverflow.fade,
            ),
            SubtitleText(
              data:
              "Work Related Learning IT 2",
              fontSize: 18,
              minFontSize: 12,
              maxLines: 1,
              softWrap: true,
              textAlign: TextAlign.end,
              textOverflow: TextOverflow.fade,
            ),
            SubtitleText(
              data:
              "Advanced Database Concepts",
              fontSize: 18,
              minFontSize: 12,
              maxLines: 1,
              softWrap: true,
              textAlign: TextAlign.end,
              textOverflow: TextOverflow.fade,
            ),
            SubtitleText(
              data:
              "Systems Analysis and Design",
              fontSize: 18,
              minFontSize: 12,
              maxLines: 1,
              softWrap: true,
              textAlign: TextAlign.end,
              textOverflow: TextOverflow.fade,
            ),
            SubtitleText(
              data:
              "Innovation, Idea Generation and Enterprise",
              fontSize: 18,
              minFontSize: 12,
              maxLines: 1,
              softWrap: true,
              textAlign: TextAlign.end,
              textOverflow: TextOverflow.fade,
            ),
            SubtitleText(
              data:
              "E-Business",
              fontSize: 18,
              minFontSize: 12,
              maxLines: 1,
              softWrap: true,
              textAlign: TextAlign.end,
              textOverflow: TextOverflow.fade,
            ),
            SubtitleText(
              data:
              "Human Computer Interaction",
              fontSize: 18,
              minFontSize: 12,
              maxLines: 1,
              softWrap: true,
              textAlign: TextAlign.end,
              textOverflow: TextOverflow.fade,
            ),
            SubtitleText(
              data:
              "Advanced Web Development",
              fontSize: 18,
              minFontSize: 12,
              maxLines: 1,
              softWrap: true,
              textAlign: TextAlign.end,
              textOverflow: TextOverflow.fade,
            ),
            SubtitleText(
              data:
              "Mobile Application Development",
              fontSize: 18,
              minFontSize: 12,
              maxLines: 1,
              softWrap: true,
              textAlign: TextAlign.end,
              textOverflow: TextOverflow.fade,
            ),
          ],
        ),
      ),
      RoundedCard(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            HeaderText(
              data:
              "New College Durham - BTEC Level 3 (Extended) Creative Media Diploma - September 2015-June 2016",
              fontSize: 30,
              minFontSize: 20,
              maxLines: 3,
              softWrap: true,
              textAlign: TextAlign.end,
              textOverflow: TextOverflow.fade,
            ),
            Gap(5),
            SubtitleText(
              data:
              "Visual Recording In Arts And Design",
              fontSize: 18,
              minFontSize: 12,
              maxLines: 1,
              softWrap: true,
              textAlign: TextAlign.end,
              textOverflow: TextOverflow.fade,
            ),
            SubtitleText(
              data:
              "Materials, Techniques And Processes In Art And Design",
              fontSize: 18,
              minFontSize: 12,
              maxLines: 1,
              softWrap: true,
              textAlign: TextAlign.end,
              textOverflow: TextOverflow.fade,
            ),
            SubtitleText(
              data:
              "Ideas And Concepts In Art And Design",
              fontSize: 18,
              minFontSize: 12,
              maxLines: 1,
              softWrap: true,
              textAlign: TextAlign.end,
              textOverflow: TextOverflow.fade,
            ),
            SubtitleText(
              data:
              "Communication Through Art And Design",
              fontSize: 18,
              minFontSize: 12,
              maxLines: 1,
              softWrap: true,
              textAlign: TextAlign.end,
              textOverflow: TextOverflow.fade,
            ),
            SubtitleText(
              data:
              "Contextual Influences In Art And Design",
              fontSize: 18,
              minFontSize: 12,
              maxLines: 1,
              softWrap: true,
              textAlign: TextAlign.end,
              textOverflow: TextOverflow.fade,
            ),
            SubtitleText(
              data:
              "Application, Exploration And Realisation In Art And Design",
              fontSize: 18,
              minFontSize: 12,
              maxLines: 1,
              softWrap: true,
              textAlign: TextAlign.end,
              textOverflow: TextOverflow.fade,
            ),
            SubtitleText(
              data:
              "Personal And Professional Development In Art And Design",
              fontSize: 18,
              minFontSize: 12,
              maxLines: 1,
              softWrap: true,
              textAlign: TextAlign.end,
              textOverflow: TextOverflow.fade,
            ),
            SubtitleText(
              data:
              "Freelance Work In Art And Design",
              fontSize: 18,
              minFontSize: 12,
              maxLines: 1,
              softWrap: true,
              textAlign: TextAlign.end,
              textOverflow: TextOverflow.fade,
            ),
            SubtitleText(
              data:
              "Computers In Art And Design",
              fontSize: 18,
              minFontSize: 12,
              maxLines: 1,
              softWrap: true,
              textAlign: TextAlign.end,
              textOverflow: TextOverflow.fade,
            ),
            SubtitleText(
              data:
              "Lens-Based Image Making",
              fontSize: 18,
              minFontSize: 12,
              maxLines: 1,
              softWrap: true,
              textAlign: TextAlign.end,
              textOverflow: TextOverflow.fade,
            ),
            SubtitleText(
              data:
              "Multi-Camera Techniques",
              fontSize: 18,
              minFontSize: 12,
              maxLines: 1,
              softWrap: true,
              textAlign: TextAlign.end,
              textOverflow: TextOverflow.fade,
            ),
            SubtitleText(
              data:
              "Music-Based Programming",
              fontSize: 18,
              minFontSize: 12,
              maxLines: 1,
              softWrap: true,
              textAlign: TextAlign.end,
              textOverflow: TextOverflow.fade,
            ),
            SubtitleText(
              data:
              "Digital Storytelling",
              fontSize: 18,
              minFontSize: 12,
              maxLines: 1,
              softWrap: true,
              textAlign: TextAlign.end,
              textOverflow: TextOverflow.fade,
            ),
            SubtitleText(
              data:
              "Narrative Image Making",
              fontSize: 18,
              minFontSize: 12,
              maxLines: 1,
              softWrap: true,
              textAlign: TextAlign.end,
              textOverflow: TextOverflow.fade,
            ),
            SubtitleText(
              data:
              "Film And Video Editing Techniques",
              fontSize: 18,
              minFontSize: 12,
              maxLines: 1,
              softWrap: true,
              textAlign: TextAlign.end,
              textOverflow: TextOverflow.fade,
            ),
            SubtitleText(
              data:
              "Single Camera Techniques",
              fontSize: 18,
              minFontSize: 12,
              maxLines: 1,
              softWrap: true,
              textAlign: TextAlign.end,
              textOverflow: TextOverflow.fade,
            ),
            SubtitleText(
              data:
              "Digital Video Production For Interactive Media",
              fontSize: 18,
              minFontSize: 12,
              maxLines: 1,
              softWrap: true,
              textAlign: TextAlign.end,
              textOverflow: TextOverflow.fade,
            ),
          ],
        ),
      ),
      RoundedCard(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            HeaderText(
              data:
              "New College Durham - BTEC Level 3 (Subsidiary) Creative Media Diploma - September 2014-July 2015",
              fontSize: 30,
              minFontSize: 20,
              maxLines: 3,
              softWrap: true,
              textAlign: TextAlign.end,
              textOverflow: TextOverflow.fade,
            ),
            Gap(5),
            SubtitleText(
              data:
              "Visual Recording In Art And Design",
              fontSize: 18,
              minFontSize: 12,
              maxLines: 1,
              softWrap: true,
              textAlign: TextAlign.end,
              textOverflow: TextOverflow.fade,
            ),
            SubtitleText(
              data:
              "Materials, Techniques And Processes In Art And Design",
              fontSize: 18,
              minFontSize: 12,
              maxLines: 1,
              softWrap: true,
              textAlign: TextAlign.end,
              textOverflow: TextOverflow.fade,
            ),
            SubtitleText(
              data:
              "Ideas And Concepts In Art And Design",
              fontSize: 18,
              minFontSize: 12,
              maxLines: 1,
              softWrap: true,
              textAlign: TextAlign.end,
              textOverflow: TextOverflow.fade,
            ),
            SubtitleText(
              data:
              "Communication Through Art And Design",
              fontSize: 18,
              minFontSize: 12,
              maxLines: 1,
              softWrap: true,
              textAlign: TextAlign.end,
              textOverflow: TextOverflow.fade,
            ),
            SubtitleText(
              data:
              "Multi-Camera Techniques",
              fontSize: 18,
              minFontSize: 12,
              maxLines: 1,
              softWrap: true,
              textAlign: TextAlign.end,
              textOverflow: TextOverflow.fade,
            ),
            SubtitleText(
              data:
              "Digital Video Production For Interactive Media",
              fontSize: 18,
              minFontSize: 12,
              maxLines: 1,
              softWrap: true,
              textAlign: TextAlign.end,
              textOverflow: TextOverflow.fade,
            ),
          ],
        ),
      ),
      RoundedCard(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            HeaderText(
              data:
              "New College Durham - BTEC Level 2 Creative Media Diploma - September 2013-June 2014",
              fontSize: 30,
              minFontSize: 20,
              maxLines: 3,
              softWrap: true,
              textAlign: TextAlign.end,
              textOverflow: TextOverflow.fade,
            ),
            Gap(5),
            SubtitleText(
              data:
              "Research For Creative Media Production",
              fontSize: 18,
              minFontSize: 12,
              maxLines: 1,
              softWrap: true,
              textAlign: TextAlign.end,
              textOverflow: TextOverflow.fade,
            ),
            SubtitleText(
              data:
              "Communication Techniques For Creative Media Production",
              fontSize: 18,
              minFontSize: 12,
              maxLines: 1,
              softWrap: true,
              textAlign: TextAlign.end,
              textOverflow: TextOverflow.fade,
            ),
            SubtitleText(
              data:
              "The Creative Media Sector",
              fontSize: 18,
              minFontSize: 12,
              maxLines: 1,
              softWrap: true,
              textAlign: TextAlign.end,
              textOverflow: TextOverflow.fade,
            ),
            SubtitleText(
              data:
              "Media Audiences And Products",
              fontSize: 18,
              minFontSize: 12,
              maxLines: 1,
              softWrap: true,
              textAlign: TextAlign.end,
              textOverflow: TextOverflow.fade,
            ),
            SubtitleText(
              data:
              "Video Production",
              fontSize: 18,
              minFontSize: 12,
              maxLines: 1,
              softWrap: true,
              textAlign: TextAlign.end,
              textOverflow: TextOverflow.fade,
            ),
            SubtitleText(
              data:
              "Photography Techniques",
              fontSize: 18,
              minFontSize: 12,
              maxLines: 1,
              softWrap: true,
              textAlign: TextAlign.end,
              textOverflow: TextOverflow.fade,
            ),
            SubtitleText(
              data:
              "Factual Production For The Creative Media",
              fontSize: 18,
              minFontSize: 12,
              maxLines: 1,
              softWrap: true,
              textAlign: TextAlign.end,
              textOverflow: TextOverflow.fade,
            ),
            SubtitleText(
              data:
              "Creative Media Production Project",
              fontSize: 18,
              minFontSize: 12,
              maxLines: 1,
              softWrap: true,
              textAlign: TextAlign.end,
              textOverflow: TextOverflow.fade,
            ),
          ],
        ),
      ),
      RoundedCard(
        child: HeaderText(
          data:
          "Entry Level Japanese - Short Course - October 2013-March 2014",
          fontSize: 30,
          minFontSize: 20,
          maxLines: 3,
          softWrap: true,
          textAlign: TextAlign.end,
          textOverflow: TextOverflow.fade,
        ),
      ),
      RoundedCard(
        child: HeaderText(
          data:
          "GCSE English Literature - September 2013-June 2014",
          fontSize: 30,
          minFontSize: 20,
          maxLines: 3,
          softWrap: true,
          textAlign: TextAlign.end,
          textOverflow: TextOverflow.fade,
        ),
      ),
      RoundedCard(
        child: HeaderText(
          data:
          "GCSE Mathematics - January 2013-March 2013",
          fontSize: 30,
          minFontSize: 20,
          maxLines: 3,
          softWrap: true,
          textAlign: TextAlign.end,
          textOverflow: TextOverflow.fade,
        ),
      ),
      Gap(5),
    ],
    addAutomaticKeepAlives: false,
    addRepaintBoundaries: false,
  );
}

SliverQuiltedGridDelegate buildSliverLandscapeGridDelegate() {
  return SliverQuiltedGridDelegate(
    crossAxisCount: 64,
    pattern: [
      QuiltedGridTile(4, 64),
      QuiltedGridTile(4, 64),
      QuiltedGridTile(20, 32),
      QuiltedGridTile(20, 32),
      QuiltedGridTile(4, 64),
      QuiltedGridTile(16, 32),
      QuiltedGridTile(16, 32),
      QuiltedGridTile(16, 32),
      QuiltedGridTile(16, 32),
      QuiltedGridTile(20, 64),
      QuiltedGridTile(26, 64),
      QuiltedGridTile(16, 64),
      QuiltedGridTile(16, 64),
      QuiltedGridTile(4, 64),
      QuiltedGridTile(4, 64),
      QuiltedGridTile(4, 64),
      QuiltedGridTile(6, 64),
    ],
  );
}

SliverQuiltedGridDelegate buildSliverPortraitGridDelegate() {
  return SliverQuiltedGridDelegate(
    crossAxisCount: 64,
    pattern: [
      QuiltedGridTile(12, 64),
      QuiltedGridTile(12, 64),
      QuiltedGridTile(20, 64),
      QuiltedGridTile(60, 64),
      QuiltedGridTile(12, 64),
      QuiltedGridTile(20, 64),
      QuiltedGridTile(50, 64),
      QuiltedGridTile(20, 64),
      QuiltedGridTile(50, 64),
      QuiltedGridTile(60, 64),
      QuiltedGridTile(80, 64),
      QuiltedGridTile(40, 64),
      QuiltedGridTile(50, 64),
      QuiltedGridTile(20, 64),
      QuiltedGridTile(20, 64),
      QuiltedGridTile(20, 64),
      QuiltedGridTile(14, 64),
    ],
  );
}
