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
        child: Row(
          children: [
            RoundedCard(
              child: Placeholder(fallbackHeight: 300, fallbackWidth: 100),
            ),
            Gap(10),
            Column(
              children: [
                HeaderText(
                  data: "Teesside University - MSc. Computer Science - January 2022-June 2023",
                  fontSize: 30,
                  minFontSize: 20,
                  maxLines: 3,
                  softWrap: true,
                  textAlign: TextAlign.end,
                  textOverflow: TextOverflow.fade,
                ),
                Gap(10),
                SubtitleText(
                  data: "Computer Masters Project - 90",
                  fontSize: 18,
                  minFontSize: 14,
                  maxLines: 1,
                  softWrap: true,
                  textAlign: TextAlign.end,
                  textOverflow: TextOverflow.fade,
                ),
                SubtitleText(
                  data: "Big Data and Business Intelligence - 74",
                  fontSize: 18,
                  minFontSize: 14,
                  maxLines: 1,
                  softWrap: true,
                  textAlign: TextAlign.end,
                  textOverflow: TextOverflow.fade,
                ),
                SubtitleText(
                  data: "Mobile Application Development - 85",
                  fontSize: 18,
                  minFontSize: 14,
                  maxLines: 1,
                  softWrap: true,
                  textAlign: TextAlign.end,
                  textOverflow: TextOverflow.fade,
                ),
                SubtitleText(
                  data: "Artificial Intelligence Foundations - 87",
                  fontSize: 18,
                  minFontSize: 14,
                  maxLines: 1,
                  softWrap: true,
                  textAlign: TextAlign.end,
                  textOverflow: TextOverflow.fade,
                ),
                SubtitleText(
                  data: "Object-Oriented Programming - 71",
                  fontSize: 18,
                  minFontSize: 14,
                  maxLines: 1,
                  softWrap: true,
                  textAlign: TextAlign.end,
                  textOverflow: TextOverflow.fade,
                ),
                SubtitleText(
                  data: "Machine Learning - 86",
                  fontSize: 18,
                  minFontSize: 14,
                  maxLines: 1,
                  softWrap: true,
                  textAlign: TextAlign.end,
                  textOverflow: TextOverflow.fade,
                ),
                SubtitleText(
                  data: "Research Methods - 75",
                  fontSize: 18,
                  minFontSize: 14,
                  maxLines: 1,
                  softWrap: true,
                  textAlign: TextAlign.end,
                  textOverflow: TextOverflow.fade,
                ),
              ],
            ),
          ],
        ),
      ),
      RoundedCard(
        child: Row(
          children: [
            RoundedCard(
              child: Placeholder(fallbackHeight: 300, fallbackWidth: 100),
            ),
            Gap(10),
            Column(
              children: [
                HeaderText(
                  data: "New College Durham - BSc. Business Computing (Honours) - September 2018-July 2019",
                  fontSize: 30,
                  minFontSize: 20,
                  maxLines: 3,
                  softWrap: true,
                  textAlign: TextAlign.end,
                  textOverflow: TextOverflow.fade,
                ),
                Gap(10),
                SubtitleText(
                  data: "Computer Masters Project - 90",
                  fontSize: 18,
                  minFontSize: 14,
                  maxLines: 1,
                  softWrap: true,
                  textAlign: TextAlign.end,
                  textOverflow: TextOverflow.fade,
                ),
                SubtitleText(
                  data: "Big Data and Business Intelligence - 74",
                  fontSize: 18,
                  minFontSize: 14,
                  maxLines: 1,
                  softWrap: true,
                  textAlign: TextAlign.end,
                  textOverflow: TextOverflow.fade,
                ),
                SubtitleText(
                  data: "Mobile Application Development - 85",
                  fontSize: 18,
                  minFontSize: 14,
                  maxLines: 1,
                  softWrap: true,
                  textAlign: TextAlign.end,
                  textOverflow: TextOverflow.fade,
                ),
                SubtitleText(
                  data: "Artificial Intelligence Foundations - 87",
                  fontSize: 18,
                  minFontSize: 14,
                  maxLines: 1,
                  softWrap: true,
                  textAlign: TextAlign.end,
                  textOverflow: TextOverflow.fade,
                ),
                SubtitleText(
                  data: "Object-Oriented Programming - 71",
                  fontSize: 18,
                  minFontSize: 14,
                  maxLines: 1,
                  softWrap: true,
                  textAlign: TextAlign.end,
                  textOverflow: TextOverflow.fade,
                ),
                SubtitleText(
                  data: "Machine Learning - 86",
                  fontSize: 18,
                  minFontSize: 14,
                  maxLines: 1,
                  softWrap: true,
                  textAlign: TextAlign.end,
                  textOverflow: TextOverflow.fade,
                ),
                SubtitleText(
                  data: "Research Methods - 75",
                  fontSize: 18,
                  minFontSize: 14,
                  maxLines: 1,
                  softWrap: true,
                  textAlign: TextAlign.end,
                  textOverflow: TextOverflow.fade,
                ),
              ],
            ),
          ],
        ),
      ),
      RoundedCard(
        child: Row(
          children: [
            RoundedCard(
              child: Placeholder(fallbackHeight: 300, fallbackWidth: 100),
            ),
            Gap(10),
            Column(
              children: [
                HeaderText(
                  data: "New College Durham - FdSc. (Foundation Degree) Applied Business Computing - September 2016-July 2018",
                  fontSize: 30,
                  minFontSize: 20,
                  maxLines: 3,
                  softWrap: true,
                  textAlign: TextAlign.end,
                  textOverflow: TextOverflow.fade,
                ),
                Gap(10),
                SubtitleText(
                  data: "Computer Masters Project - 90",
                  fontSize: 18,
                  minFontSize: 14,
                  maxLines: 1,
                  softWrap: true,
                  textAlign: TextAlign.end,
                  textOverflow: TextOverflow.fade,
                ),
                SubtitleText(
                  data: "Big Data and Business Intelligence - 74",
                  fontSize: 18,
                  minFontSize: 14,
                  maxLines: 1,
                  softWrap: true,
                  textAlign: TextAlign.end,
                  textOverflow: TextOverflow.fade,
                ),
                SubtitleText(
                  data: "Mobile Application Development - 85",
                  fontSize: 18,
                  minFontSize: 14,
                  maxLines: 1,
                  softWrap: true,
                  textAlign: TextAlign.end,
                  textOverflow: TextOverflow.fade,
                ),
                SubtitleText(
                  data: "Artificial Intelligence Foundations - 87",
                  fontSize: 18,
                  minFontSize: 14,
                  maxLines: 1,
                  softWrap: true,
                  textAlign: TextAlign.end,
                  textOverflow: TextOverflow.fade,
                ),
                SubtitleText(
                  data: "Object-Oriented Programming - 71",
                  fontSize: 18,
                  minFontSize: 14,
                  maxLines: 1,
                  softWrap: true,
                  textAlign: TextAlign.end,
                  textOverflow: TextOverflow.fade,
                ),
                SubtitleText(
                  data: "Machine Learning - 86",
                  fontSize: 18,
                  minFontSize: 14,
                  maxLines: 1,
                  softWrap: true,
                  textAlign: TextAlign.end,
                  textOverflow: TextOverflow.fade,
                ),
                SubtitleText(
                  data: "Research Methods - 75",
                  fontSize: 18,
                  minFontSize: 14,
                  maxLines: 1,
                  softWrap: true,
                  textAlign: TextAlign.end,
                  textOverflow: TextOverflow.fade,
                ),
              ],
            ),
          ],
        ),
      ),
      RoundedCard(
        child: Row(
          children: [
            RoundedCard(
              child: Placeholder(fallbackHeight: 300, fallbackWidth: 100),
            ),
            Gap(10),
            Column(
              children: [
                HeaderText(
                  data: "New College Durham - BTEC Level 3 (Extended) Creative Media Diploma - September 2015-June 2016",
                  fontSize: 30,
                  minFontSize: 20,
                  maxLines: 3,
                  softWrap: true,
                  textAlign: TextAlign.end,
                  textOverflow: TextOverflow.fade,
                ),
                Gap(10),
                SubtitleText(
                  data: "Computer Masters Project - 90",
                  fontSize: 18,
                  minFontSize: 14,
                  maxLines: 1,
                  softWrap: true,
                  textAlign: TextAlign.end,
                  textOverflow: TextOverflow.fade,
                ),
                SubtitleText(
                  data: "Big Data and Business Intelligence - 74",
                  fontSize: 18,
                  minFontSize: 14,
                  maxLines: 1,
                  softWrap: true,
                  textAlign: TextAlign.end,
                  textOverflow: TextOverflow.fade,
                ),
                SubtitleText(
                  data: "Mobile Application Development - 85",
                  fontSize: 18,
                  minFontSize: 14,
                  maxLines: 1,
                  softWrap: true,
                  textAlign: TextAlign.end,
                  textOverflow: TextOverflow.fade,
                ),
                SubtitleText(
                  data: "Artificial Intelligence Foundations - 87",
                  fontSize: 18,
                  minFontSize: 14,
                  maxLines: 1,
                  softWrap: true,
                  textAlign: TextAlign.end,
                  textOverflow: TextOverflow.fade,
                ),
                SubtitleText(
                  data: "Object-Oriented Programming - 71",
                  fontSize: 18,
                  minFontSize: 14,
                  maxLines: 1,
                  softWrap: true,
                  textAlign: TextAlign.end,
                  textOverflow: TextOverflow.fade,
                ),
                SubtitleText(
                  data: "Machine Learning - 86",
                  fontSize: 18,
                  minFontSize: 14,
                  maxLines: 1,
                  softWrap: true,
                  textAlign: TextAlign.end,
                  textOverflow: TextOverflow.fade,
                ),
                SubtitleText(
                  data: "Research Methods - 75",
                  fontSize: 18,
                  minFontSize: 14,
                  maxLines: 1,
                  softWrap: true,
                  textAlign: TextAlign.end,
                  textOverflow: TextOverflow.fade,
                ),
              ],
            ),
          ],
        ),
      ),
      RoundedCard(
        child: Row(
          children: [
            RoundedCard(
              child: Placeholder(fallbackHeight: 300, fallbackWidth: 100),
            ),
            Gap(10),
            Column(
              children: [
                HeaderText(
                  data: "New College Durham - BTEC Level 3 (Subsidiary) Creative Media Diploma - September 2014-June 2015",
                  fontSize: 30,
                  minFontSize: 20,
                  maxLines: 3,
                  softWrap: true,
                  textAlign: TextAlign.end,
                  textOverflow: TextOverflow.fade,
                ),
                Gap(10),
                SubtitleText(
                  data: "Computer Masters Project - 90",
                  fontSize: 18,
                  minFontSize: 14,
                  maxLines: 1,
                  softWrap: true,
                  textAlign: TextAlign.end,
                  textOverflow: TextOverflow.fade,
                ),
                SubtitleText(
                  data: "Big Data and Business Intelligence - 74",
                  fontSize: 18,
                  minFontSize: 14,
                  maxLines: 1,
                  softWrap: true,
                  textAlign: TextAlign.end,
                  textOverflow: TextOverflow.fade,
                ),
                SubtitleText(
                  data: "Mobile Application Development - 85",
                  fontSize: 18,
                  minFontSize: 14,
                  maxLines: 1,
                  softWrap: true,
                  textAlign: TextAlign.end,
                  textOverflow: TextOverflow.fade,
                ),
                SubtitleText(
                  data: "Artificial Intelligence Foundations - 87",
                  fontSize: 18,
                  minFontSize: 14,
                  maxLines: 1,
                  softWrap: true,
                  textAlign: TextAlign.end,
                  textOverflow: TextOverflow.fade,
                ),
                SubtitleText(
                  data: "Object-Oriented Programming - 71",
                  fontSize: 18,
                  minFontSize: 14,
                  maxLines: 1,
                  softWrap: true,
                  textAlign: TextAlign.end,
                  textOverflow: TextOverflow.fade,
                ),
                SubtitleText(
                  data: "Machine Learning - 86",
                  fontSize: 18,
                  minFontSize: 14,
                  maxLines: 1,
                  softWrap: true,
                  textAlign: TextAlign.end,
                  textOverflow: TextOverflow.fade,
                ),
                SubtitleText(
                  data: "Research Methods - 75",
                  fontSize: 18,
                  minFontSize: 14,
                  maxLines: 1,
                  softWrap: true,
                  textAlign: TextAlign.end,
                  textOverflow: TextOverflow.fade,
                ),
              ],
            ),
          ],
        ),
      ),
      RoundedCard(
        child: Row(
          children: [
            RoundedCard(
              child: Placeholder(fallbackHeight: 300, fallbackWidth: 300),
            ),
            Gap(10),
            Column(
              children: [
                HeaderText(
                  data: "New College Durham - BTEC Level 2 Creative Media Diploma - September 2013-June 2014",
                  fontSize: 30,
                  minFontSize: 20,
                  maxLines: 3,
                  softWrap: true,
                  textAlign: TextAlign.end,
                  textOverflow: TextOverflow.fade,
                ),
                Gap(10),
                SubtitleText(
                  data: "Computer Masters Project - 90",
                  fontSize: 18,
                  minFontSize: 14,
                  maxLines: 1,
                  softWrap: true,
                  textAlign: TextAlign.end,
                  textOverflow: TextOverflow.fade,
                ),
                SubtitleText(
                  data: "Big Data and Business Intelligence - 74",
                  fontSize: 18,
                  minFontSize: 14,
                  maxLines: 1,
                  softWrap: true,
                  textAlign: TextAlign.end,
                  textOverflow: TextOverflow.fade,
                ),
                SubtitleText(
                  data: "Mobile Application Development - 85",
                  fontSize: 18,
                  minFontSize: 14,
                  maxLines: 1,
                  softWrap: true,
                  textAlign: TextAlign.end,
                  textOverflow: TextOverflow.fade,
                ),
                SubtitleText(
                  data: "Artificial Intelligence Foundations - 87",
                  fontSize: 18,
                  minFontSize: 14,
                  maxLines: 1,
                  softWrap: true,
                  textAlign: TextAlign.end,
                  textOverflow: TextOverflow.fade,
                ),
                SubtitleText(
                  data: "Object-Oriented Programming - 71",
                  fontSize: 18,
                  minFontSize: 14,
                  maxLines: 1,
                  softWrap: true,
                  textAlign: TextAlign.end,
                  textOverflow: TextOverflow.fade,
                ),
                SubtitleText(
                  data: "Machine Learning - 86",
                  fontSize: 18,
                  minFontSize: 14,
                  maxLines: 1,
                  softWrap: true,
                  textAlign: TextAlign.end,
                  textOverflow: TextOverflow.fade,
                ),
                SubtitleText(
                  data: "Research Methods - 75",
                  fontSize: 18,
                  minFontSize: 14,
                  maxLines: 1,
                  softWrap: true,
                  textAlign: TextAlign.end,
                  textOverflow: TextOverflow.fade,
                ),
              ],
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
      QuiltedGridTile(16, 32),
      QuiltedGridTile(16, 32),
      QuiltedGridTile(16, 32),
      QuiltedGridTile(16, 32),
      QuiltedGridTile(16, 32),
      QuiltedGridTile(16, 32),
      QuiltedGridTile(16, 32),
      QuiltedGridTile(16, 32),
    ],
  );
}

SliverQuiltedGridDelegate buildSliverLandscapeGridDelegate() {
  return SliverQuiltedGridDelegate(
    repeatPattern: QuiltedGridRepeatPattern.same,
    crossAxisCount: 32,
    pattern: [
      QuiltedGridTile(2, 32),
      QuiltedGridTile(16, 32),
      QuiltedGridTile(16, 32),
      QuiltedGridTile(16, 32),
      QuiltedGridTile(16, 32),
      QuiltedGridTile(16, 32),
      QuiltedGridTile(16, 32),
      QuiltedGridTile(16, 32),
      QuiltedGridTile(16, 32),
    ],
  );
}
