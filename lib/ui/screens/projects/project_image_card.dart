import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../common/header_text.dart';
import '../../common/image_not_found.dart';
import '../../common/stateless_rounded_card.dart';
import '../../common/subtitle_text.dart';

class ProjectImageCard extends StatefulWidget {
  ProjectImageCard({
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
  State<ProjectImageCard> createState() => _ProjectImageCardState();
}

class _ProjectImageCardState extends State<ProjectImageCard> {
  late ScrollController _projectChipScrollController;
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
    _projectChipScrollController = ScrollController();
    widget.projectHeaderMaxLines = 5;
    widget.projectDescriptionMaxLines = 8;
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
          StatelessRoundedCard(
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              child: Stack(
                children: [
                  Center(child: const CircularProgressIndicator()),
                  CachedNetworkImage(
                    placeholder: (context, url) =>
                        Center(child: const CircularProgressIndicator()),
                    errorWidget: (context, url, error) =>
                        Center(child: SizedBox(child: ImageNotFound())),
                    imageUrl: widget.projectImage,
                    height: landscapeWindow ? 300 : 200,
                    width: landscapeWindow ? 600 : 500,
                    fit: BoxFit.cover,
                    filterQuality: landscapeWindow ? FilterQuality.high : FilterQuality.low,
                  ),
                ],
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
          ?widget.iconButton
        ],
      ),
    );
  }
}
