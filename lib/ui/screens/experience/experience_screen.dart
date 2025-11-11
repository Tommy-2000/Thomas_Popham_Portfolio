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
              maxLines: 9,
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            HeaderText(
              data:
              "New College Durham - BTEC Level 3 (Subsidiary) Creative Media Diploma - September 2014-June 2015",
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
      QuiltedGridTile(16, 32),
      QuiltedGridTile(16, 32),
      QuiltedGridTile(4, 64),
      QuiltedGridTile(16, 32),
      QuiltedGridTile(16, 32),
      QuiltedGridTile(16, 32),
      QuiltedGridTile(16, 32),
      QuiltedGridTile(16, 64),
      QuiltedGridTile(16, 64),
      QuiltedGridTile(16, 64),
      QuiltedGridTile(16, 64),
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
      QuiltedGridTile(20, 64),
      QuiltedGridTile(12, 64),
      QuiltedGridTile(20, 64),
      QuiltedGridTile(20, 64),
      QuiltedGridTile(20, 64),
      QuiltedGridTile(20, 64),
      QuiltedGridTile(20, 64),
      QuiltedGridTile(20, 64),
      QuiltedGridTile(20, 64),
      QuiltedGridTile(20, 64),
      QuiltedGridTile(20, 64),
      QuiltedGridTile(20, 64),
      QuiltedGridTile(20, 64),
      QuiltedGridTile(20, 64),
      QuiltedGridTile(20, 64),
      QuiltedGridTile(20, 64),
      QuiltedGridTile(20, 64),
      QuiltedGridTile(20, 64),
      QuiltedGridTile(14, 64),
    ],
  );
}
