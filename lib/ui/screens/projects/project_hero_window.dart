import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:thomas_popham_portfolio/ui/common/stateful_rounded_card.dart';
import 'package:thomas_popham_portfolio/ui/common/stateless_rounded_card.dart';

import '../../common/header_text.dart';
import '../../common/subtitle_text.dart';

class ProjectHeroImageWindow extends StatefulWidget {
  final String projectHeroTag;
  final String projectHeader;
  final String projectDescription;
  final List<Chip> projectChipTopRow;
  final List<Chip> projectChipBottomRow;
  final Widget projectWidget;
  final IconButton? projectIconButton;
  final VoidCallback? projectOnTap;

  const ProjectHeroImageWindow({
    super.key,
    required this.projectHeroTag,
    required this.projectHeader,
    required this.projectDescription,
    required this.projectChipTopRow,
    required this.projectChipBottomRow,
    required this.projectWidget,
    this.projectIconButton,
    this.projectOnTap,
  });

  @override
  State<ProjectHeroImageWindow> createState() => _ProjectHeroImageWindowState();
}

class _ProjectHeroImageWindowState extends State<ProjectHeroImageWindow> {
  late ScrollController _windowScrollController;

  @override
  void initState() {
    super.initState();
    _windowScrollController = ScrollController();
  }

  @override
  void dispose() {
    super.dispose();
    _windowScrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colourScheme = Theme.of(context).colorScheme;

    return SelectionArea(
      child: StatelessRoundedCard(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            controller: _windowScrollController,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      mouseCursor: SystemMouseCursors.click,
                      splashColor: colourScheme.surface,
                      icon: HugeIcon(icon: HugeIcons.strokeRoundedCancelSquare),
                    ),
                  ],
                ),
                Hero(
                  tag: widget.projectHeroTag,
                  child: widget.projectWidget,
                ),
                HeaderText(
                  data: widget.projectHeader,
                  fontSize: 30,
                  minFontSize: 10,
                  maxLines: 4,
                  softWrap: true,
                  textAlign: TextAlign.end,
                  textOverflow: TextOverflow.fade,
                ),
                Gap(5),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: SubtitleText(
                    data: widget.projectDescription,
                    fontSize: 18,
                    minFontSize: 14,
                    maxLines: 75,
                    softWrap: true,
                    textAlign: TextAlign.end,
                    textOverflow: TextOverflow.fade,
                  ),
                ),
                Gap(5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ?widget.projectIconButton,
                  ],
                ),
                Gap(75),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
