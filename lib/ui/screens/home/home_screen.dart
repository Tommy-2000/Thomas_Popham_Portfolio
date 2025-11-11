import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:gap/gap.dart';
import 'package:hugeicons/hugeicons.dart';
import '../../common/header_text.dart';
import '../../common/image_not_found.dart';
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
    final colourScheme = Theme.of(context).colorScheme;
    return Container(
      color: colourScheme.primaryContainer,
      child: CustomScrollView(
        slivers: <Widget>[
          SliverGrid(
            gridDelegate: landscapeWindow
                ? buildSliverLandscapeGridDelegate()
                : buildSliverPortraitGridDelegate(),
            delegate: buildSliverChildListDelegate(landscapeWindow),
          ),
        ],
      ),
    );
  }
}

SliverChildListDelegate buildSliverChildListDelegate(bool landscapeWindow) {
  return SliverChildListDelegate(
    addAutomaticKeepAlives: false,
    addRepaintBoundaries: false,
    <Widget>[
      HomeBannerCard(),
      RoundedCard(
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
                width: landscapeWindow ? 700 : 500,
                fit: BoxFit.fill,
              ),
            ),
            SubtitleText(
              data: "Photo by Mohammad Rahmani on Unsplash",
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
            Gap(15),
            SubtitleText(
              data:
                  "I’m a postgraduate in MSc. Computer Science (June 2023) from Teesside University. I’d best describe myself as eager, curious and deeply supportive of other graduates like myself; looking to make their mark within software development. I firmly believe that creativity and imagination help form my overall approach to problem solving, project planning and software design and development. Enabling me to think outside-the-box and share a research-based perspective that I would love to bring to the workplace.",
              fontSize: 16,
              minFontSize: 12,
              maxLines: 12,
              softWrap: true,
              textAlign: TextAlign.end,
              textOverflow: TextOverflow.ellipsis,
            ),
            Gap(15),
            SubtitleText(
              data:
              "My ultimate career goal is to develop educational games/immersive software for young children based on impactful academic research and to make a positive difference to their educational development and pedagogy. I’ve looked into existing research into the effective adoption of technology (e.g. Augmented Reality or Artificial Intelligence) for neurodivergent individuals and how it can be effective in supporting children with Autism or ADHD. I have been inspired by the work created by companies such as Xploro, BrainSpark Games and Mrs Wordsmith, whose innovation to supporting children in their health and education fuels my drive to build novel solutions that give them the best start to life.",
              fontSize: 16,
              minFontSize: 12,
              maxLines: 12,
              softWrap: true,
              textAlign: TextAlign.end,
              textOverflow: TextOverflow.ellipsis,
            ),
            Gap(15),
            SubtitleText(
              data:
                  "In my spare time, I’m passionate for literature (currently reading Piranesi by Susanna Clarke), watching movies (especially the Studio Ghibli films), listening to music (ELO, Rush and David Bowie are my favourites), a bit of gaming (personally love the Dark Souls series) and some creative drawing/animation. If you wish to get in touch with me for a chat regarding my past experience and skillset, please feel free to let me know via the contact form below or through LinkedIn.",
              fontSize: 16,
              minFontSize: 12,
              maxLines: 12,
              softWrap: true,
              textAlign: TextAlign.end,
              textOverflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),

      RoundedCard(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TitleText(
              data: "Technical Skills",
              fontSize: 40,
              minFontSize: 20,
              maxLines: 2,
              softWrap: true,
              textAlign: TextAlign.end,
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
              data: "Android Compose - Flutter - React Native",
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
              maxLines: 2,
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
              data: "Blender - Unreal Engine",
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
              data: "Jira - Trello - GitKraken",
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
                width: landscapeWindow ? 700 : 500,
                fit: BoxFit.fill,
              ),
            ),
            SubtitleText(
              data: "Photo by Mohammad Rahmani on Unsplash",
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
      RoundedCard(
        child: TitleText(
          data: "Contact Me",
          fontSize: 40,
          minFontSize: 20,
          maxLines: 2,
          softWrap: true,
          textAlign: TextAlign.center,
          textOverflow: TextOverflow.ellipsis,
        ),
      ),
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
      QuiltedGridTile(26, 32),
      QuiltedGridTile(26, 32),
      QuiltedGridTile(6, 64),
    ],
  );
}

SliverQuiltedGridDelegate buildSliverPortraitGridDelegate() {
  return SliverQuiltedGridDelegate(
    crossAxisCount: 64,
    pattern: [
      QuiltedGridTile(46, 64),
      QuiltedGridTile(46, 64),
      QuiltedGridTile(110, 64),
      QuiltedGridTile(64, 64),
      QuiltedGridTile(46, 64),
      QuiltedGridTile(12, 64),
      QuiltedGridTile(64, 64),
      QuiltedGridTile(32, 64),
      QuiltedGridTile(14, 64),
    ],
  );
}
