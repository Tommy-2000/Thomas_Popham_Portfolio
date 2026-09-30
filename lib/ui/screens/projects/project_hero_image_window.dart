import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:thomas_popham_portfolio/ui/common/stateless_rounded_card.dart';

import '../../common/header_text.dart';
import '../../common/subtitle_text.dart';

class ProjectHeroImageWindow extends StatefulWidget {
  final String projectHeroTag;
  final String projectTitle;
  final String projectBody;
  final List<Chip> projectChipFirstRow;
  final List<Chip> projectChipSecondRow;
  final List<Chip> projectChipThirdRow;
  final Widget projectImage;
  final Widget? projectLinkButton;

  const ProjectHeroImageWindow({
    super.key,
    required this.projectHeroTag,
    required this.projectTitle,
    required this.projectBody,
    required this.projectChipFirstRow,
    required this.projectChipSecondRow,
    required this.projectChipThirdRow,
    required this.projectImage,
    this.projectLinkButton,
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
                Hero(tag: widget.projectHeroTag, child: widget.projectImage),
                Gap(5),
                // If any chips associated with a project overflow on to the next row render it, otherwise render nothing
                ?widget.projectChipFirstRow.isEmpty
                    ? null
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        spacing: 5,
                        children: widget.projectChipFirstRow,
                      ),
                ?widget.projectChipSecondRow.isEmpty
                    ? null
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        spacing: 5,
                        children: widget.projectChipSecondRow,
                      ),
                ?widget.projectChipThirdRow.isEmpty
                    ? null
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        spacing: 5,
                        children: widget.projectChipThirdRow,
                      ),
                Gap(5),
                HeaderText(
                  data: widget.projectTitle,
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
                    data: widget.projectBody,
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
                  children: [?widget.projectLinkButton],
                ),
                Gap(5),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
