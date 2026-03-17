import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:gap/gap.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:thomas_popham_portfolio/constants/project_strings.dart'
    as projectStrings;
import 'package:thomas_popham_portfolio/logic/utils/uri_utils.dart';
import 'package:thomas_popham_portfolio/ui/screens/projects/project_card.dart';
import 'package:thomas_popham_portfolio/ui/screens/projects/project_image_card.dart';
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
  late bool foldableWindow = false;

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
    // Check the width of the window using MediaQuery if greater than 800 in a state change
    final double windowWidth = MediaQuery.of(context).size.width;
    landscapeWindow = windowWidth > 800;
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
      StatelessRoundedCard(
        child: Column(
          children: [
            TitleText(
              data: projectStrings.projectString_1,
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
      ProjectCard(
        colourScheme: colourScheme,
        projectHeader: projectStrings.projectString_60,
        projectHeaderMaxLines: 4,
        projectDescriptionMaxLines: 12,
        projectChipTopRow: [
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
          Chip(
            label: const Text(projectStrings.projectString_64),
            labelStyle: TextStyle(color: colourScheme.primary),
            side: BorderSide(color: colourScheme.primary),
          ),
          Chip(
            label: const Text(projectStrings.projectString_65),
            labelStyle: TextStyle(color: colourScheme.primary),
            side: BorderSide(color: colourScheme.primary),
          ),
        ],
        projectChipBottomRow: [
          Chip(
            label: const Text(projectStrings.projectString_66),
            labelStyle: TextStyle(color: colourScheme.primary),
            side: BorderSide(color: colourScheme.primary),
          ),
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
        projectDescription: projectStrings.projectString_61,
        iconButton: IconButton(
          highlightColor: colourScheme.primary,
          onPressed: () => UriUtils().launchDreamStudyProject(),
          icon: HugeIcon(
            icon: HugeIcons.strokeRoundedGithub,
            color: colourScheme.primary,
          ),
        ),
      ),
      ProjectImageCard(
        colourScheme: colourScheme,
        projectImage: projectStrings.projectString_2,
        projectHeader: projectStrings.projectString_3,
        projectHeaderMaxLines: 4,
        projectChipTopRow: [
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
        ],
        projectChipBottomRow: [
          Chip(
            label: const Text(projectStrings.projectString_9),
            labelStyle: TextStyle(color: colourScheme.primary),
            side: BorderSide(color: colourScheme.primary),
          ),
          Chip(
            label: const Text(projectStrings.projectString_10),
            labelStyle: TextStyle(color: colourScheme.primary),
            side: BorderSide(color: colourScheme.primary),
          ),
        ],
        projectDescription: projectStrings.projectString_11,
        projectDescriptionMaxLines: 12,
        iconButton: IconButton(
          highlightColor: colourScheme.primary,
          onPressed: () => UriUtils().launchDreamCareProject(),
          icon: HugeIcon(
            icon: HugeIcons.strokeRoundedGithub,
            color: colourScheme.primary,
          ),
        ),
      ),
      ProjectImageCard(
        colourScheme: colourScheme,
        projectImage: projectStrings.projectString_12,
        projectHeader: projectStrings.projectString_13,
        projectHeaderMaxLines: 4,
        projectChipTopRow: [
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
          Chip(
            label: const Text(projectStrings.projectString_16),
            labelStyle: TextStyle(color: colourScheme.primary),
            side: BorderSide(color: colourScheme.primary),
          ),
        ],
        projectChipBottomRow: [
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
        projectDescriptionMaxLines: 12,
        iconButton: IconButton(
          highlightColor: colourScheme.primary,
          onPressed: () => UriUtils().launchDreamTravelProject(),
          icon: HugeIcon(
            icon: HugeIcons.strokeRoundedGithub,
            color: colourScheme.primary,
          ),
        ),
      ),
      ProjectImageCard(
        colourScheme: colourScheme,
        projectImage: projectStrings.projectString_20,
        projectHeader: projectStrings.projectString_21,
        projectHeaderMaxLines: 4,
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
        projectDescriptionMaxLines: 12,
      ),
      ProjectImageCard(
        colourScheme: colourScheme,
        projectImage: projectStrings.projectString_28,
        projectHeader: projectStrings.projectString_29,
        projectHeaderMaxLines: 4,
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
        projectDescriptionMaxLines: 12,
        iconButton: IconButton(
          highlightColor: colourScheme.primary,
          onPressed: () => UriUtils().launchMADProject(),
          icon: HugeIcon(
            icon: HugeIcons.strokeRoundedGithub,
            color: colourScheme.primary,
          ),
        ),
      ),
      ProjectImageCard(
        colourScheme: colourScheme,
        projectImage: projectStrings.projectString_37,
        projectHeader: projectStrings.projectString_38,
        projectHeaderMaxLines: 4,
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
        projectDescriptionMaxLines: 12,
        iconButton: IconButton(
          highlightColor: colourScheme.primary,
          onPressed: () => UriUtils().launchAIFProject(),
          icon: HugeIcon(
            icon: HugeIcons.strokeRoundedGithub,
            color: colourScheme.primary,
          ),
        ),
      ),
      ProjectImageCard(
        colourScheme: colourScheme,
        projectImage: projectStrings.projectString_45,
        projectHeader: projectStrings.projectString_46,
        projectHeaderMaxLines: 4,
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
        projectDescriptionMaxLines: 12,
        iconButton: IconButton(
          highlightColor: colourScheme.primary,
          onPressed: () => UriUtils().launchMLProject(),
          icon: HugeIcon(
            icon: HugeIcons.strokeRoundedGithub,
            color: colourScheme.primary,
          ),
        ),
      ),
      ProjectImageCard(
        colourScheme: colourScheme,
        projectImage: projectStrings.projectString_52,
        projectHeader: projectStrings.projectString_53,
        projectHeaderMaxLines: 4,
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
        projectDescriptionMaxLines: 12,
        iconButton: IconButton(
          highlightColor: colourScheme.primary,
          onPressed: () => UriUtils().launchOOPProject(),
          icon: HugeIcon(
            icon: HugeIcons.strokeRoundedGithub,
            color: colourScheme.primary,
          ),
        ),
      ),
      // OOPProjectCard(),
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
      QuiltedGridTile(16, 64),
      QuiltedGridTile(100, 64),
      QuiltedGridTile(100, 64),
      QuiltedGridTile(100, 64),
      QuiltedGridTile(100, 64),
      QuiltedGridTile(100, 64),
      QuiltedGridTile(100, 64),
      QuiltedGridTile(100, 64),
      QuiltedGridTile(100, 64),
      QuiltedGridTile(16, 64),
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
