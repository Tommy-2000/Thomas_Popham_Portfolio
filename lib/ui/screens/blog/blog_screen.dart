import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:gap/gap.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:thomas_popham_portfolio/ui/screens/blog/blog_hero_article_window.dart';
import '../../../logic/utils/uri_utils.dart';
import '../../common/image_not_found.dart';
import '../../common/stateless_rounded_card.dart';
import '../../common/title_text.dart';
import '../../../constants/hero_strings.dart' as heroStrings;
import '../../../constants/blog_strings.dart' as blogStrings;
import 'blog_hero_article_card.dart';

class BlogScreen extends StatefulWidget {
  const BlogScreen({super.key});

  @override
  State<BlogScreen> createState() => _BlogScreenState();
}

class _BlogScreenState extends State<BlogScreen> {
  late ScrollController _blogScrollController;

  bool landscapeWindow = false;

  @override
  void initState() {
    super.initState();
    _blogScrollController = ScrollController();
  }

  @override
  void dispose() {
    super.dispose();
    _blogScrollController.dispose();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // Rerender the UI if the width from MediaQuery is greater than 900
    final double windowWidth = MediaQuery.of(context).size.width;
    landscapeWindow = windowWidth > 900;
  }

  @override
  Widget build(BuildContext context) {
    final colourScheme = Theme.of(context).colorScheme;
    return SelectionArea(
      child: CustomScrollView(
        controller: _blogScrollController,
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
    <Widget>[
      StatelessRoundedCard(
        child: TitleText(
          data: "Blog",
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
          data: "Latest Posts",
          fontSize: 30,
          minFontSize: 20,
          maxLines: 1,
          softWrap: true,
          textAlign: TextAlign.center,
          textOverflow: TextOverflow.ellipsis,
        ),
      ),
      renderBlogHeroCardArticle(
        heroStrings.BLOG_HERO_TAG_4,
        blogStrings.BLOG_POST_4_H,
        blogStrings.BLOG_POST_4_S,
        blogStrings.BLOG_POST_4_IC,
        blogStrings.BLOG_POST_4_I,
        IconButton(
          highlightColor: colourScheme.primary,
          onPressed: () => UriUtils().launchBlogPost4LinkedIn(),
          icon: HugeIcon(
            icon: HugeIcons.strokeRoundedLinkedin01,
            color: colourScheme.primary,
          ),
        ),
        null,
        landscapeWindow,
        context,
      ),
      renderBlogHeroCardArticle(
        heroStrings.BLOG_HERO_TAG_3,
        blogStrings.BLOG_POST_3_H,
        blogStrings.BLOG_POST_3_S,
        blogStrings.BLOG_POST_3_IC,
        blogStrings.BLOG_POST_3_I,
        IconButton(
          highlightColor: colourScheme.primary,
          onPressed: () => UriUtils().launchBlogPost3LinkedIn(),
          icon: HugeIcon(
            icon: HugeIcons.strokeRoundedLinkedin01,
            color: colourScheme.primary,
          ),
        ),
        null,
        landscapeWindow,
        context,
      ),
      renderBlogHeroCardArticle(
        heroStrings.BLOG_HERO_TAG_2,
        blogStrings.BLOG_POST_2_H,
        blogStrings.BLOG_POST_2_S,
        blogStrings.BLOG_POST_2_IC,
        blogStrings.BLOG_POST_2_I,
        IconButton(
          highlightColor: colourScheme.primary,
          onPressed: () => UriUtils().launchBlogPost2LinkedIn(),
          icon: HugeIcon(
            icon: HugeIcons.strokeRoundedLinkedin01,
            color: colourScheme.primary,
          ),
        ),
        null,
        landscapeWindow,
        context,
      ),
      renderBlogHeroCardArticle(
        heroStrings.BLOG_HERO_TAG_1,
        blogStrings.BLOG_POST_1_H,
        blogStrings.BLOG_POST_1_S,
        blogStrings.BLOG_POST_1_IC,
        blogStrings.BLOG_POST_1_I,
        IconButton(
          highlightColor: colourScheme.primary,
          onPressed: () => UriUtils().launchBlogPost1LinkedIn(),
          icon: HugeIcon(
            icon: HugeIcons.strokeRoundedLinkedin01,
            color: colourScheme.primary,
          ),
        ),
        IconButton(
          highlightColor: colourScheme.primary,
          onPressed: () => UriUtils().launchBlogPost1Medium(),
          icon: HugeIcon(
            icon: HugeIcons.strokeRoundedLinkedin01,
            color: colourScheme.primary,
          ),
        ),
        landscapeWindow,
        context,
      ),
      Gap(5),
    ],
    addAutomaticKeepAlives: false,
    addRepaintBoundaries: false,
  );
}

BlogHeroCardArticle renderBlogHeroCardArticle(
  String blogArticleHeroTag,
  String blogArticleHeader,
  String blogArticleSubtitle,
  String blogArticleImageCredit,
  String blogArticleImageUrl,
  IconButton? blogArticleLinkedInButton,
  IconButton? blogArticleMediumButton,
  bool landscapeWindow,
  BuildContext context,
) {
  return BlogHeroCardArticle(
    blogArticleHeroTag: blogArticleHeroTag,
    blogArticleHeader: blogArticleHeader,
    blogArticleSubtitle: blogArticleSubtitle,
    blogArticleImageCredit: blogArticleImageCredit,
    blogArticleWidget: ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(40)),
      child: CachedNetworkImage(
        imageUrl: blogArticleImageUrl,
        placeholder: (context, url) =>
            Center(child: const CircularProgressIndicator()),
        errorWidget: (context, url, error) =>
            Center(child: SizedBox(child: ImageNotFound())),
        height: landscapeWindow ? 400 : 300,
        width: landscapeWindow ? 600 : 500,
        fit: BoxFit.fill,
        filterQuality: landscapeWindow ? FilterQuality.high : FilterQuality.low,
      ),
    ),
    blogLinkedInButton: blogArticleLinkedInButton,
    blogMediumButton: blogArticleMediumButton,
    blogArticleOnTap: () {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) {
            return BlogHeroArticleWindow(
              blogArticleHeroTag: blogArticleHeroTag,
              blogArticleHeader: blogArticleHeader,
              blogArticleSubtitle: blogArticleSubtitle,
              blogArticleImageCredit: blogArticleImageCredit,
              blogArticleWidget: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(40)),
                child: CachedNetworkImage(
                  imageUrl: blogArticleImageUrl,
                  placeholder: (context, url) =>
                      Center(child: const CircularProgressIndicator()),
                  errorWidget: (context, url, error) =>
                      Center(child: SizedBox(child: ImageNotFound())),
                  height: landscapeWindow ? 500 : 300,
                  fit: BoxFit.fitHeight,
                  filterQuality: landscapeWindow
                      ? FilterQuality.high
                      : FilterQuality.low,
                ),
              ),
              blogLinkedInButton: blogArticleLinkedInButton,
              blogMediumButton: blogArticleMediumButton,
            );
          },
        ),
      );
    },
  );
}

SliverQuiltedGridDelegate buildSliverLandscapeGridDelegate() {
  return SliverQuiltedGridDelegate(
    repeatPattern: QuiltedGridRepeatPattern.same,
    crossAxisCount: 64,
    pattern: [
      QuiltedGridTile(4, 64),
      QuiltedGridTile(3, 64),
      QuiltedGridTile(34, 32),
      QuiltedGridTile(34, 32),
      QuiltedGridTile(34, 32),
      QuiltedGridTile(34, 32),
      QuiltedGridTile(34, 32),
      QuiltedGridTile(34, 32),
    ],
  );
}

SliverQuiltedGridDelegate buildSliverPortraitGridDelegate() {
  return SliverQuiltedGridDelegate(
    repeatPattern: QuiltedGridRepeatPattern.same,
    crossAxisCount: 64,
    pattern: [
      QuiltedGridTile(16, 64),
      QuiltedGridTile(10, 64),
      QuiltedGridTile(100, 64),
      QuiltedGridTile(100, 64),
      QuiltedGridTile(100, 64),
      QuiltedGridTile(100, 64),
      QuiltedGridTile(100, 64),
      QuiltedGridTile(100, 64),
      QuiltedGridTile(100, 64),
      QuiltedGridTile(30, 64),
    ],
  );
}
