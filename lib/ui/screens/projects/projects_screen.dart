import 'package:flutter/material.dart';
import 'package:flutter/widget_previews.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:gap/gap.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:thomas_popham_portfolio/constants/hero_strings.dart'
    as heroStrings;
import 'package:thomas_popham_portfolio/constants/project_strings.dart'
    as projectStrings;
import 'package:thomas_popham_portfolio/logic/utils/uri_utils.dart';
import 'package:thomas_popham_portfolio/ui/screens/projects/project_hero_card.dart';
import 'package:thomas_popham_portfolio/ui/screens/projects/project_hero_image_window.dart';
import 'package:thomas_popham_portfolio/ui/screens/projects/project_hero_window.dart';
import '../../common/responsive_render.dart';
import '../../common/stateless_rounded_card.dart';
import '../../common/subtitle_text.dart';
import '../../common/title_text.dart';

class ProjectsScreen extends StatefulWidget {
  const ProjectsScreen({super.key});

  @override
  State<ProjectsScreen> createState() => _ProjectsScreenState();
}

class _ProjectsScreenState extends State<ProjectsScreen> {
  late ResponsiveRender _responsiveRender;
  late ScrollController _projectsScrollController;

  @override
  void initState() {
    super.initState();
    _projectsScrollController = ScrollController();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // ResponsiveRender notifies this screen if any responsive screen changes are detected
    _responsiveRender = ResponsiveRender(context);
  }

  @override
  void dispose() {
    super.dispose();
    _projectsScrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colourScheme = Theme.of(context).colorScheme;
    return CustomScrollView(
      controller: _projectsScrollController,
      physics: const BouncingScrollPhysics(),
      slivers: <Widget>[
        SliverGrid(
          gridDelegate: _responsiveRender.screenIsExtraLarge
              ? buildSliverLandscapeGridDelegate(50)
              : _responsiveRender.screenIsLarge
              ? buildSliverLandscapeGridDelegate(30)
              : _responsiveRender.screenIsMedium
              ? buildSliverPortraitGridDelegate(50)
              : _responsiveRender.screenIsSmall
              ? buildSliverPortraitGridDelegate(100)
              : buildSliverPortraitGridDelegate(50),
          delegate: buildSliverChildListDelegate(
            context,
            _responsiveRender,
            colourScheme,
          ),
        ),
      ],
    );
  }
}

SliverChildListDelegate buildSliverChildListDelegate(
  BuildContext context,
  ResponsiveRender responsive,
  ColorScheme colourScheme,
) {
  return SliverChildListDelegate(
    <Widget>[
      StatelessRoundedCard(
        child: TitleText(
          data: projectStrings.projectString_Title,
          fontSize: 40,
          minFontSize: 20,
          maxLines: 1,
          softWrap: true,
          textAlign: TextAlign.center,
          textOverflow: TextOverflow.ellipsis,
        ),
      ),
      renderProjectCard(
        context: context,
        projectHeroTag: heroStrings.projectHeroTag1,
        projectHeader: projectStrings.projectString_74,
        projectChipFirstRow:
            responsive.screenIsExtraLarge &&
                responsive.screenIsLarge &&
                responsive.screenIsMedium
            ? [
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
                Chip(
                  label: const Text(projectStrings.projectString_77),
                  labelStyle: TextStyle(color: colourScheme.primary),
                  side: BorderSide(color: colourScheme.primary),
                ),
              ]
            : [
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
                Chip(
                  label: const Text(projectStrings.projectString_77),
                  labelStyle: TextStyle(color: colourScheme.primary),
                  side: BorderSide(color: colourScheme.primary),
                ),
              ],
        projectChipSecondRow:
            responsive.screenIsExtraLarge &&
                responsive.screenIsLarge &&
                responsive.screenIsMedium
            ? [
                Chip(
                  label: const Text(projectStrings.projectString_78),
                  labelStyle: TextStyle(color: colourScheme.primary),
                  side: BorderSide(color: colourScheme.primary),
                ),
                Chip(
                  label: const Text(projectStrings.projectString_79),
                  labelStyle: TextStyle(color: colourScheme.primary),
                  side: BorderSide(color: colourScheme.primary),
                ),
              ]
            : [
                Chip(
                  label: const Text(projectStrings.projectString_78),
                  labelStyle: TextStyle(color: colourScheme.primary),
                  side: BorderSide(color: colourScheme.primary),
                ),
                Chip(
                  label: const Text(projectStrings.projectString_79),
                  labelStyle: TextStyle(color: colourScheme.primary),
                  side: BorderSide(color: colourScheme.primary),
                ),
              ],
        projectChipThirdRow:
            responsive.screenIsExtraLarge &&
                responsive.screenIsLarge &&
                responsive.screenIsMedium
            ? []
            : [],

        projectDescription: projectStrings.projectString_80,
      ),
      renderProjectCard(
        context: context,
        projectHeroTag: heroStrings.projectHeroTag2,
        projectHeader: projectStrings.projectString_67,
        projectChipFirstRow:
            responsive.screenIsExtraLarge &&
                responsive.screenIsLarge &&
                responsive.screenIsMedium
            ? [
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
                Chip(
                  label: const Text(projectStrings.projectString_70),
                  labelStyle: TextStyle(color: colourScheme.primary),
                  side: BorderSide(color: colourScheme.primary),
                ),
              ]
            : [
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
                Chip(
                  label: const Text(projectStrings.projectString_70),
                  labelStyle: TextStyle(color: colourScheme.primary),
                  side: BorderSide(color: colourScheme.primary),
                ),
              ],
        projectChipSecondRow:
            responsive.screenIsExtraLarge &&
                responsive.screenIsLarge &&
                responsive.screenIsMedium
            ? [
                Chip(
                  label: const Text(projectStrings.projectString_71),
                  labelStyle: TextStyle(color: colourScheme.primary),
                  side: BorderSide(color: colourScheme.primary),
                ),
                Chip(
                  label: const Text(projectStrings.projectString_72),
                  labelStyle: TextStyle(color: colourScheme.primary),
                  side: BorderSide(color: colourScheme.primary),
                ),
              ]
            : [
                Chip(
                  label: const Text(projectStrings.projectString_71),
                  labelStyle: TextStyle(color: colourScheme.primary),
                  side: BorderSide(color: colourScheme.primary),
                ),
                Chip(
                  label: const Text(projectStrings.projectString_72),
                  labelStyle: TextStyle(color: colourScheme.primary),
                  side: BorderSide(color: colourScheme.primary),
                ),
              ],
        projectChipThirdRow:
            responsive.screenIsExtraLarge &&
                responsive.screenIsLarge &&
                responsive.screenIsMedium
            ? []
            : [],

        projectDescription: projectStrings.projectString_73,
        projectLinkButton: MaterialButton(
          onPressed: () => UriUtils().launchEmmaGotoVideo(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SubtitleText(
                data: "Emma Goto Video",
                fontSize: 15,
                minFontSize: 12,
                maxLines: 2,
                softWrap: true,
                textAlign: TextAlign.center,
                textOverflow: TextOverflow.ellipsis,
              ),
              Gap(2),
              HugeIcon(
                icon: HugeIcons.strokeRoundedYoutube,
                color: colourScheme.primary,
              ),
            ],
          ),
        ),
      ),
      renderProjectCard(
        context: context,
        projectHeroTag: heroStrings.projectHeroTag3,
        projectHeader: projectStrings.projectString_60,
        projectChipFirstRow:
            responsive.screenIsExtraLarge &&
                responsive.screenIsLarge &&
                responsive.screenIsMedium
            ? [
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
              ]
            : [
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
              ],
        projectChipSecondRow:
            responsive.screenIsExtraLarge &&
                responsive.screenIsLarge &&
                responsive.screenIsMedium
            ? [
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
              ]
            : [
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
        projectChipThirdRow:
            responsive.screenIsExtraLarge &&
                responsive.screenIsLarge &&
                responsive.screenIsMedium
            ? []
            : [
                Chip(
                  label: const Text(projectStrings.projectString_65),
                  labelStyle: TextStyle(color: colourScheme.primary),
                  side: BorderSide(color: colourScheme.primary),
                ),
              ],

        projectDescription: projectStrings.projectString_66,
      ),
      renderProjectCard(
        context: context,
        projectHeroTag: heroStrings.projectHeroTag4,
        projectHeader: projectStrings.projectString_1,
        projectChipFirstRow:
            responsive.screenIsExtraLarge &&
                responsive.screenIsLarge &&
                responsive.screenIsMedium
            ? [
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
              ]
            : [
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
              ],
        projectChipSecondRow:
            responsive.screenIsExtraLarge &&
                responsive.screenIsLarge &&
                responsive.screenIsMedium
            ? [
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
              ]
            : [
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
              ],
        projectChipThirdRow:
            responsive.screenIsExtraLarge &&
                responsive.screenIsLarge &&
                responsive.screenIsMedium
            ? []
            : [
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
        projectLinkButton: MaterialButton(
          onPressed: () => UriUtils().launchDreamStudyProject(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SubtitleText(
                data: "View Project",
                fontSize: 15,
                minFontSize: 12,
                maxLines: 1,
                softWrap: true,
                textAlign: TextAlign.center,
                textOverflow: TextOverflow.visible,
              ),
              Gap(2),
              HugeIcon(
                icon: HugeIcons.strokeRoundedGithub,
                color: colourScheme.primary,
              ),
            ],
          ),
        ),
      ),
      renderProjectCard(
        context: context,
        projectHeroTag: heroStrings.projectHeroTag5,
        projectImage: Padding(
          padding: const EdgeInsets.all(20.0),
          child: StatelessRoundedCard(
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(40)),
              child: Image.asset(
                projectStrings.projectString_11,
                height: responsive.hp(50),
                fit:
                    responsive.screenIsExtraLarge &&
                        responsive.screenIsLarge &&
                        responsive.screenIsMedium
                    ? BoxFit.fill
                    : BoxFit.fitHeight,
                filterQuality: responsive.screenIsExtraLarge
                    ? FilterQuality.high
                    : FilterQuality.medium,
              ),
            ),
          ),
        ),
        projectHeader: projectStrings.projectString_12,
        projectChipFirstRow:
            responsive.screenIsExtraLarge &&
                responsive.screenIsLarge &&
                responsive.screenIsMedium
            ? [
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
              ]
            : [
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
        projectChipSecondRow:
            responsive.screenIsExtraLarge &&
                responsive.screenIsLarge &&
                responsive.screenIsMedium
            ? [
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
              ]
            : [
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
        projectChipThirdRow:
            responsive.screenIsExtraLarge &&
                responsive.screenIsLarge &&
                responsive.screenIsMedium
            ? []
            : [],

        projectDescription: projectStrings.projectString_19,
        projectLinkButton: MaterialButton(
          onPressed: () => UriUtils().launchDreamTravelProject(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SubtitleText(
                data: "View Project",
                fontSize: 15,
                minFontSize: 12,
                maxLines: 1,
                softWrap: true,
                textAlign: TextAlign.center,
                textOverflow: TextOverflow.visible,
              ),
              Gap(2),
              HugeIcon(
                icon: HugeIcons.strokeRoundedGithub,
                color: colourScheme.primary,
              ),
            ],
          ),
        ),
      ),
      renderProjectCard(
        context: context,
        projectHeroTag: heroStrings.projectHeroTag6,
        projectImage: Padding(
          padding: const EdgeInsets.all(20.0),
          child: StatelessRoundedCard(
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(40)),
              child: Image.asset(
                projectStrings.projectString_20,
                height: responsive.hp(50),
                fit:
                    responsive.screenIsExtraLarge &&
                        responsive.screenIsLarge &&
                        responsive.screenIsMedium
                    ? BoxFit.fill
                    : BoxFit.fitHeight,
                filterQuality: responsive.screenIsExtraLarge
                    ? FilterQuality.high
                    : FilterQuality.medium,
              ),
            ),
          ),
        ),
        projectHeader: projectStrings.projectString_21,
        projectChipFirstRow:
            responsive.screenIsExtraLarge &&
                responsive.screenIsLarge &&
                responsive.screenIsMedium
            ? [
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
              ]
            : [
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
        projectChipSecondRow:
            responsive.screenIsExtraLarge &&
                responsive.screenIsLarge &&
                responsive.screenIsMedium
            ? [
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
              ]
            : [
                Chip(
                  label: const Text(projectStrings.projectString_25),
                  labelStyle: TextStyle(color: colourScheme.primary),
                  side: BorderSide(color: colourScheme.primary),
                ),
              ],
        projectChipThirdRow:
            responsive.screenIsExtraLarge &&
                responsive.screenIsLarge &&
                responsive.screenIsMedium
            ? []
            : [
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
        projectImage: Padding(
          padding: const EdgeInsets.all(20.0),
          child: StatelessRoundedCard(
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(40)),
              child: Image.asset(
                projectStrings.projectString_28,
                height: responsive.hp(50),
                fit:
                    responsive.screenIsExtraLarge &&
                        responsive.screenIsLarge &&
                        responsive.screenIsMedium
                    ? BoxFit.fill
                    : BoxFit.fitHeight,
                filterQuality: responsive.screenIsExtraLarge
                    ? FilterQuality.high
                    : FilterQuality.medium,
              ),
            ),
          ),
        ),
        projectHeader: projectStrings.projectString_29,
        projectChipFirstRow:
            responsive.screenIsExtraLarge &&
                responsive.screenIsLarge &&
                responsive.screenIsMedium
            ? [
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
              ]
            : [
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
              ],
        projectChipSecondRow:
            responsive.screenIsExtraLarge &&
                responsive.screenIsLarge &&
                responsive.screenIsMedium
            ? [
                Chip(
                  label: const Text(projectStrings.projectString_33),
                  labelStyle: TextStyle(color: colourScheme.primary),
                  side: BorderSide(color: colourScheme.primary),
                ),
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
              ]
            : [
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
        projectChipThirdRow:
            responsive.screenIsExtraLarge &&
                responsive.screenIsLarge &&
                responsive.screenIsMedium
            ? []
            : [
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
        projectLinkButton: MaterialButton(
          onPressed: () => UriUtils().launchMADProject(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SubtitleText(
                data: "View Project",
                fontSize: 15,
                minFontSize: 12,
                maxLines: 1,
                softWrap: true,
                textAlign: TextAlign.center,
                textOverflow: TextOverflow.visible,
              ),
              Gap(2),
              HugeIcon(
                icon: HugeIcons.strokeRoundedGithub,
                color: colourScheme.primary,
              ),
            ],
          ),
        ),
      ),
      renderProjectCard(
        context: context,
        projectHeroTag: heroStrings.projectHeroTag8,
        projectImage: Padding(
          padding: const EdgeInsets.all(20.0),
          child: StatelessRoundedCard(
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(40)),
              child: Image.asset(
                projectStrings.projectString_37,
                height: responsive.hp(50),
                fit:
                    responsive.screenIsExtraLarge &&
                        responsive.screenIsLarge &&
                        responsive.screenIsMedium
                    ? BoxFit.fill
                    : BoxFit.fitHeight,
                filterQuality: responsive.screenIsExtraLarge
                    ? FilterQuality.high
                    : FilterQuality.medium,
              ),
            ),
          ),
        ),
        projectHeader: projectStrings.projectString_38,
        projectChipFirstRow:
            responsive.screenIsExtraLarge &&
                responsive.screenIsLarge &&
                responsive.screenIsMedium
            ? [
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
              ]
            : [
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
              ],
        projectChipSecondRow:
            responsive.screenIsExtraLarge &&
                responsive.screenIsLarge &&
                responsive.screenIsMedium
            ? [
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
              ]
            : [
                Chip(
                  label: const Text(projectStrings.projectString_41),
                  labelStyle: TextStyle(color: colourScheme.primary),
                  side: BorderSide(color: colourScheme.primary),
                ),
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
        projectChipThirdRow:
            responsive.screenIsExtraLarge &&
                responsive.screenIsLarge &&
                responsive.screenIsMedium
            ? []
            : [],

        projectDescription: projectStrings.projectString_44,
        projectLinkButton: MaterialButton(
          onPressed: () => UriUtils().launchAIFProject(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SubtitleText(
                data: "View Project",
                fontSize: 15,
                minFontSize: 12,
                maxLines: 1,
                softWrap: true,
                textAlign: TextAlign.center,
                textOverflow: TextOverflow.visible,
              ),
              Gap(2),
              HugeIcon(
                icon: HugeIcons.strokeRoundedGithub,
                color: colourScheme.primary,
              ),
            ],
          ),
        ),
      ),
      renderProjectCard(
        context: context,
        projectHeroTag: heroStrings.projectHeroTag9,
        projectImage: Padding(
          padding: const EdgeInsets.all(20.0),
          child: StatelessRoundedCard(
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(40)),
              child: Image.asset(
                projectStrings.projectString_45,
                height: responsive.hp(50),
                fit:
                    responsive.screenIsExtraLarge &&
                        responsive.screenIsLarge &&
                        responsive.screenIsMedium
                    ? BoxFit.fill
                    : BoxFit.fitHeight,
                filterQuality: responsive.screenIsExtraLarge
                    ? FilterQuality.high
                    : FilterQuality.medium,
              ),
            ),
          ),
        ),
        projectHeader: projectStrings.projectString_46,
        projectChipFirstRow:
            responsive.screenIsExtraLarge &&
                responsive.screenIsLarge &&
                responsive.screenIsMedium
            ? [
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
              ]
            : [
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
        projectChipSecondRow:
            responsive.screenIsExtraLarge &&
                responsive.screenIsLarge &&
                responsive.screenIsMedium
            ? [
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
              ]
            : [
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
        projectChipThirdRow:
            responsive.screenIsExtraLarge &&
                responsive.screenIsLarge &&
                responsive.screenIsMedium
            ? []
            : [],

        projectDescription: projectStrings.projectString_51,
        projectLinkButton: MaterialButton(
          highlightColor: colourScheme.primary,
          onPressed: () => UriUtils().launchMLProject(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SubtitleText(
                data: "View Project",
                fontSize: 15,
                minFontSize: 12,
                maxLines: 1,
                softWrap: true,
                textAlign: TextAlign.center,
                textOverflow: TextOverflow.visible,
              ),
              Gap(2),
              HugeIcon(
                icon: HugeIcons.strokeRoundedGithub,
                color: colourScheme.primary,
              ),
            ],
          ),
        ),
      ),

      renderProjectCard(
        context: context,
        projectHeroTag: heroStrings.projectHeroTag10,
        projectImage: Padding(
          padding: const EdgeInsets.all(20.0),
          child: StatelessRoundedCard(
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(40)),
              child: Image.asset(
                projectStrings.projectString_52,
                height: responsive.hp(50),
                fit:
                    responsive.screenIsExtraLarge &&
                        responsive.screenIsLarge &&
                        responsive.screenIsMedium
                    ? BoxFit.fill
                    : BoxFit.fitHeight,
                filterQuality: responsive.screenIsExtraLarge
                    ? FilterQuality.high
                    : FilterQuality.medium,
              ),
            ),
          ),
        ),
        projectHeader: projectStrings.projectString_53,
        projectChipFirstRow:
            responsive.screenIsExtraLarge &&
                responsive.screenIsLarge &&
                responsive.screenIsMedium
            ? [
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
              ]
            : [
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
        projectChipSecondRow:
            responsive.screenIsExtraLarge &&
                responsive.screenIsLarge &&
                responsive.screenIsMedium
            ? [
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
              ]
            : [
                Chip(
                  label: const Text(projectStrings.projectString_57),
                  labelStyle: TextStyle(color: colourScheme.primary),
                  side: BorderSide(color: colourScheme.primary),
                ),
              ],
        projectChipThirdRow:
            responsive.screenIsExtraLarge &&
                responsive.screenIsLarge &&
                responsive.screenIsMedium
            ? []
            : [
                Chip(
                  label: const Text(projectStrings.projectString_58),
                  labelStyle: TextStyle(color: colourScheme.primary),
                  side: BorderSide(color: colourScheme.primary),
                ),
              ],
        projectDescription: projectStrings.projectString_59,
        projectLinkButton: MaterialButton(
          highlightColor: colourScheme.primary,
          onPressed: () => UriUtils().launchOOPProject(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SubtitleText(
                data: "View Project",
                fontSize: 15,
                minFontSize: 12,
                maxLines: 1,
                softWrap: true,
                textAlign: TextAlign.center,
                textOverflow: TextOverflow.visible,
              ),
              Gap(2),
              HugeIcon(
                icon: HugeIcons.strokeRoundedGithub,
                color: colourScheme.primary,
              ),
            ],
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
  required List<Chip> projectChipFirstRow,
  required List<Chip> projectChipSecondRow,
  required List<Chip> projectChipThirdRow,
  Widget? projectLinkButton,
}) {
  return ProjectHeroCard(
    projectHeroTag: projectHeroTag,
    projectTitle: projectHeader,
    projectImage: projectImage,
    projectBody: projectDescription,
    projectChipFirstRow: projectChipFirstRow,
    projectChipSecondRow: projectChipSecondRow,
    projectChipThirdRow: projectChipThirdRow,
    projectLinkButton: projectLinkButton,
    projectExpandOnTap: () {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) {
            if (projectImage != null) {
              return ProjectHeroImageWindow(
                projectHeroTag: projectHeroTag,
                projectTitle: projectHeader,
                projectBody: projectDescription,
                projectImage: projectImage,
                projectChipFirstRow: projectChipFirstRow,
                projectChipSecondRow: projectChipSecondRow,
                projectChipThirdRow: projectChipThirdRow,
                projectLinkButton: projectLinkButton,
              );
            } else {
              return ProjectHeroWindow(
                projectHeroTag: projectHeroTag,
                projectTitle: projectHeader,
                projectBody: projectDescription,
                projectChipFirstRow: projectChipFirstRow,
                projectChipSecondRow: projectChipSecondRow,
                projectChipThirdRow: projectChipThirdRow,
                projectLinkButton: projectLinkButton,
              );
            }
          },
        ),
      );
    },
  );
}

SliverQuiltedGridDelegate buildSliverLandscapeGridDelegate(int mainAxisCount) {
  return SliverQuiltedGridDelegate(
    repeatPattern: QuiltedGridRepeatPattern.same,
    crossAxisCount: 64,
    pattern: [
      QuiltedGridTile(4, 64),
      QuiltedGridTile(mainAxisCount - 30, 32),
      QuiltedGridTile(mainAxisCount - 30, 32),
      QuiltedGridTile(mainAxisCount - 30, 32),
      QuiltedGridTile(mainAxisCount - 30, 32),
      QuiltedGridTile(mainAxisCount - 10, 32),
      QuiltedGridTile(mainAxisCount - 10, 32),
      QuiltedGridTile(mainAxisCount - 10, 32),
      QuiltedGridTile(mainAxisCount - 10, 32),
      QuiltedGridTile(mainAxisCount - 10, 32),
      QuiltedGridTile(mainAxisCount - 10, 32),
      QuiltedGridTile(6, 64),
    ],
  );
}

SliverQuiltedGridDelegate buildSliverPortraitGridDelegate(int mainAxisCount) {
  return SliverQuiltedGridDelegate(
    repeatPattern: QuiltedGridRepeatPattern.same,
    crossAxisCount: 64,
    pattern: [
      QuiltedGridTile(16, 64),
      QuiltedGridTile(mainAxisCount * 2, 64),
      QuiltedGridTile(mainAxisCount * 2, 64),
      QuiltedGridTile(mainAxisCount * 2, 64),
      QuiltedGridTile(mainAxisCount * 2, 64),
      QuiltedGridTile(mainAxisCount * 3, 64),
      QuiltedGridTile(mainAxisCount * 3, 64),
      QuiltedGridTile(mainAxisCount * 3, 64),
      QuiltedGridTile(mainAxisCount * 3, 64),
      QuiltedGridTile(mainAxisCount * 3, 64),
      QuiltedGridTile(mainAxisCount * 3, 64),
      QuiltedGridTile(20, 64),
    ],
  );
}
