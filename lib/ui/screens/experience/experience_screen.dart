import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:gap/gap.dart';
import 'package:thomas_popham_portfolio/ui/common/stateful_hero_card.dart';
import 'package:thomas_popham_portfolio/ui/common/stateful_hero_window.dart';
import '../../common/stateless_rounded_card.dart';
import '../../common/header_text.dart';
import '../../common/subtitle_text.dart';
import '../../common/title_text.dart';
import '../../../constants/hero_strings.dart' as heroStrings;
import '../../../constants/experience_strings.dart' as experienceStrings;

class ExperienceScreen extends StatefulWidget {
  const ExperienceScreen({super.key});

  @override
  State<ExperienceScreen> createState() => _ExperienceScreenState();
}

class _ExperienceScreenState extends State<ExperienceScreen> {
  late ScrollController _experienceScrollController;

  bool landscapeWindow = false;
  bool foldableWindow = false;

  @override
  void initState() {
    super.initState();
    _experienceScrollController = ScrollController();
  }

  @override
  void dispose() {
    super.dispose();
    _experienceScrollController.dispose();
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

    return SelectionArea(
      child: CustomScrollView(
        slivers: <Widget>[
          SliverGrid(
            gridDelegate: landscapeWindow
                ? buildSliverLandscapeGridDelegate()
                : buildSliverPortraitGridDelegate(),
            delegate: buildSliverChildListDelegate(
              context,
              landscapeWindow,
              colourScheme,
            ),
          ),
        ],
      ),
    );
  }
}

SliverChildListDelegate buildSliverChildListDelegate(
  BuildContext context,
  bool landscapeWindow,
  ColorScheme colourScheme,
) {
  return SliverChildListDelegate(
    <Widget>[
      StatelessRoundedCard(
        child: TitleText(
          data: experienceStrings.experienceString_1,
          fontSize: 40,
          minFontSize: 20,
          maxLines: 1,
          softWrap: true,
          textAlign: TextAlign.center,
          textOverflow: TextOverflow.ellipsis,
        ),
      ),
      StatelessRoundedCard(
        child: TitleText(
          data: experienceStrings.experienceString_2,
          fontSize: 30,
          minFontSize: 20,
          maxLines: 1,
          softWrap: true,
          textAlign: TextAlign.center,
          textOverflow: TextOverflow.ellipsis,
        ),
      ),
      StatelessRoundedCard(
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          child: Image(
            image: AssetImage(experienceStrings.experienceString_3),
            fit: BoxFit.scaleDown,
          ),
        ),
      ),
      StatefulHeroCard(
        childHeroTag: heroStrings.EXPERIENCE_HERO_TAG_1,
        childHeroOnTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) {
                return StatefulHeroWindow(
                  childHeroTag: heroStrings.EXPERIENCE_HERO_TAG_1,
                  child: Column(
                    children: [
                      HeaderText(
                        data: experienceStrings.experienceString_4,
                        fontSize: 30,
                        minFontSize: 10,
                        maxLines: 3,
                        softWrap: true,
                        textAlign: TextAlign.end,
                        textOverflow: TextOverflow.fade,
                      ),
                      Gap(5),
                      SubtitleText(
                        data: experienceStrings.experienceString_5,
                        fontSize: 18,
                        minFontSize: 12,
                        maxLines: 25,
                        softWrap: true,
                        textAlign: TextAlign.end,
                        textOverflow: TextOverflow.fade,
                      ),
                    ],
                  ),
                );
              },
            ),
          );
        },
        child: Column(
          children: [
            HeaderText(
              data: experienceStrings.experienceString_4,
              fontSize: 30,
              minFontSize: 10,
              maxLines: 3,
              softWrap: true,
              textAlign: TextAlign.end,
              textOverflow: TextOverflow.fade,
            ),
            Gap(5),
            ?landscapeWindow
                ? SubtitleText(
                    data: experienceStrings.experienceString_5,
                    fontSize: 18,
                    minFontSize: 12,
                    maxLines: 25,
                    softWrap: true,
                    textAlign: TextAlign.end,
                    textOverflow: TextOverflow.fade,
                  )
                : null,
          ],
        ),
      ),
      StatelessRoundedCard(
        child: Column(
          children: [
            TitleText(
              data: experienceStrings.experienceString_6,
              fontSize: 30,
              minFontSize: 20,
              maxLines: 1,
              softWrap: true,
              textAlign: TextAlign.center,
              textOverflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
      StatelessRoundedCard(
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          child: Image(
            image: AssetImage(experienceStrings.experienceString_7),
            fit: BoxFit.scaleDown,
          ),
        ),
      ),
      StatefulHeroCard(
        childHeroTag: heroStrings.EXPERIENCE_HERO_TAG_2,
        childHeroOnTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) {
                return StatefulHeroWindow(
                  childHeroTag: heroStrings.EXPERIENCE_HERO_TAG_2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      HeaderText(
                        data: experienceStrings.experienceString_8,
                        fontSize: 30,
                        minFontSize: 10,
                        maxLines: 3,
                        softWrap: true,
                        textAlign: TextAlign.end,
                        textOverflow: TextOverflow.fade,
                      ),
                      Gap(5),
                      SubtitleText(
                        data: experienceStrings.experienceString_9,
                        fontSize: 18,
                        minFontSize: 12,
                        maxLines: 1,
                        softWrap: true,
                        textAlign: TextAlign.end,
                        textOverflow: TextOverflow.fade,
                      ),
                      SubtitleText(
                        data: experienceStrings.experienceString_10,
                        fontSize: 18,
                        minFontSize: 12,
                        maxLines: 1,
                        softWrap: true,
                        textAlign: TextAlign.end,
                        textOverflow: TextOverflow.fade,
                      ),
                      SubtitleText(
                        data: experienceStrings.experienceString_11,
                        fontSize: 18,
                        minFontSize: 12,
                        maxLines: 1,
                        softWrap: true,
                        textAlign: TextAlign.end,
                        textOverflow: TextOverflow.fade,
                      ),
                      SubtitleText(
                        data: experienceStrings.experienceString_12,
                        fontSize: 18,
                        minFontSize: 12,
                        maxLines: 1,
                        softWrap: true,
                        textAlign: TextAlign.end,
                        textOverflow: TextOverflow.fade,
                      ),
                      SubtitleText(
                        data: experienceStrings.experienceString_13,
                        fontSize: 18,
                        minFontSize: 12,
                        maxLines: 1,
                        softWrap: true,
                        textAlign: TextAlign.end,
                        textOverflow: TextOverflow.fade,
                      ),
                      SubtitleText(
                        data: experienceStrings.experienceString_14,
                        fontSize: 18,
                        minFontSize: 12,
                        maxLines: 1,
                        softWrap: true,
                        textAlign: TextAlign.end,
                        textOverflow: TextOverflow.fade,
                      ),
                      SubtitleText(
                        data: experienceStrings.experienceString_15,
                        fontSize: 18,
                        minFontSize: 12,
                        maxLines: 1,
                        softWrap: true,
                        textAlign: TextAlign.end,
                        textOverflow: TextOverflow.fade,
                      ),
                    ],
                  ),
                );
              },
            ),
          );
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            HeaderText(
              data: experienceStrings.experienceString_8,
              fontSize: 30,
              minFontSize: 10,
              maxLines: 4,
              softWrap: true,
              textAlign: TextAlign.end,
              textOverflow: TextOverflow.fade,
            ),
            Gap(5),
            ?landscapeWindow
                ? SubtitleText(
                    data: experienceStrings.experienceString_9,

                    fontSize: 18,
                    minFontSize: 12,
                    maxLines: 1,
                    softWrap: true,
                    textAlign: TextAlign.end,
                    textOverflow: TextOverflow.fade,
                  )
                : null,
            ?landscapeWindow
                ? SubtitleText(
                    data: experienceStrings.experienceString_10,

                    fontSize: 18,
                    minFontSize: 12,
                    maxLines: 1,
                    softWrap: true,
                    textAlign: TextAlign.end,
                    textOverflow: TextOverflow.fade,
                  )
                : null,
            ?landscapeWindow
                ? SubtitleText(
                    data: experienceStrings.experienceString_11,

                    fontSize: 18,
                    minFontSize: 12,
                    maxLines: 1,
                    softWrap: true,
                    textAlign: TextAlign.end,
                    textOverflow: TextOverflow.fade,
                  )
                : null,
            ?landscapeWindow
                ? SubtitleText(
                    data: experienceStrings.experienceString_12,

                    fontSize: 18,
                    minFontSize: 12,
                    maxLines: 1,
                    softWrap: true,
                    textAlign: TextAlign.end,
                    textOverflow: TextOverflow.fade,
                  )
                : null,
            ?landscapeWindow
                ? SubtitleText(
                    data: experienceStrings.experienceString_13,

                    fontSize: 18,
                    minFontSize: 12,
                    maxLines: 1,
                    softWrap: true,
                    textAlign: TextAlign.end,
                    textOverflow: TextOverflow.fade,
                  )
                : null,
            ?landscapeWindow
                ? SubtitleText(
                    data: experienceStrings.experienceString_14,

                    fontSize: 18,
                    minFontSize: 12,
                    maxLines: 1,
                    softWrap: true,
                    textAlign: TextAlign.end,
                    textOverflow: TextOverflow.fade,
                  )
                : null,
            ?landscapeWindow
                ? SubtitleText(
                    data: experienceStrings.experienceString_15,

                    fontSize: 18,
                    minFontSize: 12,
                    maxLines: 1,
                    softWrap: true,
                    textAlign: TextAlign.end,
                    textOverflow: TextOverflow.fade,
                  )
                : null,
          ],
        ),
      ),
      StatelessRoundedCard(
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          child: Image(
            image: AssetImage(experienceStrings.experienceString_16),
            fit: BoxFit.scaleDown,
          ),
        ),
      ),
      StatefulHeroCard(
        childHeroTag: heroStrings.EXPERIENCE_HERO_TAG_3,
        childHeroOnTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) {
                return StatefulHeroWindow(
                  childHeroTag: heroStrings.EXPERIENCE_HERO_TAG_3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      HeaderText(
                        data: experienceStrings.experienceString_17,
                        fontSize: 30,
                        minFontSize: 20,
                        maxLines: 4,
                        softWrap: true,
                        textAlign: TextAlign.end,
                        textOverflow: TextOverflow.fade,
                      ),
                      Gap(5),
                      SubtitleText(
                        data: experienceStrings.experienceString_18,
                        fontSize: 18,
                        minFontSize: 12,
                        maxLines: 1,
                        softWrap: true,
                        textAlign: TextAlign.end,
                        textOverflow: TextOverflow.fade,
                      ),
                      SubtitleText(
                        data: experienceStrings.experienceString_19,
                        fontSize: 18,
                        minFontSize: 12,
                        maxLines: 1,
                        softWrap: true,
                        textAlign: TextAlign.end,
                        textOverflow: TextOverflow.fade,
                      ),
                      SubtitleText(
                        data: experienceStrings.experienceString_20,
                        fontSize: 18,
                        minFontSize: 12,
                        maxLines: 1,
                        softWrap: true,
                        textAlign: TextAlign.end,
                        textOverflow: TextOverflow.fade,
                      ),
                      SubtitleText(
                        data: experienceStrings.experienceString_21,
                        fontSize: 18,
                        minFontSize: 12,
                        maxLines: 1,
                        softWrap: true,
                        textAlign: TextAlign.end,
                        textOverflow: TextOverflow.fade,
                      ),
                      SubtitleText(
                        data: experienceStrings.experienceString_22,
                        fontSize: 18,
                        minFontSize: 12,
                        maxLines: 1,
                        softWrap: true,
                        textAlign: TextAlign.end,
                        textOverflow: TextOverflow.fade,
                      ),
                      SubtitleText(
                        data: experienceStrings.experienceString_23,
                        fontSize: 18,
                        minFontSize: 12,
                        maxLines: 1,
                        softWrap: true,
                        textAlign: TextAlign.end,
                        textOverflow: TextOverflow.fade,
                      ),
                    ],
                  ),
                );
              },
            ),
          );
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            HeaderText(
              data: experienceStrings.experienceString_17,
              fontSize: 30,
              minFontSize: 20,
              maxLines: 4,
              softWrap: true,
              textAlign: TextAlign.end,
              textOverflow: TextOverflow.fade,
            ),
            Gap(5),
            ?landscapeWindow
                ? SubtitleText(
                    data: experienceStrings.experienceString_18,
                    fontSize: 18,
                    minFontSize: 12,
                    maxLines: 1,
                    softWrap: true,
                    textAlign: TextAlign.end,
                    textOverflow: TextOverflow.fade,
                  )
                : null,
            ?landscapeWindow
                ? SubtitleText(
                    data: experienceStrings.experienceString_19,
                    fontSize: 18,
                    minFontSize: 12,
                    maxLines: 1,
                    softWrap: true,
                    textAlign: TextAlign.end,
                    textOverflow: TextOverflow.fade,
                  )
                : null,
            ?landscapeWindow
                ? SubtitleText(
                    data: experienceStrings.experienceString_20,
                    fontSize: 18,
                    minFontSize: 12,
                    maxLines: 1,
                    softWrap: true,
                    textAlign: TextAlign.end,
                    textOverflow: TextOverflow.fade,
                  )
                : null,
            ?landscapeWindow
                ? SubtitleText(
                    data: experienceStrings.experienceString_21,
                    fontSize: 18,
                    minFontSize: 12,
                    maxLines: 1,
                    softWrap: true,
                    textAlign: TextAlign.end,
                    textOverflow: TextOverflow.fade,
                  )
                : null,
            ?landscapeWindow
                ? SubtitleText(
                    data: experienceStrings.experienceString_22,
                    fontSize: 18,
                    minFontSize: 12,
                    maxLines: 1,
                    softWrap: true,
                    textAlign: TextAlign.end,
                    textOverflow: TextOverflow.fade,
                  )
                : null,
            ?landscapeWindow
                ? SubtitleText(
                    data: experienceStrings.experienceString_23,
                    fontSize: 18,
                    minFontSize: 12,
                    maxLines: 1,
                    softWrap: true,
                    textAlign: TextAlign.end,
                    textOverflow: TextOverflow.fade,
                  )
                : null,
          ],
        ),
      ),
      StatefulHeroCard(
        childHeroTag: heroStrings.EXPERIENCE_HERO_TAG_4,
        childHeroOnTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) {
                return StatefulHeroWindow(
                  childHeroTag: heroStrings.EXPERIENCE_HERO_TAG_4,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      HeaderText(
                        data: experienceStrings.experienceString_24,
                        fontSize: 30,
                        minFontSize: 20,
                        maxLines: 4,
                        softWrap: true,
                        textAlign: TextAlign.end,
                        textOverflow: TextOverflow.fade,
                      ),
                      Gap(5),
                      SubtitleText(
                        data: experienceStrings.experienceString_25,
                        fontSize: 18,
                        minFontSize: 12,
                        maxLines: 1,
                        softWrap: true,
                        textAlign: TextAlign.end,
                        textOverflow: TextOverflow.fade,
                      ),
                      SubtitleText(
                        data: experienceStrings.experienceString_26,
                        fontSize: 18,
                        minFontSize: 12,
                        maxLines: 1,
                        softWrap: true,
                        textAlign: TextAlign.end,
                        textOverflow: TextOverflow.fade,
                      ),
                      SubtitleText(
                        data: experienceStrings.experienceString_27,
                        fontSize: 18,
                        minFontSize: 12,
                        maxLines: 1,
                        softWrap: true,
                        textAlign: TextAlign.end,
                        textOverflow: TextOverflow.fade,
                      ),
                      SubtitleText(
                        data: experienceStrings.experienceString_28,
                        fontSize: 18,
                        minFontSize: 12,
                        maxLines: 1,
                        softWrap: true,
                        textAlign: TextAlign.end,
                        textOverflow: TextOverflow.fade,
                      ),
                      SubtitleText(
                        data: experienceStrings.experienceString_29,
                        fontSize: 18,
                        minFontSize: 12,
                        maxLines: 1,
                        softWrap: true,
                        textAlign: TextAlign.end,
                        textOverflow: TextOverflow.fade,
                      ),
                      SubtitleText(
                        data: experienceStrings.experienceString_30,
                        fontSize: 18,
                        minFontSize: 12,
                        maxLines: 1,
                        softWrap: true,
                        textAlign: TextAlign.end,
                        textOverflow: TextOverflow.fade,
                      ),
                      SubtitleText(
                        data: experienceStrings.experienceString_31,
                        fontSize: 18,
                        minFontSize: 12,
                        maxLines: 1,
                        softWrap: true,
                        textAlign: TextAlign.end,
                        textOverflow: TextOverflow.fade,
                      ),
                      SubtitleText(
                        data: experienceStrings.experienceString_32,
                        fontSize: 18,
                        minFontSize: 12,
                        maxLines: 1,
                        softWrap: true,
                        textAlign: TextAlign.end,
                        textOverflow: TextOverflow.fade,
                      ),
                      SubtitleText(
                        data: experienceStrings.experienceString_33,
                        fontSize: 18,
                        minFontSize: 12,
                        maxLines: 1,
                        softWrap: true,
                        textAlign: TextAlign.end,
                        textOverflow: TextOverflow.fade,
                      ),
                      SubtitleText(
                        data: experienceStrings.experienceString_34,
                        fontSize: 18,
                        minFontSize: 12,
                        maxLines: 1,
                        softWrap: true,
                        textAlign: TextAlign.end,
                        textOverflow: TextOverflow.fade,
                      ),
                      SubtitleText(
                        data: experienceStrings.experienceString_35,
                        fontSize: 18,
                        minFontSize: 12,
                        maxLines: 1,
                        softWrap: true,
                        textAlign: TextAlign.end,
                        textOverflow: TextOverflow.fade,
                      ),
                      SubtitleText(
                        data: experienceStrings.experienceString_36,
                        fontSize: 18,
                        minFontSize: 12,
                        maxLines: 1,
                        softWrap: true,
                        textAlign: TextAlign.end,
                        textOverflow: TextOverflow.fade,
                      ),
                    ],
                  ),
                );
              },
            ),
          );
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            HeaderText(
              data: experienceStrings.experienceString_24,
              fontSize: 30,
              minFontSize: 20,
              maxLines: 4,
              softWrap: true,
              textAlign: TextAlign.end,
              textOverflow: TextOverflow.fade,
            ),
            Gap(5),
            ?landscapeWindow
                ? SubtitleText(
                    data: experienceStrings.experienceString_25,
                    fontSize: 18,
                    minFontSize: 12,
                    maxLines: 1,
                    softWrap: true,
                    textAlign: TextAlign.end,
                    textOverflow: TextOverflow.fade,
                  )
                : null,
            ?landscapeWindow
                ? SubtitleText(
                    data: experienceStrings.experienceString_26,
                    fontSize: 18,
                    minFontSize: 12,
                    maxLines: 1,
                    softWrap: true,
                    textAlign: TextAlign.end,
                    textOverflow: TextOverflow.fade,
                  )
                : null,
            ?landscapeWindow
                ? SubtitleText(
                    data: experienceStrings.experienceString_27,
                    fontSize: 18,
                    minFontSize: 12,
                    maxLines: 1,
                    softWrap: true,
                    textAlign: TextAlign.end,
                    textOverflow: TextOverflow.fade,
                  )
                : null,
            ?landscapeWindow
                ? SubtitleText(
                    data: experienceStrings.experienceString_28,
                    fontSize: 18,
                    minFontSize: 12,
                    maxLines: 1,
                    softWrap: true,
                    textAlign: TextAlign.end,
                    textOverflow: TextOverflow.fade,
                  )
                : null,
            ?landscapeWindow
                ? SubtitleText(
                    data: experienceStrings.experienceString_29,
                    fontSize: 18,
                    minFontSize: 12,
                    maxLines: 1,
                    softWrap: true,
                    textAlign: TextAlign.end,
                    textOverflow: TextOverflow.fade,
                  )
                : null,
            ?landscapeWindow
                ? SubtitleText(
                    data: experienceStrings.experienceString_30,
                    fontSize: 18,
                    minFontSize: 12,
                    maxLines: 1,
                    softWrap: true,
                    textAlign: TextAlign.end,
                    textOverflow: TextOverflow.fade,
                  )
                : null,
            ?landscapeWindow
                ? SubtitleText(
                    data: experienceStrings.experienceString_31,
                    fontSize: 18,
                    minFontSize: 12,
                    maxLines: 1,
                    softWrap: true,
                    textAlign: TextAlign.end,
                    textOverflow: TextOverflow.fade,
                  )
                : null,
            ?landscapeWindow
                ? SubtitleText(
                    data: experienceStrings.experienceString_32,
                    fontSize: 18,
                    minFontSize: 12,
                    maxLines: 1,
                    softWrap: true,
                    textAlign: TextAlign.end,
                    textOverflow: TextOverflow.fade,
                  )
                : null,
            ?landscapeWindow
                ? SubtitleText(
                    data: experienceStrings.experienceString_33,
                    fontSize: 18,
                    minFontSize: 12,
                    maxLines: 1,
                    softWrap: true,
                    textAlign: TextAlign.end,
                    textOverflow: TextOverflow.fade,
                  )
                : null,
            ?landscapeWindow
                ? SubtitleText(
                    data: experienceStrings.experienceString_34,
                    fontSize: 18,
                    minFontSize: 12,
                    maxLines: 1,
                    softWrap: true,
                    textAlign: TextAlign.end,
                    textOverflow: TextOverflow.fade,
                  )
                : null,
            ?landscapeWindow
                ? SubtitleText(
                    data: experienceStrings.experienceString_35,
                    fontSize: 18,
                    minFontSize: 12,
                    maxLines: 1,
                    softWrap: true,
                    textAlign: TextAlign.end,
                    textOverflow: TextOverflow.fade,
                  )
                : null,
            ?landscapeWindow
                ? SubtitleText(
                    data: experienceStrings.experienceString_36,
                    fontSize: 18,
                    minFontSize: 12,
                    maxLines: 1,
                    softWrap: true,
                    textAlign: TextAlign.end,
                    textOverflow: TextOverflow.fade,
                  )
                : null,
          ],
        ),
      ),
      StatefulHeroCard(
        childHeroTag: heroStrings.EXPERIENCE_HERO_TAG_5,
        childHeroOnTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) {
                return StatefulHeroWindow(
                  childHeroTag: heroStrings.EXPERIENCE_HERO_TAG_5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      HeaderText(
                        data: experienceStrings.experienceString_37,
                        fontSize: 30,
                        minFontSize: 20,
                        maxLines: 4,
                        softWrap: true,
                        textAlign: TextAlign.end,
                        textOverflow: TextOverflow.fade,
                      ),
                      Gap(5),
                      SubtitleText(
                        data: experienceStrings.experienceString_38,
                        fontSize: 18,
                        minFontSize: 12,
                        maxLines: 1,
                        softWrap: true,
                        textAlign: TextAlign.end,
                        textOverflow: TextOverflow.fade,
                      ),
                      SubtitleText(
                        data: experienceStrings.experienceString_39,
                        fontSize: 18,
                        minFontSize: 12,
                        maxLines: 1,
                        softWrap: true,
                        textAlign: TextAlign.end,
                        textOverflow: TextOverflow.fade,
                      ),
                      SubtitleText(
                        data: experienceStrings.experienceString_40,
                        fontSize: 18,
                        minFontSize: 12,
                        maxLines: 1,
                        softWrap: true,
                        textAlign: TextAlign.end,
                        textOverflow: TextOverflow.fade,
                      ),
                      SubtitleText(
                        data: experienceStrings.experienceString_41,
                        fontSize: 18,
                        minFontSize: 12,
                        maxLines: 1,
                        softWrap: true,
                        textAlign: TextAlign.end,
                        textOverflow: TextOverflow.fade,
                      ),
                      SubtitleText(
                        data: experienceStrings.experienceString_42,
                        fontSize: 18,
                        minFontSize: 12,
                        maxLines: 1,
                        softWrap: true,
                        textAlign: TextAlign.end,
                        textOverflow: TextOverflow.fade,
                      ),
                      SubtitleText(
                        data: experienceStrings.experienceString_43,
                        fontSize: 18,
                        minFontSize: 12,
                        maxLines: 1,
                        softWrap: true,
                        textAlign: TextAlign.end,
                        textOverflow: TextOverflow.fade,
                      ),
                      SubtitleText(
                        data: experienceStrings.experienceString_44,
                        fontSize: 18,
                        minFontSize: 12,
                        maxLines: 1,
                        softWrap: true,
                        textAlign: TextAlign.end,
                        textOverflow: TextOverflow.fade,
                      ),
                      SubtitleText(
                        data: experienceStrings.experienceString_45,
                        fontSize: 18,
                        minFontSize: 12,
                        maxLines: 1,
                        softWrap: true,
                        textAlign: TextAlign.end,
                        textOverflow: TextOverflow.fade,
                      ),
                      SubtitleText(
                        data: experienceStrings.experienceString_46,
                        fontSize: 18,
                        minFontSize: 12,
                        maxLines: 1,
                        softWrap: true,
                        textAlign: TextAlign.end,
                        textOverflow: TextOverflow.fade,
                      ),
                      SubtitleText(
                        data: experienceStrings.experienceString_47,
                        fontSize: 18,
                        minFontSize: 12,
                        maxLines: 1,
                        softWrap: true,
                        textAlign: TextAlign.end,
                        textOverflow: TextOverflow.fade,
                      ),
                      SubtitleText(
                        data: experienceStrings.experienceString_48,
                        fontSize: 18,
                        minFontSize: 12,
                        maxLines: 1,
                        softWrap: true,
                        textAlign: TextAlign.end,
                        textOverflow: TextOverflow.fade,
                      ),
                      SubtitleText(
                        data: experienceStrings.experienceString_49,
                        fontSize: 18,
                        minFontSize: 12,
                        maxLines: 1,
                        softWrap: true,
                        textAlign: TextAlign.end,
                        textOverflow: TextOverflow.fade,
                      ),
                      SubtitleText(
                        data: experienceStrings.experienceString_50,
                        fontSize: 18,
                        minFontSize: 12,
                        maxLines: 1,
                        softWrap: true,
                        textAlign: TextAlign.end,
                        textOverflow: TextOverflow.fade,
                      ),
                      SubtitleText(
                        data: experienceStrings.experienceString_51,
                        fontSize: 18,
                        minFontSize: 12,
                        maxLines: 1,
                        softWrap: true,
                        textAlign: TextAlign.end,
                        textOverflow: TextOverflow.fade,
                      ),
                      SubtitleText(
                        data: experienceStrings.experienceString_52,
                        fontSize: 18,
                        minFontSize: 12,
                        maxLines: 1,
                        softWrap: true,
                        textAlign: TextAlign.end,
                        textOverflow: TextOverflow.fade,
                      ),
                      SubtitleText(
                        data: experienceStrings.experienceString_53,
                        fontSize: 18,
                        minFontSize: 12,
                        maxLines: 1,
                        softWrap: true,
                        textAlign: TextAlign.end,
                        textOverflow: TextOverflow.fade,
                      ),
                      SubtitleText(
                        data: experienceStrings.experienceString_54,
                        fontSize: 18,
                        minFontSize: 12,
                        maxLines: 1,
                        softWrap: true,
                        textAlign: TextAlign.end,
                        textOverflow: TextOverflow.fade,
                      ),
                    ],
                  ),
                );
              },
            ),
          );
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            HeaderText(
              data: experienceStrings.experienceString_37,
              fontSize: 30,
              minFontSize: 20,
              maxLines: 4,
              softWrap: true,
              textAlign: TextAlign.end,
              textOverflow: TextOverflow.fade,
            ),
            Gap(5),
            ?landscapeWindow
                ? SubtitleText(
                    data: experienceStrings.experienceString_38,
                    fontSize: 18,
                    minFontSize: 12,
                    maxLines: 1,
                    softWrap: true,
                    textAlign: TextAlign.end,
                    textOverflow: TextOverflow.fade,
                  )
                : null,
            ?landscapeWindow
                ? SubtitleText(
                    data: experienceStrings.experienceString_39,
                    fontSize: 18,
                    minFontSize: 12,
                    maxLines: 1,
                    softWrap: true,
                    textAlign: TextAlign.end,
                    textOverflow: TextOverflow.fade,
                  )
                : null,
            ?landscapeWindow
                ? SubtitleText(
                    data: experienceStrings.experienceString_40,
                    fontSize: 18,
                    minFontSize: 12,
                    maxLines: 1,
                    softWrap: true,
                    textAlign: TextAlign.end,
                    textOverflow: TextOverflow.fade,
                  )
                : null,
            ?landscapeWindow
                ? SubtitleText(
                    data: experienceStrings.experienceString_41,
                    fontSize: 18,
                    minFontSize: 12,
                    maxLines: 1,
                    softWrap: true,
                    textAlign: TextAlign.end,
                    textOverflow: TextOverflow.fade,
                  )
                : null,
            ?landscapeWindow
                ? SubtitleText(
                    data: experienceStrings.experienceString_42,
                    fontSize: 18,
                    minFontSize: 12,
                    maxLines: 1,
                    softWrap: true,
                    textAlign: TextAlign.end,
                    textOverflow: TextOverflow.fade,
                  )
                : null,
            ?landscapeWindow
                ? SubtitleText(
                    data: experienceStrings.experienceString_43,
                    fontSize: 18,
                    minFontSize: 12,
                    maxLines: 1,
                    softWrap: true,
                    textAlign: TextAlign.end,
                    textOverflow: TextOverflow.fade,
                  )
                : null,
            ?landscapeWindow
                ? SubtitleText(
                    data: experienceStrings.experienceString_44,
                    fontSize: 18,
                    minFontSize: 12,
                    maxLines: 1,
                    softWrap: true,
                    textAlign: TextAlign.end,
                    textOverflow: TextOverflow.fade,
                  )
                : null,
            ?landscapeWindow
                ? SubtitleText(
                    data: experienceStrings.experienceString_45,
                    fontSize: 18,
                    minFontSize: 12,
                    maxLines: 1,
                    softWrap: true,
                    textAlign: TextAlign.end,
                    textOverflow: TextOverflow.fade,
                  )
                : null,
            ?landscapeWindow
                ? SubtitleText(
                    data: experienceStrings.experienceString_46,
                    fontSize: 18,
                    minFontSize: 12,
                    maxLines: 1,
                    softWrap: true,
                    textAlign: TextAlign.end,
                    textOverflow: TextOverflow.fade,
                  )
                : null,
            ?landscapeWindow
                ? SubtitleText(
                    data: experienceStrings.experienceString_47,
                    fontSize: 18,
                    minFontSize: 12,
                    maxLines: 1,
                    softWrap: true,
                    textAlign: TextAlign.end,
                    textOverflow: TextOverflow.fade,
                  )
                : null,
            ?landscapeWindow
                ? SubtitleText(
                    data: experienceStrings.experienceString_48,
                    fontSize: 18,
                    minFontSize: 12,
                    maxLines: 1,
                    softWrap: true,
                    textAlign: TextAlign.end,
                    textOverflow: TextOverflow.fade,
                  )
                : null,
            ?landscapeWindow
                ? SubtitleText(
                    data: experienceStrings.experienceString_49,
                    fontSize: 18,
                    minFontSize: 12,
                    maxLines: 1,
                    softWrap: true,
                    textAlign: TextAlign.end,
                    textOverflow: TextOverflow.fade,
                  )
                : null,
            ?landscapeWindow
                ? SubtitleText(
                    data: experienceStrings.experienceString_50,
                    fontSize: 18,
                    minFontSize: 12,
                    maxLines: 1,
                    softWrap: true,
                    textAlign: TextAlign.end,
                    textOverflow: TextOverflow.fade,
                  )
                : null,
            ?landscapeWindow
                ? SubtitleText(
                    data: experienceStrings.experienceString_51,
                    fontSize: 18,
                    minFontSize: 12,
                    maxLines: 1,
                    softWrap: true,
                    textAlign: TextAlign.end,
                    textOverflow: TextOverflow.fade,
                  )
                : null,
            ?landscapeWindow
                ? SubtitleText(
                    data: experienceStrings.experienceString_52,
                    fontSize: 18,
                    minFontSize: 12,
                    maxLines: 1,
                    softWrap: true,
                    textAlign: TextAlign.end,
                    textOverflow: TextOverflow.fade,
                  )
                : null,
            ?landscapeWindow
                ? SubtitleText(
                    data: experienceStrings.experienceString_53,
                    fontSize: 18,
                    minFontSize: 12,
                    maxLines: 1,
                    softWrap: true,
                    textAlign: TextAlign.end,
                    textOverflow: TextOverflow.fade,
                  )
                : null,
            ?landscapeWindow
                ? SubtitleText(
                    data: experienceStrings.experienceString_54,
                    fontSize: 18,
                    minFontSize: 12,
                    maxLines: 1,
                    softWrap: true,
                    textAlign: TextAlign.end,
                    textOverflow: TextOverflow.fade,
                  )
                : null,
          ],
        ),
      ),
      StatefulHeroCard(
        childHeroTag: heroStrings.EXPERIENCE_HERO_TAG_6,
        childHeroOnTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) {
                return StatefulHeroWindow(
                  childHeroTag: heroStrings.EXPERIENCE_HERO_TAG_6,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      HeaderText(
                        data: experienceStrings.experienceString_55,
                        fontSize: 30,
                        minFontSize: 20,
                        maxLines: 4,
                        softWrap: true,
                        textAlign: TextAlign.end,
                        textOverflow: TextOverflow.fade,
                      ),
                      Gap(5),
                      SubtitleText(
                        data: experienceStrings.experienceString_56,
                        fontSize: 18,
                        minFontSize: 12,
                        maxLines: 1,
                        softWrap: true,
                        textAlign: TextAlign.end,
                        textOverflow: TextOverflow.fade,
                      ),
                      SubtitleText(
                        data: experienceStrings.experienceString_57,
                        fontSize: 18,
                        minFontSize: 12,
                        maxLines: 1,
                        softWrap: true,
                        textAlign: TextAlign.end,
                        textOverflow: TextOverflow.fade,
                      ),
                      SubtitleText(
                        data: experienceStrings.experienceString_58,
                        fontSize: 18,
                        minFontSize: 12,
                        maxLines: 1,
                        softWrap: true,
                        textAlign: TextAlign.end,
                        textOverflow: TextOverflow.fade,
                      ),
                      SubtitleText(
                        data: experienceStrings.experienceString_59,
                        fontSize: 18,
                        minFontSize: 12,
                        maxLines: 1,
                        softWrap: true,
                        textAlign: TextAlign.end,
                        textOverflow: TextOverflow.fade,
                      ),
                      SubtitleText(
                        data: experienceStrings.experienceString_60,
                        fontSize: 18,
                        minFontSize: 12,
                        maxLines: 1,
                        softWrap: true,
                        textAlign: TextAlign.end,
                        textOverflow: TextOverflow.fade,
                      ),
                      SubtitleText(
                        data: experienceStrings.experienceString_61,
                        fontSize: 18,
                        minFontSize: 12,
                        maxLines: 1,
                        softWrap: true,
                        textAlign: TextAlign.end,
                        textOverflow: TextOverflow.fade,
                      ),
                    ],
                  ),
                );
              },
            ),
          );
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            HeaderText(
              data: experienceStrings.experienceString_55,
              fontSize: 30,
              minFontSize: 20,
              maxLines: 4,
              softWrap: true,
              textAlign: TextAlign.end,
              textOverflow: TextOverflow.fade,
            ),
            Gap(5),
            ?landscapeWindow
                ? SubtitleText(
                    data: experienceStrings.experienceString_56,
                    fontSize: 18,
                    minFontSize: 12,
                    maxLines: 1,
                    softWrap: true,
                    textAlign: TextAlign.end,
                    textOverflow: TextOverflow.fade,
                  )
                : null,
            ?landscapeWindow
                ? SubtitleText(
                    data: experienceStrings.experienceString_57,
                    fontSize: 18,
                    minFontSize: 12,
                    maxLines: 1,
                    softWrap: true,
                    textAlign: TextAlign.end,
                    textOverflow: TextOverflow.fade,
                  )
                : null,
            ?landscapeWindow
                ? SubtitleText(
                    data: experienceStrings.experienceString_58,
                    fontSize: 18,
                    minFontSize: 12,
                    maxLines: 1,
                    softWrap: true,
                    textAlign: TextAlign.end,
                    textOverflow: TextOverflow.fade,
                  )
                : null,
            ?landscapeWindow
                ? SubtitleText(
                    data: experienceStrings.experienceString_59,
                    fontSize: 18,
                    minFontSize: 12,
                    maxLines: 1,
                    softWrap: true,
                    textAlign: TextAlign.end,
                    textOverflow: TextOverflow.fade,
                  )
                : null,
            ?landscapeWindow
                ? SubtitleText(
                    data: experienceStrings.experienceString_60,
                    fontSize: 18,
                    minFontSize: 12,
                    maxLines: 1,
                    softWrap: true,
                    textAlign: TextAlign.end,
                    textOverflow: TextOverflow.fade,
                  )
                : null,
            ?landscapeWindow
                ? SubtitleText(
                    data: experienceStrings.experienceString_61,
                    fontSize: 18,
                    minFontSize: 12,
                    maxLines: 1,
                    softWrap: true,
                    textAlign: TextAlign.end,
                    textOverflow: TextOverflow.fade,
                  )
                : null,
          ],
        ),
      ),
      StatefulHeroCard(
        childHeroTag: heroStrings.EXPERIENCE_HERO_TAG_7,
        childHeroOnTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) {
                return StatefulHeroWindow(
                  childHeroTag: heroStrings.EXPERIENCE_HERO_TAG_7,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      HeaderText(
                        data: experienceStrings.experienceString_62,
                        fontSize: 30,
                        minFontSize: 20,
                        maxLines: 4,
                        softWrap: true,
                        textAlign: TextAlign.end,
                        textOverflow: TextOverflow.fade,
                      ),
                      Gap(5),
                      SubtitleText(
                        data: experienceStrings.experienceString_63,
                        fontSize: 18,
                        minFontSize: 12,
                        maxLines: 1,
                        softWrap: true,
                        textAlign: TextAlign.end,
                        textOverflow: TextOverflow.fade,
                      ),
                      SubtitleText(
                        data:
                        experienceStrings.experienceString_64,
                        fontSize: 18,
                        minFontSize: 12,
                        maxLines: 1,
                        softWrap: true,
                        textAlign: TextAlign.end,
                        textOverflow: TextOverflow.fade,
                      ),
                      SubtitleText(
                        data: experienceStrings.experienceString_65,
                        fontSize: 18,
                        minFontSize: 12,
                        maxLines: 1,
                        softWrap: true,
                        textAlign: TextAlign.end,
                        textOverflow: TextOverflow.fade,
                      ),
                      SubtitleText(
                        data: experienceStrings.experienceString_66,
                        fontSize: 18,
                        minFontSize: 12,
                        maxLines: 1,
                        softWrap: true,
                        textAlign: TextAlign.end,
                        textOverflow: TextOverflow.fade,
                      ),
                      SubtitleText(
                        data: experienceStrings.experienceString_67,
                        fontSize: 18,
                        minFontSize: 12,
                        maxLines: 1,
                        softWrap: true,
                        textAlign: TextAlign.end,
                        textOverflow: TextOverflow.fade,
                      ),
                      SubtitleText(
                        data: experienceStrings.experienceString_68,
                        fontSize: 18,
                        minFontSize: 12,
                        maxLines: 1,
                        softWrap: true,
                        textAlign: TextAlign.end,
                        textOverflow: TextOverflow.fade,
                      ),
                      SubtitleText(
                        data: experienceStrings.experienceString_69,
                        fontSize: 18,
                        minFontSize: 12,
                        maxLines: 1,
                        softWrap: true,
                        textAlign: TextAlign.end,
                        textOverflow: TextOverflow.fade,
                      ),
                      SubtitleText(
                        data: experienceStrings.experienceString_70,
                        fontSize: 18,
                        minFontSize: 12,
                        maxLines: 1,
                        softWrap: true,
                        textAlign: TextAlign.end,
                        textOverflow: TextOverflow.fade,
                      ),
                    ],
                  ),
                );
              },
            ),
          );
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            HeaderText(
              data: experienceStrings.experienceString_62,
              fontSize: 30,
              minFontSize: 20,
              maxLines: 4,
              softWrap: true,
              textAlign: TextAlign.end,
              textOverflow: TextOverflow.fade,
            ),
            Gap(5),
            ?landscapeWindow
                ? SubtitleText(
                    data: experienceStrings.experienceString_63,
                    fontSize: 18,
                    minFontSize: 12,
                    maxLines: 1,
                    softWrap: true,
                    textAlign: TextAlign.end,
                    textOverflow: TextOverflow.fade,
                  )
                : null,
            ?landscapeWindow
                ? SubtitleText(
                    data:
                    experienceStrings.experienceString_64,
                    fontSize: 18,
                    minFontSize: 12,
                    maxLines: 1,
                    softWrap: true,
                    textAlign: TextAlign.end,
                    textOverflow: TextOverflow.fade,
                  )
                : null,
            ?landscapeWindow
                ? SubtitleText(
                    data: experienceStrings.experienceString_65,
                    fontSize: 18,
                    minFontSize: 12,
                    maxLines: 1,
                    softWrap: true,
                    textAlign: TextAlign.end,
                    textOverflow: TextOverflow.fade,
                  )
                : null,
            ?landscapeWindow
                ? SubtitleText(
                    data: experienceStrings.experienceString_66,
                    fontSize: 18,
                    minFontSize: 12,
                    maxLines: 1,
                    softWrap: true,
                    textAlign: TextAlign.end,
                    textOverflow: TextOverflow.fade,
                  )
                : null,
            ?landscapeWindow
                ? SubtitleText(
                    data: experienceStrings.experienceString_67,
                    fontSize: 18,
                    minFontSize: 12,
                    maxLines: 1,
                    softWrap: true,
                    textAlign: TextAlign.end,
                    textOverflow: TextOverflow.fade,
                  )
                : null,
            ?landscapeWindow
                ? SubtitleText(
                    data: experienceStrings.experienceString_68,
                    fontSize: 18,
                    minFontSize: 12,
                    maxLines: 1,
                    softWrap: true,
                    textAlign: TextAlign.end,
                    textOverflow: TextOverflow.fade,
                  )
                : null,
            ?landscapeWindow
                ? SubtitleText(
                    data: experienceStrings.experienceString_69,
                    fontSize: 18,
                    minFontSize: 12,
                    maxLines: 1,
                    softWrap: true,
                    textAlign: TextAlign.end,
                    textOverflow: TextOverflow.fade,
                  )
                : null,
            ?landscapeWindow
                ? SubtitleText(
                    data: experienceStrings.experienceString_70,
                    fontSize: 18,
                    minFontSize: 12,
                    maxLines: 1,
                    softWrap: true,
                    textAlign: TextAlign.end,
                    textOverflow: TextOverflow.fade,
                  )
                : null,
          ],
        ),
      ),
      StatelessRoundedCard(
        child: HeaderText(
          data: experienceStrings.experienceString_71,
          fontSize: 30,
          minFontSize: 20,
          maxLines: 3,
          softWrap: true,
          textAlign: TextAlign.end,
          textOverflow: TextOverflow.fade,
        ),
      ),
      StatelessRoundedCard(
        child: HeaderText(
          data: experienceStrings.experienceString_72,
          fontSize: 30,
          minFontSize: 20,
          maxLines: 3,
          softWrap: true,
          textAlign: TextAlign.end,
          textOverflow: TextOverflow.fade,
        ),
      ),
      StatelessRoundedCard(
        child: HeaderText(
          data: experienceStrings.experienceString_73,
          fontSize: 30,
          minFontSize: 20,
          maxLines: 3,
          softWrap: true,
          textAlign: TextAlign.end,
          textOverflow: TextOverflow.fade,
        ),
      ),
      Gap(5),
    ],
    addAutomaticKeepAlives: false,
    addRepaintBoundaries: false,
  );
}

SliverQuiltedGridDelegate buildSliverLandscapeGridDelegate() {
  return SliverQuiltedGridDelegate(
    crossAxisCount: 64,
    pattern: [
      QuiltedGridTile(4, 64),
      QuiltedGridTile(3, 64),
      QuiltedGridTile(20, 32),
      QuiltedGridTile(20, 32),
      QuiltedGridTile(4, 64),
      QuiltedGridTile(16, 32),
      QuiltedGridTile(16, 32),
      QuiltedGridTile(16, 32),
      QuiltedGridTile(16, 32),
      QuiltedGridTile(28, 32),
      QuiltedGridTile(28, 32),
      QuiltedGridTile(16, 32),
      QuiltedGridTile(16, 32),
      QuiltedGridTile(4, 64),
      QuiltedGridTile(4, 64),
      QuiltedGridTile(4, 64),
      QuiltedGridTile(6, 64),
    ],
  );
}

SliverQuiltedGridDelegate buildSliverPortraitGridDelegate() {
  return SliverQuiltedGridDelegate(
    crossAxisCount: 64,
    pattern: [
      QuiltedGridTile(16, 64),
      QuiltedGridTile(10, 64),
      QuiltedGridTile(20, 64),
      QuiltedGridTile(30, 64),
      QuiltedGridTile(14, 64),
      QuiltedGridTile(20, 64),
      QuiltedGridTile(30, 64),
      QuiltedGridTile(20, 64),
      QuiltedGridTile(30, 64),
      QuiltedGridTile(30, 64),
      QuiltedGridTile(35, 64),
      QuiltedGridTile(35, 64),
      QuiltedGridTile(35, 64),
      QuiltedGridTile(35, 64),
      QuiltedGridTile(35, 64),
      QuiltedGridTile(35, 64),
      QuiltedGridTile(16, 64),
    ],
  );
}
