import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:gap/gap.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:thomas_popham_portfolio/logic/utils/uri_utils.dart';
import 'package:thomas_popham_portfolio/ui/common/stateful_hero_card.dart';
import 'package:thomas_popham_portfolio/ui/common/stateful_hero_window.dart';
import '../../common/header_text.dart';
import '../../common/image_not_found.dart';
import '../../common/title_text.dart';
import 'cards/home_banner_card.dart';
import 'cards/contact_form_card.dart';
import '../../common/stateless_rounded_card.dart';
import '../../common/subtitle_text.dart';
import '../../../constants/hero_strings.dart' as heroStrings;
import '../../../constants/home_strings.dart' as homeStrings;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late ScrollController _homeScrollController;
  bool landscapeWindow = false;
  bool foldableWindow = false;

  @override
  void initState() {
    super.initState();
    _homeScrollController = ScrollController();
  }

  @override
  void dispose() {
    super.dispose();
    _homeScrollController.dispose();
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
        controller: _homeScrollController,
        physics: const BouncingScrollPhysics(),
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
    addAutomaticKeepAlives: false,
    addRepaintBoundaries: false,
    <Widget>[
      HomeBannerCard(),
      StatelessRoundedCard(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              child: CachedNetworkImage(
                imageUrl:
                    "https://images.unsplash.com/photo-1607799279861-4dd421887fb3?q=80&force=true&w=1920",
                placeholder: (context, url) =>
                    Center(child: const CircularProgressIndicator()),
                errorWidget: (context, url, error) =>
                    Center(child: SizedBox(child: ImageNotFound())),
                height: landscapeWindow ? 500 : 300,
                width: landscapeWindow ? 700 : 400,
                fit: BoxFit.cover,
              ),
            ),
            SubtitleText(
              data: homeStrings.homeString_4,
              fontSize: 10,
              minFontSize: 10,
              maxLines: 2,
              softWrap: true,
              textAlign: TextAlign.center,
              textOverflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
      StatefulHeroCard(
        childHeroTag: heroStrings.HOME_HERO_TAG_1,
        child: Column(
          children: [
            TitleText(
              data: homeStrings.homeString_5,
              fontSize: 36,
              minFontSize: 16,
              maxLines: 2,
              softWrap: true,
              textAlign: TextAlign.center,
              textOverflow: TextOverflow.ellipsis,
            ),
            Gap(15),
            landscapeWindow
                ? SubtitleText(
                    data: homeStrings.homeString_6,
                    fontSize: 16,
                    minFontSize: 12,
                    maxLines: 25,
                    softWrap: true,
                    textAlign: TextAlign.end,
                    textOverflow: TextOverflow.ellipsis,
                  )
                : SubtitleText(
                    data: homeStrings.homeString_6,
                    fontSize: 16,
                    minFontSize: 14,
                    maxLines: 3,
                    softWrap: true,
                    textAlign: TextAlign.end,
                    textOverflow: TextOverflow.ellipsis,
                  ),
            Gap(15),
            landscapeWindow
                ? SubtitleText(
                    data: homeStrings.homeString_7,
                    fontSize: 16,
                    minFontSize: 12,
                    maxLines: 25,
                    softWrap: true,
                    textAlign: TextAlign.end,
                    textOverflow: TextOverflow.ellipsis,
                  )
                : SubtitleText(
                    data: homeStrings.homeString_7,
                    fontSize: 16,
                    minFontSize: 14,
                    maxLines: 3,
                    softWrap: true,
                    textAlign: TextAlign.end,
                    textOverflow: TextOverflow.ellipsis,
                  ),
            Gap(15),
            landscapeWindow
                ? SubtitleText(
                    data: homeStrings.homeString_8,
                    fontSize: 16,
                    minFontSize: 12,
                    maxLines: 25,
                    softWrap: true,
                    textAlign: TextAlign.end,
                    textOverflow: TextOverflow.ellipsis,
                  )
                : SubtitleText(
                    data: homeStrings.homeString_8,
                    fontSize: 16,
                    minFontSize: 14,
                    maxLines: 3,
                    softWrap: true,
                    textAlign: TextAlign.end,
                    textOverflow: TextOverflow.ellipsis,
                  ),
          ],
        ),
        childHeroOnTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) {
                return StatefulHeroWindow(
                  childHeroTag: heroStrings.HOME_HERO_TAG_1,
                  child: Column(
                    children: [
                      TitleText(
                        data: homeStrings.homeString_5,
                        fontSize: 36,
                        minFontSize: 16,
                        maxLines: 2,
                        softWrap: true,
                        textAlign: TextAlign.center,
                        textOverflow: TextOverflow.ellipsis,
                      ),
                      Gap(15),
                      SubtitleText(
                        data: homeStrings.homeString_6,
                        fontSize: 16,
                        minFontSize: 12,
                        maxLines: 25,
                        softWrap: true,
                        textAlign: TextAlign.end,
                        textOverflow: TextOverflow.ellipsis,
                      ),
                      Gap(15),
                      SubtitleText(
                        data: homeStrings.homeString_7,
                        fontSize: 16,
                        minFontSize: 12,
                        maxLines: 25,
                        softWrap: true,
                        textAlign: TextAlign.end,
                        textOverflow: TextOverflow.ellipsis,
                      ),
                      Gap(15),
                      SubtitleText(
                        data: homeStrings.homeString_8,
                        fontSize: 16,
                        minFontSize: 12,
                        maxLines: 25,
                        softWrap: true,
                        textAlign: TextAlign.end,
                        textOverflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                );
              },
            ),
          );
        },
      ),

      StatefulHeroCard(
        childHeroTag: heroStrings.HOME_HERO_TAG_2,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TitleText(
              data: homeStrings.homeString_9,
              fontSize: 36,
              minFontSize: 16,
              maxLines: 2,
              softWrap: true,
              textAlign: TextAlign.end,
              textOverflow: TextOverflow.ellipsis,
            ),
            Gap(10),
            HeaderText(
              data: homeStrings.homeString_10,
              fontSize: 30,
              minFontSize: 20,
              maxLines: 2,
              softWrap: true,
              textAlign: TextAlign.end,
              textOverflow: TextOverflow.fade,
            ),
            ?landscapeWindow ? SubtitleText(
              data: homeStrings.homeString_11,
              fontSize: 20,
              minFontSize: 10,
              maxLines: 1,
              softWrap: true,
              textAlign: TextAlign.end,
              textOverflow: TextOverflow.fade,
            ) : null,
            Gap(5),
            HeaderText(
              data: homeStrings.homeString_12,
              fontSize: 30,
              minFontSize: 20,
              maxLines: 1,
              softWrap: true,
              textAlign: TextAlign.end,
              textOverflow: TextOverflow.fade,
            ),
            ?landscapeWindow ? SubtitleText(
              data: homeStrings.homeString_13,
              fontSize: 20,
              minFontSize: 10,
              maxLines: 1,
              softWrap: true,
              textAlign: TextAlign.end,
              textOverflow: TextOverflow.fade,
            ) : null,
            Gap(5),
            HeaderText(
              data: homeStrings.homeString_14,
              fontSize: 30,
              minFontSize: 20,
              maxLines: 1,
              softWrap: true,
              textAlign: TextAlign.end,
              textOverflow: TextOverflow.fade,
            ),
            ?landscapeWindow ? SubtitleText(
              data: homeStrings.homeString_15,
              fontSize: 20,
              minFontSize: 10,
              maxLines: 2,
              softWrap: true,
              textAlign: TextAlign.end,
              textOverflow: TextOverflow.fade,
            ) : null,
            Gap(5),
            HeaderText(
              data: homeStrings.homeString_16,
              fontSize: 30,
              minFontSize: 20,
              maxLines: 2,
              softWrap: true,
              textAlign: TextAlign.end,
              textOverflow: TextOverflow.fade,
            ),
            ?landscapeWindow ? SubtitleText(
              data: homeStrings.homeString_17,
              fontSize: 20,
              minFontSize: 10,
              maxLines: 1,
              softWrap: true,
              textAlign: TextAlign.end,
              textOverflow: TextOverflow.fade,
            ) : null,
            Gap(5),
            HeaderText(
              data: homeStrings.homeString_18,
              fontSize: 30,
              minFontSize: 20,
              maxLines: 1,
              softWrap: true,
              textAlign: TextAlign.end,
              textOverflow: TextOverflow.fade,
            ),
            ?landscapeWindow ? SubtitleText(
              data: homeStrings.homeString_19,
              fontSize: 20,
              minFontSize: 10,
              maxLines: 1,
              softWrap: true,
              textAlign: TextAlign.end,
              textOverflow: TextOverflow.fade,
            ) : null,
          ],
        ),
        childHeroOnTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) {
                return StatefulHeroWindow(
                  childHeroTag: heroStrings.HOME_HERO_TAG_2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      TitleText(
                        data: homeStrings.homeString_9,
                        fontSize: 36,
                        minFontSize: 16,
                        maxLines: 2,
                        softWrap: true,
                        textAlign: TextAlign.end,
                        textOverflow: TextOverflow.ellipsis,
                      ),
                      Gap(10),
                      HeaderText(
                        data: homeStrings.homeString_10,
                        fontSize: 30,
                        minFontSize: 20,
                        maxLines: 2,
                        softWrap: true,
                        textAlign: TextAlign.end,
                        textOverflow: TextOverflow.fade,
                      ),
                      SubtitleText(
                        data: homeStrings.homeString_11,
                        fontSize: 20,
                        minFontSize: 10,
                        maxLines: 1,
                        softWrap: true,
                        textAlign: TextAlign.end,
                        textOverflow: TextOverflow.fade,
                      ),
                      Gap(5),
                      HeaderText(
                        data: homeStrings.homeString_12,
                        fontSize: 30,
                        minFontSize: 20,
                        maxLines: 1,
                        softWrap: true,
                        textAlign: TextAlign.end,
                        textOverflow: TextOverflow.fade,
                      ),
                      SubtitleText(
                        data: homeStrings.homeString_13,
                        fontSize: 20,
                        minFontSize: 10,
                        maxLines: 1,
                        softWrap: true,
                        textAlign: TextAlign.end,
                        textOverflow: TextOverflow.fade,
                      ),
                      Gap(5),
                      HeaderText(
                        data: homeStrings.homeString_14,
                        fontSize: 30,
                        minFontSize: 20,
                        maxLines: 1,
                        softWrap: true,
                        textAlign: TextAlign.end,
                        textOverflow: TextOverflow.fade,
                      ),
                      SubtitleText(
                        data: homeStrings.homeString_15,
                        fontSize: 20,
                        minFontSize: 10,
                        maxLines: 2,
                        softWrap: true,
                        textAlign: TextAlign.end,
                        textOverflow: TextOverflow.fade,
                      ),
                      Gap(5),
                      HeaderText(
                        data: homeStrings.homeString_16,
                        fontSize: 30,
                        minFontSize: 20,
                        maxLines: 1,
                        softWrap: true,
                        textAlign: TextAlign.end,
                        textOverflow: TextOverflow.fade,
                      ),
                      SubtitleText(
                        data: homeStrings.homeString_17,
                        fontSize: 20,
                        minFontSize: 10,
                        maxLines: 1,
                        softWrap: true,
                        textAlign: TextAlign.end,
                        textOverflow: TextOverflow.fade,
                      ),
                      Gap(5),
                      HeaderText(
                        data: homeStrings.homeString_18,
                        fontSize: 30,
                        minFontSize: 20,
                        maxLines: 1,
                        softWrap: true,
                        textAlign: TextAlign.end,
                        textOverflow: TextOverflow.fade,
                      ),
                      SubtitleText(
                        data: homeStrings.homeString_19,
                        fontSize: 20,
                        minFontSize: 10,
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
      ),
      StatelessRoundedCard(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(30)),
              child: CachedNetworkImage(
                imageUrl:
                    "https://images.unsplash.com/photo-1513436539083-9d2127e742f1?q=80&force=true&w=1920",
                placeholder: (context, url) =>
                    Center(child: const CircularProgressIndicator()),
                errorWidget: (context, url, error) =>
                    Center(child: SizedBox(child: ImageNotFound())),
                height: landscapeWindow ? 500 : 300,
                width: landscapeWindow ? 700 : 400,
                fit: BoxFit.cover,
              ),
            ),
            SubtitleText(
              data: homeStrings.homeString_20,
              fontSize: 10,
              minFontSize: 10,
              maxLines: 2,
              softWrap: true,
              textAlign: TextAlign.center,
              textOverflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
      StatelessRoundedCard(
        child: TitleText(
          data: homeStrings.homeString_21,
          fontSize: 36,
          minFontSize: 16,
          maxLines: 2,
          softWrap: true,
          textAlign: TextAlign.center,
          textOverflow: TextOverflow.ellipsis,
        ),
      ),
      StatelessRoundedCard(
        child: Column(
          children: [
            HeaderText(
              data: homeStrings.homeString_22,
              fontSize: 30,
              minFontSize: 20,
              maxLines: 1,
              softWrap: true,
              textAlign: TextAlign.end,
              textOverflow: TextOverflow.fade,
            ),
            Gap(30),
            SubtitleText(
              data: homeStrings.homeString_23,
              fontSize: 20,
              minFontSize: 10,
              maxLines: 2,
              softWrap: true,
              textAlign: TextAlign.end,
              textOverflow: TextOverflow.fade,
            ),
            Gap(5),
            ContactFormCard(),
          ],
        ),
      ),
      StatelessRoundedCard(
        child: Column(
          children: [
            HeaderText(
              data: homeStrings.homeString_24,
              fontSize: 30,
              minFontSize: 20,
              maxLines: 1,
              softWrap: true,
              textAlign: TextAlign.end,
              textOverflow: TextOverflow.fade,
            ),
            SubtitleText(
              data: homeStrings.homeString_25,
              fontSize: 20,
              minFontSize: 10,
              maxLines: 1,
              softWrap: true,
              textAlign: TextAlign.end,
              textOverflow: TextOverflow.fade,
            ),
            SubtitleText(
              data: homeStrings.homeString_26,
              fontSize: 20,
              minFontSize: 10,
              maxLines: 1,
              softWrap: true,
              textAlign: TextAlign.end,
              textOverflow: TextOverflow.fade,
            ),
            Row(
              children: [
                IconButton(
                  onPressed: UriUtils().launchLinkedIn,
                  icon: HugeIcon(
                    icon: HugeIcons.strokeRoundedLinkedin01,
                    size: 24.0,
                    color: colourScheme.primary,
                    strokeWidth: 1.5,
                  ),
                ),
                IconButton(
                  onPressed: UriUtils().launchGitHub,
                  icon: HugeIcon(
                    icon: HugeIcons.strokeRoundedGithub01,
                    size: 24.0,
                    color: colourScheme.primary,
                    strokeWidth: 1.5,
                  ),
                ),
              ],
            ),
            SubtitleText(
              data: homeStrings.homeString_27,
              fontSize: 10,
              minFontSize: 10,
              maxLines: 1,
              softWrap: true,
              textAlign: TextAlign.end,
              textOverflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
      Gap(5),
    ],
  );
}

SliverQuiltedGridDelegate buildSliverLandscapeGridDelegate() {
  return SliverQuiltedGridDelegate(
    crossAxisCount: 64,
    pattern: [
      QuiltedGridTile(32, 64),
      QuiltedGridTile(32, 32),
      QuiltedGridTile(32, 32),
      QuiltedGridTile(26, 32),
      QuiltedGridTile(26, 32),
      QuiltedGridTile(4, 64),
      QuiltedGridTile(32, 32),
      QuiltedGridTile(32, 32),
      QuiltedGridTile(6, 64),
    ],
  );
}

SliverQuiltedGridDelegate buildSliverPortraitGridDelegate() {
  return SliverQuiltedGridDelegate(
    crossAxisCount: 64,
    pattern: [
      QuiltedGridTile(45, 64),
      QuiltedGridTile(45, 64),
      QuiltedGridTile(65, 64),
      QuiltedGridTile(75, 64),
      QuiltedGridTile(45, 64),
      QuiltedGridTile(12, 64),
      QuiltedGridTile(120, 64),
      QuiltedGridTile(35, 64),
      QuiltedGridTile(16, 64),
    ],
  );
}
