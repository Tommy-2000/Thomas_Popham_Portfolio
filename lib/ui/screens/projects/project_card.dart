import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../common/header_text.dart';
import '../../common/stateless_rounded_card.dart';
import '../../common/subtitle_text.dart';

class ProjectCard extends StatefulWidget {
  ProjectCard({
    super.key,
    required this.colourScheme,
    required this.projectHeader,
    required this.projectHeaderMaxLines,
    required this.projectDescriptionMaxLines,
    required this.projectChipTopRow,
    required this.projectChipBottomRow,
    required this.projectDescription,
    this.iconButton,
  });

  final ColorScheme colourScheme;

  final String projectHeader;
  int projectHeaderMaxLines;
  int projectDescriptionMaxLines;
  final List<Chip> projectChipTopRow;
  final List<Chip> projectChipBottomRow;
  final String projectDescription;
  final IconButton? iconButton;

  @override
  State<ProjectCard> createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  late ScrollController _projectChipScrollController;

  @override
  void initState() {
    super.initState();
    _projectChipScrollController = ScrollController();
    widget.projectHeaderMaxLines = 5;
    widget.projectDescriptionMaxLines = 12;
  }

  @override
  void dispose() {
    super.dispose();
    _projectChipScrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StatelessRoundedCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          HeaderText(
            data: widget.projectHeader,
            fontSize: 25,
            minFontSize: 15,
            maxLines: widget.projectHeaderMaxLines,
            softWrap: true,
            textAlign: TextAlign.end,
            textOverflow: TextOverflow.fade,
          ),
          SingleChildScrollView(
            controller: _projectChipScrollController,
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              spacing: 5,
              children: widget.projectChipTopRow,
            ),
          ),
          SingleChildScrollView(
            controller: _projectChipScrollController,
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              spacing: 5,
              children: widget.projectChipBottomRow,
            ),
          ),
          Gap(5),
          SelectionArea(
            child: SubtitleText(
              data: widget.projectDescription,
              fontSize: 16,
              minFontSize: 12,
              maxLines: widget.projectDescriptionMaxLines,
              softWrap: true,
              textAlign: TextAlign.end,
              textOverflow: TextOverflow.fade,
            ),
          ),
          ?widget.iconButton,
        ],
      ),
    );
  }
}
