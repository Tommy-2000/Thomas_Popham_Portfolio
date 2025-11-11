import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:gap/gap.dart';
import 'package:hugeicons/hugeicons.dart';
import '../../common/header_text.dart';
import '../../common/title_text.dart';
import 'home_banner_card.dart';
import '../../common/cards/contact_form_card.dart';
import '../../common/cards/rounded_card.dart';
import '../../common/subtitle_text.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late ScrollController _chipScrollController;
  bool landscapeWindow = false;
  bool foldableWindow = false;

  @override
  void initState() {
    super.initState();
    _chipScrollController = ScrollController();
  }

  @override
  void dispose() {
    super.dispose();
    _chipScrollController.dispose();
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
    return CustomScrollView(
      slivers: <Widget>[
        SliverGrid(
          gridDelegate: landscapeWindow
              ? buildSliverLandscapeGridDelegate()
              : buildSliverPortraitGridDelegate(),
          delegate: buildSliverChildListDelegate(),
        ),
      ],
    );
  }
}

SliverChildListDelegate buildSliverChildListDelegate() {
  return SliverChildListDelegate(
    addAutomaticKeepAlives: false,
    addRepaintBoundaries: false,
    <Widget>[
      HomeBannerCard(),
      RoundedCard(
        child: Column(
          children: [
            TitleText(
              data: "A little bit about me...",
              fontSize: 40,
              minFontSize: 20,
              maxLines: 2,
              softWrap: true,
              textAlign: TextAlign.center,
              textOverflow: TextOverflow.ellipsis,
            ),
            Gap(10),
            SubtitleText(
              data:
                  "I'm a postgraduate in MSc. Computer Science from Teesside University who develops software with a creative and inventive mindset. I have developed cross-platform full-stack applications for Android, iOS and Web, as well as immersive and educational 3D experiences/games for children for AR-enabled mobile devices through animation rigging and game design and development. I am also passionate for developing software for neurodivergent people that supports and empowers them to achieve their best work within education or the workplace.",
              fontSize: 18,
              minFontSize: 12,
              maxLines: 10,
              softWrap: true,
              textAlign: TextAlign.end,
              textOverflow: TextOverflow.fade,
            ),
          ],
        ),
      ),
      RoundedCard(
        child: Column(
          children: [
            TitleText(
              data: "Technical Skills",
              fontSize: 40,
              minFontSize: 20,
              maxLines: 2,
              softWrap: true,
              textAlign: TextAlign.center,
              textOverflow: TextOverflow.ellipsis,
            ),
            Gap(10),
            HeaderText(
              data: "Cross-platform Front-End Development",
              fontSize: 30,
              minFontSize: 20,
              maxLines: 1,
              softWrap: true,
              textAlign: TextAlign.end,
              textOverflow: TextOverflow.fade,
            ),
            SubtitleText(
              data:
                  "Android Compose - Flutter - React Native",
              fontSize: 20,
              minFontSize: 10,
              maxLines: 1,
              softWrap: true,
              textAlign: TextAlign.end,
              textOverflow: TextOverflow.fade,
            ),
            Gap(5),
            HeaderText(
              data: "Back-End Development",
              fontSize: 30,
              minFontSize: 20,
              maxLines: 1,
              softWrap: true,
              textAlign: TextAlign.end,
              textOverflow: TextOverflow.fade,
            ),
            SubtitleText(
              data: ".NET - Node.JS",
              fontSize: 20,
              minFontSize: 10,
              maxLines: 1,
              softWrap: true,
              textAlign: TextAlign.end,
              textOverflow: TextOverflow.fade,
            ),
            Gap(5),
            HeaderText(
              data: "Database Management",
              fontSize: 30,
              minFontSize: 20,
              maxLines: 1,
              softWrap: true,
              textAlign: TextAlign.end,
              textOverflow: TextOverflow.fade,
            ),
            SubtitleText(
              data:
                  "SQL Server and PostgreSQL (SQL) or Google Firestore and MongoDb (NoSQL)",
              fontSize: 20,
              minFontSize: 10,
              maxLines: 1,
              softWrap: true,
              textAlign: TextAlign.end,
              textOverflow: TextOverflow.fade,
            ),
            Gap(5),
            HeaderText(
              data: "3D Animation and VFX",
              fontSize: 30,
              minFontSize: 20,
              maxLines: 1,
              softWrap: true,
              textAlign: TextAlign.end,
              textOverflow: TextOverflow.fade,
            ),
            SubtitleText(
              data: "Blender - Houdini - Unreal Engine",
              fontSize: 20,
              minFontSize: 10,
              maxLines: 1,
              softWrap: true,
              textAlign: TextAlign.end,
              textOverflow: TextOverflow.fade,
            ),
            Gap(5),
            HeaderText(
              data: "Project Management",
              fontSize: 30,
              minFontSize: 20,
              maxLines: 1,
              softWrap: true,
              textAlign: TextAlign.end,
              textOverflow: TextOverflow.fade,
            ),
            SubtitleText(
              data: "Jira - Trello",
              fontSize: 20,
              minFontSize: 10,
              maxLines: 1,
              softWrap: true,
              textAlign: TextAlign.end,
              textOverflow: TextOverflow.fade,
            ),
            Gap(5),
            HeaderText(
              data: "Git Version Control",
              fontSize: 30,
              minFontSize: 20,
              maxLines: 1,
              softWrap: true,
              textAlign: TextAlign.end,
              textOverflow: TextOverflow.fade,
            ),
            SubtitleText(
              data: "GitHub - GitKraken (I highly recommend GitKraken!)",
              fontSize: 20,
              minFontSize: 10,
              maxLines: 1,
              softWrap: true,
              textAlign: TextAlign.end,
              textOverflow: TextOverflow.fade,
            ),
          ],
        ),
      ),
      RoundedCard(
        child: Column(
          children: [
            TitleText(
              data: "Contact Me",
              fontSize: 40,
              minFontSize: 20,
              maxLines: 2,
              softWrap: true,
              textAlign: TextAlign.center,
              textOverflow: TextOverflow.ellipsis,
            ),
            Gap(10),
            OverflowBar(
              children: [
                Row(
                  children: [
                    RoundedCard(
                      child: Column(
                        children: [
                          HeaderText(
                            data: "Send a Message",
                            fontSize: 30,
                            minFontSize: 20,
                            maxLines: 1,
                            softWrap: true,
                            textAlign: TextAlign.end,
                            textOverflow: TextOverflow.fade,
                          ),
                          Gap(10),
                          SubtitleText(
                            data:
                                "Fill in the form below and I will get back to you on the following weekend if possible.",
                            fontSize: 20,
                            minFontSize: 10,
                            maxLines: 1,
                            softWrap: true,
                            textAlign: TextAlign.end,
                            textOverflow: TextOverflow.fade,
                          ),
                          Gap(5),
                          ContactFormCard(),
                        ],
                      ),
                    ),
                    Gap(20),
                    RoundedCard(
                      child: Column(
                        children: [
                          HeaderText(
                            data: "Contact Information",
                            fontSize: 30,
                            minFontSize: 20,
                            maxLines: 1,
                            softWrap: true,
                            textAlign: TextAlign.end,
                            textOverflow: TextOverflow.fade,
                          ),
                          SubtitleText(
                            data: "Location - Durham, UK",
                            fontSize: 20,
                            minFontSize: 10,
                            maxLines: 1,
                            softWrap: true,
                            textAlign: TextAlign.end,
                            textOverflow: TextOverflow.fade,
                          ),
                          SubtitleText(
                            data: "Email - dreamdev.tommy.2000@outlook.com",
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
                                onPressed: () {},
                                icon: HugeIcon(
                                  icon: HugeIcons.strokeRoundedLinkedin01,
                                  size: 24.0,
                                  color: Colors.green,
                                  strokeWidth: 1.5,
                                ),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: HugeIcon(
                                  icon: HugeIcons.strokeRoundedGithub01,
                                  size: 24.0,
                                  color: Colors.green,
                                  strokeWidth: 1.5,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    ],
  );
}

SliverQuiltedGridDelegate buildSliverPortraitGridDelegate() {
  return SliverQuiltedGridDelegate(
    crossAxisCount: 32,
    pattern: [
      QuiltedGridTile(16, 32),
      QuiltedGridTile(24, 32),
      QuiltedGridTile(24, 32),
      QuiltedGridTile(24, 32),
    ],
  );
}

SliverQuiltedGridDelegate buildSliverLandscapeGridDelegate() {
  return SliverQuiltedGridDelegate(
    crossAxisCount: 32,
    pattern: [
      QuiltedGridTile(16, 32),
      QuiltedGridTile(14, 16),
      QuiltedGridTile(14, 16),
      QuiltedGridTile(12, 32),
    ],
  );
}
