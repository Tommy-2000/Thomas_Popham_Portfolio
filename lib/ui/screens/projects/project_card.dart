import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../common/header_text.dart';
import '../../common/stateless_rounded_card.dart';
import '../../common/subtitle_text.dart';

class ProjectCard extends StatefulWidget {
  ProjectCard({
    super.key,
    required this.colourScheme,
    required this.projectImage,
    required this.projectHeader,
    required this.projectHeaderMaxLines,
    required this.projectDescriptionMaxLines,
    required this.projectChipTopRow,
    required this.projectChipBottomRow,
    required this.projectDescription,
    this.iconButton,
  });

  final ColorScheme colourScheme;

  final String projectImage;
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

  late bool landscapeWindow = false;
  late bool foldableWindow = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // Check the width of the window using MediaQuery if greater than 800 in a state change
    final double windowWidth = MediaQuery.of(context).size.width;
    landscapeWindow = windowWidth > 800;
  }


  @override
  void initState() {
    super.initState();
    widget.projectHeaderMaxLines = 5;
    widget.projectDescriptionMaxLines = 8;
  }


  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StatelessRoundedCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          StatelessRoundedCard(
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              child: Image(
                image: AssetImage(widget.projectImage),
                height: landscapeWindow ? 300 : 200,
                width: landscapeWindow ? 600 : 500,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Gap(5),
          HeaderText(
            data: widget.projectHeader,
            fontSize: 25,
            minFontSize: 15,
            maxLines: widget.projectHeaderMaxLines,
            softWrap: true,
            textAlign: TextAlign.end,
            textOverflow: TextOverflow.fade,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            spacing: 5,
            children: widget.projectChipTopRow,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            spacing: 5,
            children: widget.projectChipBottomRow,
          ),
          Gap(5),
          SubtitleText(
            data: widget.projectDescription,
            fontSize: 16,
            minFontSize: 12,
            maxLines: widget.projectDescriptionMaxLines,
            softWrap: true,
            textAlign: TextAlign.end,
            textOverflow: TextOverflow.fade,
          ),
          ?widget.iconButton
        ],
      ),
    );
  }
}
