import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import '../../common/cards/rounded_card.dart';
import '../../common/title_text.dart';

class BlogScreen extends StatefulWidget {
  const BlogScreen({super.key});

  @override
  State<BlogScreen> createState() => _BlogScreenState();
}

class _BlogScreenState extends State<BlogScreen> {
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
    <Widget>[
      RoundedCard(
        child: Column(
          children: [
            TitleText(data: "Blog", fontSize: 40, minFontSize: 20, maxLines: 2, softWrap: true,
              textAlign: TextAlign.center,
              textOverflow: TextOverflow.ellipsis,),
          ],
        ),
      ),
      RoundedCard(child: Container(color: Colors.red)),
      RoundedCard(child: Container(color: Colors.green)),
      RoundedCard(child: Container(color: Colors.blue)),
      RoundedCard(child: Container(color: Colors.yellow)),
      RoundedCard(child: Container(color: Colors.brown)),
      RoundedCard(child: Container(color: Colors.orange)),
    ],
    addAutomaticKeepAlives: false,
    addRepaintBoundaries: false,
  );
}

SliverQuiltedGridDelegate buildSliverPortraitGridDelegate() {
  return SliverQuiltedGridDelegate(
    repeatPattern: QuiltedGridRepeatPattern.same,
    crossAxisCount: 32,
    pattern: [
      QuiltedGridTile(6, 32),
      QuiltedGridTile(16, 32),
      QuiltedGridTile(16, 32),
      QuiltedGridTile(16, 32),
      QuiltedGridTile(16, 32),
      QuiltedGridTile(16, 32),
      QuiltedGridTile(16, 32),
      QuiltedGridTile(16, 32),
      QuiltedGridTile(16, 32),
    ],
  );
}

SliverQuiltedGridDelegate buildSliverLandscapeGridDelegate() {
  return SliverQuiltedGridDelegate(
    repeatPattern: QuiltedGridRepeatPattern.same,
    crossAxisCount: 32,
    pattern: [
      QuiltedGridTile(2, 32),
      QuiltedGridTile(8, 16),
      QuiltedGridTile(8, 16),
      QuiltedGridTile(8, 16),
      QuiltedGridTile(8, 16),
      QuiltedGridTile(8, 16),
      QuiltedGridTile(8, 16),
      QuiltedGridTile(8, 16),
      QuiltedGridTile(8, 16),
      QuiltedGridTile(8, 16),
      QuiltedGridTile(8, 16),
      QuiltedGridTile(8, 16),
      QuiltedGridTile(8, 16),
    ],
  );
}
