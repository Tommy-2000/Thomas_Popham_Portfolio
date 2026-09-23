import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:gap/gap.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:thomas_popham_portfolio/constants/hero_strings.dart'
    as heroStrings;
import 'package:thomas_popham_portfolio/constants/project_strings.dart'
    as projectStrings;
import 'package:thomas_popham_portfolio/logic/utils/uri_utils.dart';
import 'package:thomas_popham_portfolio/ui/screens/projects/project_hero_card.dart';
import 'package:thomas_popham_portfolio/ui/screens/projects/project_hero_window.dart';
import '../../common/stateless_rounded_card.dart';
import '../../common/title_text.dart';

class ProjectsScreen extends StatefulWidget {
  const ProjectsScreen({super.key});

  @override
  State<ProjectsScreen> createState() => _ProjectsScreenState();
}

class _ProjectsScreenState extends State<ProjectsScreen> {
  late ScrollController _projectsScrollController;
  late bool landscapeWindow = false;

  @override
  void initState() {
    super.initState();
    _projectsScrollController = ScrollController();
  }

  @override
  void dispose() {
    super.dispose();
    _projectsScrollController.dispose();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // Rerender the UI if the width from MediaQuery is greater than 900
    final double windowWidth = MediaQuery.of(context).size.width;
    landscapeWindow = windowWidth > 900;
  }

  @override
  Widget build(BuildContext context) {
    final colourScheme = Theme.of(context).colorScheme;
    return CustomScrollView(
      controller: _projectsScrollController,
      physics: const BouncingScrollPhysics(),
      slivers: <Widget>[
        SliverGrid(
          gridDelegate: landscapeWindow
              ? buildSliverLandscapeGridDelegate()
              : buildSliverPortraitGridDelegate(),
          delegate: buildSliverChildListDelegate(
            landscapeWindow,
            colourScheme,
            context,
          ),
        ),
      ],
    );
  }
}

SliverChildListDelegate buildSliverChildListDelegate(
  bool landscapeWindow,
  ColorScheme colourScheme,
  BuildContext context,
) {
  return SliverChildListDelegate(
    <Widget>[
      StatelessRoundedCard(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              TitleText(
                data: projectStrings.projectString_Title,
                fontSize: 40,
                minFontSize: 20,
                maxLines: 1,
                softWrap: true,
                textAlign: TextAlign.center,
                textOverflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ),
      renderProjectCard(
        context: context,
        projectHeroTag: heroStrings.projectHeroTag1,
        projectHeader: projectStrings.projectString_73,
        projectChipTopRow: [
          Chip(
            label: const Text(projectStrings.projectString_74),
            labelStyle: TextStyle(color: colourScheme.primary),
            side: BorderSide(color: colourScheme.primary),
          ),
          Chip(
            label: const Text(projectStrings.projectString_75),
            labelStyle: TextStyle(color: colourScheme.primary),
            side: BorderSide(color: colourScheme.primary),
          ),
          Chip(
            label: const Text(projectStrings.projectString_76),
            labelStyle: TextStyle(color: colourScheme.primary),
            side: BorderSide(color: colourScheme.primary),
          ),
        ],
        projectChipBottomRow: [
          Chip(
            label: const Text(projectStrings.projectString_77),
            labelStyle: TextStyle(color: colourScheme.primary),
            side: BorderSide(color: colourScheme.primary),
          ),
          Chip(
            label: const Text(projectStrings.projectString_78),
            labelStyle: TextStyle(color: colourScheme.primary),
            side: BorderSide(color: colourScheme.primary),
          ),
        ],
        projectDescription: projectStrings.projectString_79,
      ),
      renderProjectCard(
        context: context,
        projectHeroTag: heroStrings.projectHeroTag2,
        projectHeader: projectStrings.projectString_66,
        projectChipTopRow: [
          Chip(
            label: const Text(projectStrings.projectString_67),
            labelStyle: TextStyle(color: colourScheme.primary),
            side: BorderSide(color: colourScheme.primary),
          ),
          Chip(
            label: const Text(projectStrings.projectString_68),
            labelStyle: TextStyle(color: colourScheme.primary),
            side: BorderSide(color: colourScheme.primary),
          ),
          Chip(
            label: const Text(projectStrings.projectString_69),
            labelStyle: TextStyle(color: colourScheme.primary),
            side: BorderSide(color: colourScheme.primary),
          ),
        ],
        projectChipBottomRow: [
          Chip(
            label: const Text(projectStrings.projectString_70),
            labelStyle: TextStyle(color: colourScheme.primary),
            side: BorderSide(color: colourScheme.primary),
          ),
          Chip(
            label: const Text(projectStrings.projectString_71),
            labelStyle: TextStyle(color: colourScheme.primary),
            side: BorderSide(color: colourScheme.primary),
          ),
        ],
        projectDescription: projectStrings.projectString_72,
        projectIconButton: IconButton(
          onPressed: () => UriUtils().launchEmmaGotoVideo(),
          icon: HugeIcon(
            icon: HugeIcons.strokeRoundedYoutube,
            color: colourScheme.primary,
          ),
        ),
      ),
      renderProjectCard(
        context: context,
        projectHeroTag: heroStrings.projectHeroTag3,
        projectHeader: projectStrings.projectString_60,
        projectChipTopRow: [
          Chip(
            label: const Text(projectStrings.projectString_61),
            labelStyle: TextStyle(color: colourScheme.primary),
            side: BorderSide(color: colourScheme.primary),
          ),
          Chip(
            label: const Text(projectStrings.projectString_62),
            labelStyle: TextStyle(color: colourScheme.primary),
            side: BorderSide(color: colourScheme.primary),
          ),
          Chip(
            label: const Text(projectStrings.projectString_63),
            labelStyle: TextStyle(color: colourScheme.primary),
            side: BorderSide(color: colourScheme.primary),
          ),
        ],
        projectChipBottomRow: [
          Chip(
            label: const Text(projectStrings.projectString_64),
            labelStyle: TextStyle(color: colourScheme.primary),
            side: BorderSide(color: colourScheme.primary),
          ),
        ],
        projectDescription: projectStrings.projectString_65,
      ),
      renderProjectCard(
        context: context,
        projectHeroTag: heroStrings.projectHeroTag4,
        projectHeader: projectStrings.projectString_1,
        projectChipTopRow: [
          Chip(
            label: const Text(projectStrings.projectString_2),
            labelStyle: TextStyle(color: colourScheme.primary),
            side: BorderSide(color: colourScheme.primary),
          ),
          Chip(
            label: const Text(projectStrings.projectString_3),
            labelStyle: TextStyle(color: colourScheme.primary),
            side: BorderSide(color: colourScheme.primary),
          ),
          Chip(
            label: const Text(projectStrings.projectString_4),
            labelStyle: TextStyle(color: colourScheme.primary),
            side: BorderSide(color: colourScheme.primary),
          ),
          Chip(
            label: const Text(projectStrings.projectString_5),
            labelStyle: TextStyle(color: colourScheme.primary),
            side: BorderSide(color: colourScheme.primary),
          ),
        ],
        projectChipBottomRow: [
          Chip(
            label: const Text(projectStrings.projectString_6),
            labelStyle: TextStyle(color: colourScheme.primary),
            side: BorderSide(color: colourScheme.primary),
          ),
          Chip(
            label: const Text(projectStrings.projectString_7),
            labelStyle: TextStyle(color: colourScheme.primary),
            side: BorderSide(color: colourScheme.primary),
          ),
          Chip(
            label: const Text(projectStrings.projectString_8),
            labelStyle: TextStyle(color: colourScheme.primary),
            side: BorderSide(color: colourScheme.primary),
          ),
          Chip(
            label: const Text(projectStrings.projectString_9),
            labelStyle: TextStyle(color: colourScheme.primary),
            side: BorderSide(color: colourScheme.primary),
          ),
        ],
        projectDescription: projectStrings.projectString_10,
        projectIconButton: IconButton(
          onPressed: () => UriUtils().launchDreamStudyProject(),
          icon: HugeIcon(
            icon: HugeIcons.strokeRoundedGithub,
            color: colourScheme.primary,
          ),
        ),
      ),
      renderProjectCard(
        context: context,
        projectHeroTag: heroStrings.projectHeroTag5,
        projectImage: StatelessRoundedCard(
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image.asset(
                projectStrings.projectString_11,
                height: landscapeWindow ? 300 : 200,
                width: landscapeWindow ? 600 : 500,
                fit: BoxFit.scaleDown,
                filterQuality: landscapeWindow
                    ? FilterQuality.high
                    : FilterQuality.low,
              ),
            ),
          ),
        ),
        projectHeader: projectStrings.projectString_12,
        projectChipTopRow: [
          Chip(
            label: const Text(projectStrings.projectString_13),
            labelStyle: TextStyle(color: colourScheme.primary),
            side: BorderSide(color: colourScheme.primary),
          ),
          Chip(
            label: const Text(projectStrings.projectString_14),
            labelStyle: TextStyle(color: colourScheme.primary),
            side: BorderSide(color: colourScheme.primary),
          ),
          Chip(
            label: const Text(projectStrings.projectString_15),
            labelStyle: TextStyle(color: colourScheme.primary),
            side: BorderSide(color: colourScheme.primary),
          ),
        ],
        projectChipBottomRow: [
          Chip(
            label: const Text(projectStrings.projectString_16),
            labelStyle: TextStyle(color: colourScheme.primary),
            side: BorderSide(color: colourScheme.primary),
          ),
          Chip(
            label: const Text(projectStrings.projectString_17),
            labelStyle: TextStyle(color: colourScheme.primary),
            side: BorderSide(color: colourScheme.primary),
          ),
          Chip(
            label: const Text(projectStrings.projectString_18),
            labelStyle: TextStyle(color: colourScheme.primary),
            side: BorderSide(color: colourScheme.primary),
          ),
        ],
        projectDescription: projectStrings.projectString_19,
        projectIconButton: IconButton(
          onPressed: () => UriUtils().launchDreamTravelProject(),
          icon: HugeIcon(
            icon: HugeIcons.strokeRoundedGithub,
            color: colourScheme.primary,
          ),
        ),
      ),
      renderProjectCard(
        context: context,
        projectHeroTag: heroStrings.projectHeroTag6,
        projectImage: StatelessRoundedCard(
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image.asset(
                projectStrings.projectString_20,
                height: landscapeWindow ? 300 : 200,
                width: landscapeWindow ? 600 : 500,
                fit: BoxFit.scaleDown,
                filterQuality: landscapeWindow
                    ? FilterQuality.high
                    : FilterQuality.low,
              ),
            ),
          ),
        ),
        projectHeader: projectStrings.projectString_21,
        projectChipTopRow: [
          Chip(
            label: const Text(projectStrings.projectString_22),
            labelStyle: TextStyle(color: colourScheme.primary),
            side: BorderSide(color: colourScheme.primary),
          ),
          Chip(
            label: const Text(projectStrings.projectString_23),
            labelStyle: TextStyle(color: colourScheme.primary),
            side: BorderSide(color: colourScheme.primary),
          ),
          Chip(
            label: const Text(projectStrings.projectString_24),
            labelStyle: TextStyle(color: colourScheme.primary),
            side: BorderSide(color: colourScheme.primary),
          ),
        ],
        projectChipBottomRow: [
          Chip(
            label: const Text(projectStrings.projectString_25),
            labelStyle: TextStyle(color: colourScheme.primary),
            side: BorderSide(color: colourScheme.primary),
          ),
          Chip(
            label: const Text(projectStrings.projectString_26),
            labelStyle: TextStyle(color: colourScheme.primary),
            side: BorderSide(color: colourScheme.primary),
          ),
        ],
        projectDescription: projectStrings.projectString_27,
      ),
      renderProjectCard(
        context: context,
        projectHeroTag: heroStrings.projectHeroTag7,
        projectImage: StatelessRoundedCard(
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image.asset(
                projectStrings.projectString_28,
                height: landscapeWindow ? 300 : 200,
                width: landscapeWindow ? 600 : 500,
                fit: BoxFit.scaleDown,
                filterQuality: landscapeWindow
                    ? FilterQuality.high
                    : FilterQuality.low,
              ),
            ),
          ),
        ),
        projectHeader: projectStrings.projectString_29,
        projectChipTopRow: [
          Chip(
            label: const Text(projectStrings.projectString_30),
            labelStyle: TextStyle(color: colourScheme.primary),
            side: BorderSide(color: colourScheme.primary),
          ),
          Chip(
            label: const Text(projectStrings.projectString_31),
            labelStyle: TextStyle(color: colourScheme.primary),
            side: BorderSide(color: colourScheme.primary),
          ),
          Chip(
            label: const Text(projectStrings.projectString_32),
            labelStyle: TextStyle(color: colourScheme.primary),
            side: BorderSide(color: colourScheme.primary),
          ),
          Chip(
            label: const Text(projectStrings.projectString_33),
            labelStyle: TextStyle(color: colourScheme.primary),
            side: BorderSide(color: colourScheme.primary),
          ),
        ],
        projectChipBottomRow: [
          Chip(
            label: const Text(projectStrings.projectString_34),
            labelStyle: TextStyle(color: colourScheme.primary),
            side: BorderSide(color: colourScheme.primary),
          ),
          Chip(
            label: const Text(projectStrings.projectString_35),
            labelStyle: TextStyle(color: colourScheme.primary),
            side: BorderSide(color: colourScheme.primary),
          ),
        ],
        projectDescription: projectStrings.projectString_36,
        projectIconButton: IconButton(
          onPressed: () => UriUtils().launchMADProject(),
          icon: HugeIcon(
            icon: HugeIcons.strokeRoundedGithub,
            color: colourScheme.primary,
          ),
        ),
      ),
      renderProjectCard(
        context: context,
        projectHeroTag: heroStrings.projectHeroTag8,
        projectImage: StatelessRoundedCard(
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image.asset(
                projectStrings.projectString_37,
                height: landscapeWindow ? 300 : 200,
                width: landscapeWindow ? 600 : 500,
                fit: BoxFit.scaleDown,
                filterQuality: landscapeWindow
                    ? FilterQuality.high
                    : FilterQuality.low,
              ),
            ),
          ),
        ),
        projectHeader: projectStrings.projectString_38,
        projectChipTopRow: [
          Chip(
            label: const Text(projectStrings.projectString_39),
            labelStyle: TextStyle(color: colourScheme.primary),
            side: BorderSide(color: colourScheme.primary),
          ),
          Chip(
            label: const Text(projectStrings.projectString_40),
            labelStyle: TextStyle(color: colourScheme.primary),
            side: BorderSide(color: colourScheme.primary),
          ),
          Chip(
            label: const Text(projectStrings.projectString_41),
            labelStyle: TextStyle(color: colourScheme.primary),
            side: BorderSide(color: colourScheme.primary),
          ),
        ],
        projectChipBottomRow: [
          Chip(
            label: const Text(projectStrings.projectString_42),
            labelStyle: TextStyle(color: colourScheme.primary),
            side: BorderSide(color: colourScheme.primary),
          ),
          Chip(
            label: const Text(projectStrings.projectString_43),
            labelStyle: TextStyle(color: colourScheme.primary),
            side: BorderSide(color: colourScheme.primary),
          ),
        ],
        projectDescription: projectStrings.projectString_44,
        projectIconButton: IconButton(
          onPressed: () => UriUtils().launchAIFProject(),
          icon: HugeIcon(
            icon: HugeIcons.strokeRoundedGithub,
            color: colourScheme.primary,
          ),
        ),
      ),
      renderProjectCard(
        context: context,
        projectHeroTag: heroStrings.projectHeroTag9,
        projectImage: StatelessRoundedCard(
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image.asset(
                projectStrings.projectString_45,
                height: landscapeWindow ? 300 : 200,
                width: landscapeWindow ? 600 : 500,
                fit: BoxFit.scaleDown,
                filterQuality: landscapeWindow
                    ? FilterQuality.high
                    : FilterQuality.low,
              ),
            ),
          ),
        ),
        projectHeader: projectStrings.projectString_46,
        projectChipTopRow: [
          Chip(
            label: const Text(projectStrings.projectString_47),
            labelStyle: TextStyle(color: colourScheme.primary),
            side: BorderSide(color: colourScheme.primary),
          ),
          Chip(
            label: const Text(projectStrings.projectString_48),
            labelStyle: TextStyle(color: colourScheme.primary),
            side: BorderSide(color: colourScheme.primary),
          ),
        ],
        projectChipBottomRow: [
          Chip(
            label: const Text(projectStrings.projectString_49),
            labelStyle: TextStyle(color: colourScheme.primary),
            side: BorderSide(color: colourScheme.primary),
          ),
          Chip(
            label: const Text(projectStrings.projectString_50),
            labelStyle: TextStyle(color: colourScheme.primary),
            side: BorderSide(color: colourScheme.primary),
          ),
        ],
        projectDescription: projectStrings.projectString_51,
        projectIconButton: IconButton(
          highlightColor: colourScheme.primary,
          onPressed: () => UriUtils().launchMLProject(),
          icon: HugeIcon(
            icon: HugeIcons.strokeRoundedGithub,
            color: colourScheme.primary,
          ),
        ),
      ),

      renderProjectCard(
        context: context,
        projectHeroTag: heroStrings.projectHeroTag10,
        projectImage: StatelessRoundedCard(
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image.asset(
                projectStrings.projectString_52,
                height: landscapeWindow ? 300 : 200,
                width: landscapeWindow ? 600 : 500,
                fit: BoxFit.scaleDown,
                filterQuality: landscapeWindow
                    ? FilterQuality.high
                    : FilterQuality.low,
              ),
            ),
          ),
        ),
        projectHeader: projectStrings.projectString_53,
        projectChipTopRow: [
          Chip(
            label: const Text(projectStrings.projectString_54),
            labelStyle: TextStyle(color: colourScheme.primary),
            side: BorderSide(color: colourScheme.primary),
          ),
          Chip(
            label: const Text(projectStrings.projectString_55),
            labelStyle: TextStyle(color: colourScheme.primary),
            side: BorderSide(color: colourScheme.primary),
          ),
          Chip(
            label: const Text(projectStrings.projectString_56),
            labelStyle: TextStyle(color: colourScheme.primary),
            side: BorderSide(color: colourScheme.primary),
          ),
        ],
        projectChipBottomRow: [
          Chip(
            label: const Text(projectStrings.projectString_57),
            labelStyle: TextStyle(color: colourScheme.primary),
            side: BorderSide(color: colourScheme.primary),
          ),
          Chip(
            label: const Text(projectStrings.projectString_58),
            labelStyle: TextStyle(color: colourScheme.primary),
            side: BorderSide(color: colourScheme.primary),
          ),
        ],
        projectDescription: projectStrings.projectString_59,
        projectIconButton: IconButton(
          highlightColor: colourScheme.primary,
          onPressed: () => UriUtils().launchOOPProject(),
          icon: HugeIcon(
            icon: HugeIcons.strokeRoundedGithub,
            color: colourScheme.primary,
          ),
        ),
      ),
      Gap(5),
    ],
    addAutomaticKeepAlives: false,
    addRepaintBoundaries: false,
  );
}

Widget renderProjectCard({
  required BuildContext context,
  required String projectHeroTag,
  required String projectHeader,
  Widget? projectImage,
  required String projectDescription,
  required List<Chip> projectChipTopRow,
  required List<Chip> projectChipBottomRow,
  IconButton? projectIconButton,
}) {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: ProjectHeroCard(
      projectHeroTag: projectHeroTag,
      projectHeader: projectHeader,
      projectImage: projectImage,
      projectDescription: projectDescription,
      projectChipTopRow: projectChipTopRow,
      projectChipBottomRow: projectChipBottomRow,
      projectIconButton: projectIconButton,
    ),
  );
}

SliverQuiltedGridDelegate buildSliverLandscapeGridDelegate() {
  return SliverQuiltedGridDelegate(
    repeatPattern: QuiltedGridRepeatPattern.same,
    crossAxisCount: 64,
    pattern: [
      QuiltedGridTile(4, 64),
      QuiltedGridTile(25, 32),
      QuiltedGridTile(25, 32),
      QuiltedGridTile(25, 32),
      QuiltedGridTile(25, 32),
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

SliverQuiltedGridDelegate buildSliverPortraitGridDelegate() {
  return SliverQuiltedGridDelegate(
    repeatPattern: QuiltedGridRepeatPattern.same,
    crossAxisCount: 64,
    pattern: [
      QuiltedGridTile(16, 64),
      QuiltedGridTile(80, 64),
      QuiltedGridTile(90, 64),
      QuiltedGridTile(85, 64),
      QuiltedGridTile(85, 64),
      QuiltedGridTile(125, 64),
      QuiltedGridTile(120, 64),
      QuiltedGridTile(120, 64),
      QuiltedGridTile(120, 64),
      QuiltedGridTile(120, 64),
      QuiltedGridTile(120, 64),
      QuiltedGridTile(20, 64),
    ],
  );
}
