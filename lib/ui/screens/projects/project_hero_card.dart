import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:thomas_popham_portfolio/ui/common/responsive_render.dart';

import '../../common/header_text.dart';
import '../../common/stateless_rounded_card.dart';
import '../../common/subtitle_text.dart';

class ProjectHeroCard extends StatefulWidget {
  final String projectHeroTag;
  final String projectTitle;
  final String projectBody;
  final Widget? projectImage;
  final List<Chip> projectChipFirstRow;
  final List<Chip> projectChipSecondRow;
  final List<Chip> projectChipThirdRow;
  final Widget? projectLinkButton;
  final VoidCallback? projectExpandOnTap;

  const ProjectHeroCard({
    super.key,
    required this.projectHeroTag,
    required this.projectTitle,
    required this.projectBody,
    this.projectImage,
    required this.projectChipFirstRow,
    required this.projectChipSecondRow,
    required this.projectChipThirdRow,
    this.projectExpandOnTap,
    this.projectLinkButton,
  });

  @override
  State<ProjectHeroCard> createState() => _ProjectHeroCardState();
}

class _ProjectHeroCardState extends State<ProjectHeroCard> {
  late ResponsiveRender _responsiveRender;

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // ResponsiveRender notifies this screen if any responsive screen changes are detected
    _responsiveRender = ResponsiveRender(context);
  }

  @override
  Widget build(BuildContext context) {
    final colourScheme = Theme.of(context).colorScheme;

    return StatelessRoundedCard(
      child: Hero(
        tag: widget.projectHeroTag,
        child: InkWell(
          onTap: widget.projectExpandOnTap,
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
                  // If an image is associated with the project, render it as an optional Widget
                  ?widget.projectImage,
                  Gap(7),
                  HeaderText(
                    data: widget.projectTitle,
                    fontSize: 25,
                    minFontSize: 15,
                    maxLines: 5,
                    softWrap: true,
                    textAlign: TextAlign.end,
                    textOverflow: TextOverflow.fade,
                  ),
                  Gap(7),
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
                  Gap(7),
                  SelectionArea(
                    child:
                        _responsiveRender.screenIsExtraLarge &&
                            _responsiveRender.screenIsLarge &&
                            _responsiveRender.screenIsMedium
                        ? SubtitleText(
                            data: widget.projectBody,
                            fontSize: 16,
                            minFontSize: 12,
                            maxLines: 12,
                            softWrap: true,
                            textAlign: TextAlign.end,
                            textOverflow: TextOverflow.fade,
                          )
                        : SubtitleText(
                            data: widget.projectBody,
                            fontSize: 16,
                            minFontSize: 14,
                            maxLines: 6,
                            softWrap: true,
                            textAlign: TextAlign.end,
                            textOverflow: TextOverflow.fade,
                          ),
                  ),
                  Gap(7),
                  ?widget.projectLinkButton,
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
