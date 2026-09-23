import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../common/header_text.dart';
import '../../common/stateless_rounded_card.dart';
import '../../common/subtitle_text.dart';

class ProjectHeroCard extends StatefulWidget {
  final String projectHeroTag;
  final String projectHeader;
  final String projectDescription;
  final Widget? projectImage;
  final List<Chip> projectChipTopRow;
  final List<Chip> projectChipBottomRow;
  final IconButton? projectIconButton;
  final VoidCallback? projectOnTap;

  const ProjectHeroCard({
    super.key,
    required this.projectHeroTag,
    required this.projectHeader,
    required this.projectDescription,
    this.projectImage,
    required this.projectChipTopRow,
    required this.projectChipBottomRow,
    this.projectIconButton,
    this.projectOnTap,
  });

  @override
  State<ProjectHeroCard> createState() => _ProjectHeroCardState();
}

class _ProjectHeroCardState extends State<ProjectHeroCard> {
  late ScrollController _projectChipScrollController;
  late bool landscapeWindow = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // Rerender the UI if the width from MediaQuery is greater than 900
    final double windowWidth = MediaQuery.of(context).size.width;
    landscapeWindow = windowWidth > 900;
  }

  @override
  void initState() {
    super.initState();
    _projectChipScrollController = ScrollController();
  }

  @override
  void dispose() {
    super.dispose();
    _projectChipScrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colourScheme = Theme.of(context).colorScheme;

    return StatelessRoundedCard(
      child: Hero(
        tag: widget.projectHeroTag,
        child: InkWell(
          onTap: widget.projectOnTap,
          mouseCursor: SystemMouseCursors.click,
          splashColor: colourScheme.surface,
          customBorder: RoundedSuperellipseBorder(
            borderRadius: BorderRadius.circular(40),
          ),
          child: Ink(
            decoration: const BoxDecoration(color: Colors.transparent),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  // If an image is passed render it
                  ?widget.projectImage,
                  Gap(5),
                  HeaderText(
                    data: widget.projectHeader,
                    fontSize: 25,
                    minFontSize: 15,
                    maxLines: 5,
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
                      maxLines: 12,
                      softWrap: true,
                      textAlign: TextAlign.end,
                      textOverflow: TextOverflow.fade,
                    ),
                  ),
                  ?widget.projectIconButton,
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
