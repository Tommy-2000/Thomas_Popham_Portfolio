import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:gap/gap.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:thomas_popham_portfolio/ui/screens/blog/blog_article_hero_window.dart';
import '../../../logic/utils/uri_utils.dart';
import '../../common/image_not_found.dart';
import '../../common/responsive_render.dart';
import '../../common/stateless_rounded_card.dart';
import '../../common/title_text.dart';
import '../../../constants/hero_strings.dart' as heroStrings;
import '../../../constants/blog_strings.dart' as blogStrings;
import 'blog_article_hero_card.dart';

class BlogScreen extends StatefulWidget {
  const BlogScreen({super.key});

  @override
  State<BlogScreen> createState() => _BlogScreenState();
}

class _BlogScreenState extends State<BlogScreen> {
  late ResponsiveRender _responsiveRender;
  late ScrollController _blogScrollController;

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
    // ResponsiveRender notifies this screen if any responsive screen changes are detected
    _responsiveRender = ResponsiveRender(context);
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
            gridDelegate: _responsiveRender.screenIsExtraLarge
                ? buildSliverLandscapeGridDelegate(40)
                : _responsiveRender.screenIsLarge
                ? buildSliverLandscapeGridDelegate(25)
                : _responsiveRender.screenIsMedium
                ? buildSliverPortraitGridDelegate(40)
                : _responsiveRender.screenIsSmall
                ? buildSliverPortraitGridDelegate(30)
                : buildSliverPortraitGridDelegate(20),
            delegate: buildSliverChildListDelegate(
              context,
              _responsiveRender,
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
  ResponsiveRender responsive,
  ColorScheme colourScheme,
) {
  return SliverChildListDelegate(
    <Widget>[
      StatelessRoundedCard(
        child: TitleText(
          data: blogStrings.blogString_Title,
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
      renderBlogHeroCardArticleWithAssetImage(
        context,
        heroStrings.blogHeroTag5,
        blogStrings.blogPost5Header,
        blogStrings.blogPost5Body,
        blogStrings.blogPost5ImageCredit,
        blogStrings.blogPost5Image,
        IconButton(
          highlightColor: colourScheme.primary,
          onPressed: () => UriUtils().launchBlogPost5LinkedIn(),
          icon: HugeIcon(
            icon: HugeIcons.strokeRoundedLinkedin01,
            color: colourScheme.primary,
          ),
        ),
        null,
        responsive,
      ),
      renderBlogHeroCardArticleWithNetImage(
        context,

        heroStrings.blogHeroTag4,
        blogStrings.blogPost4Header,
        blogStrings.blogPost4Body,
        blogStrings.blogPost4ImageCredit,
        blogStrings.blogPost4Image,
        IconButton(
          highlightColor: colourScheme.primary,
          onPressed: () => UriUtils().launchBlogPost4LinkedIn(),
          icon: HugeIcon(
            icon: HugeIcons.strokeRoundedLinkedin01,
            color: colourScheme.primary,
          ),
        ),
        null,
        responsive,
      ),
      renderBlogHeroCardArticleWithNetImage(
        context,
        heroStrings.blogHeroTag3,
        blogStrings.blogPost3Header,
        blogStrings.blogPost3Body,
        blogStrings.blogPost3ImageCredit,
        blogStrings.blogPost3Image,
        IconButton(
          highlightColor: colourScheme.primary,
          onPressed: () => UriUtils().launchBlogPost3LinkedIn(),
          icon: HugeIcon(
            icon: HugeIcons.strokeRoundedLinkedin01,
            color: colourScheme.primary,
          ),
        ),
        null,
        responsive,
      ),
      renderBlogHeroCardArticleWithNetImage(
        context,
        heroStrings.blogHeroTag2,
        blogStrings.blogPost2Header,
        blogStrings.blogPost2Body,
        blogStrings.blogPost2ImageCredit,
        blogStrings.blogPost2Image,
        IconButton(
          highlightColor: colourScheme.primary,
          onPressed: () => UriUtils().launchBlogPost2LinkedIn(),
          icon: HugeIcon(
            icon: HugeIcons.strokeRoundedLinkedin01,
            color: colourScheme.primary,
          ),
        ),
        null,
        responsive,
      ),
      renderBlogHeroCardArticleWithNetImage(
        context,
        heroStrings.blogHeroTag1,
        blogStrings.blogPost1Header,
        blogStrings.blogPost1Body,
        blogStrings.blogPost1ImageCredit,
        blogStrings.blogPost1Image,
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
            icon: HugeIcons.strokeRoundedMedium,
            color: colourScheme.primary,
          ),
        ),
        responsive,
      ),
      Gap(5),
    ],
    addAutomaticKeepAlives: false,
    addRepaintBoundaries: false,
  );
}

Widget renderBlogHeroCardArticleWithNetImage(
  BuildContext context,
  String blogArticleHeroTag,
  String blogArticleHeader,
  String blogArticleBody,
  String blogArticleImageCredit,
  String blogArticleImageUrl,
  IconButton? blogArticleLinkedInButton,
  IconButton? blogArticleMediumButton,
  ResponsiveRender responsive,
) {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: BlogArticleHeroCard(
      blogArticleHeroTag: blogArticleHeroTag,
      blogArticleTitle: blogArticleHeader,
      blogArticleBody: blogArticleBody,
      blogArticleImageCredit: blogArticleImageCredit,
      blogArticleImage: StatelessRoundedCard(
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(40)),
          child: CachedNetworkImage(
            imageUrl: blogArticleImageUrl,
            placeholder: (context, url) =>
                Center(child: const CircularProgressIndicator()),
            errorWidget: (context, url, error) =>
                Center(child: SizedBox(child: ImageNotFound())),
            height: responsive.hp(60),
            fit: BoxFit.fill,
            filterQuality: responsive.screenIsExtraLarge
                ? FilterQuality.high
                : FilterQuality.low,
          ),
        ),
      ),
      blogLinkedInButton: blogArticleLinkedInButton,
      blogMediumButton: blogArticleMediumButton,
      blogArticleOnTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return BlogArticleHeroWindow(
                blogArticleHeroTag: blogArticleHeroTag,
                blogArticleTitle: blogArticleHeader,
                blogArticleBody: blogArticleBody,
                blogArticleImageCredit: blogArticleImageCredit,
                blogArticleHeroImage: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(40)),
                  child: CachedNetworkImage(
                    imageUrl: blogArticleImageUrl,
                    placeholder: (context, url) =>
                        Center(child: const CircularProgressIndicator()),
                    errorWidget: (context, url, error) =>
                        Center(child: SizedBox(child: ImageNotFound())),
                    height: responsive.hp(80),
                    fit: BoxFit.fill,
                    filterQuality: responsive.screenIsExtraLarge
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
    ),
  );
}

Widget renderBlogHeroCardArticleWithAssetImage(
  BuildContext context,
  String blogArticleHeroTag,
  String blogArticleHeader,
  String blogArticleBody,
  String blogArticleImageCredit,
  String blogArticleAssetImage,
  IconButton? blogArticleLinkedInButton,
  IconButton? blogArticleMediumButton,
  ResponsiveRender responsive,
) {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: BlogArticleHeroCard(
      blogArticleHeroTag: blogArticleHeroTag,
      blogArticleTitle: blogArticleHeader,
      blogArticleBody: blogArticleBody,
      blogArticleImageCredit: blogArticleImageCredit,
      blogArticleImage: StatelessRoundedCard(
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(40)),
          child: Image.asset(
            blogArticleAssetImage,
            height: responsive.hp(60),
            fit: BoxFit.fill,
            filterQuality: responsive.screenIsExtraLarge
                ? FilterQuality.high
                : FilterQuality.low,
          ),
        ),
      ),
      blogLinkedInButton: blogArticleLinkedInButton,
      blogMediumButton: blogArticleMediumButton,
      blogArticleOnTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return BlogArticleHeroWindow(
                blogArticleHeroTag: blogArticleHeroTag,
                blogArticleTitle: blogArticleHeader,
                blogArticleBody: blogArticleBody,
                blogArticleImageCredit: blogArticleImageCredit,
                blogArticleHeroImage: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(40)),
                  child: Image.asset(
                    blogArticleAssetImage,
                    height: responsive.hp(80),
                    fit: BoxFit.fill,
                    filterQuality: responsive.screenIsExtraLarge
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
    ),
  );
}

SliverQuiltedGridDelegate buildSliverLandscapeGridDelegate(int mainCrossAxis) {
  return SliverQuiltedGridDelegate(
    repeatPattern: QuiltedGridRepeatPattern.same,
    crossAxisCount: 64,
    pattern: [
      QuiltedGridTile(4, 64),
      QuiltedGridTile(3, 64),
      QuiltedGridTile(mainCrossAxis, 32),
      QuiltedGridTile(mainCrossAxis, 32),
      QuiltedGridTile(mainCrossAxis, 32),
      QuiltedGridTile(mainCrossAxis, 32),
      QuiltedGridTile(mainCrossAxis, 32),
      QuiltedGridTile(mainCrossAxis, 32),
    ],
  );
}

SliverQuiltedGridDelegate buildSliverPortraitGridDelegate(int mainCrossAxis) {
  return SliverQuiltedGridDelegate(
    repeatPattern: QuiltedGridRepeatPattern.same,
    crossAxisCount: 64,
    pattern: [
      QuiltedGridTile(16, 64),
      QuiltedGridTile(10, 64),
      QuiltedGridTile(mainCrossAxis, 64),
      QuiltedGridTile(mainCrossAxis, 64),
      QuiltedGridTile(mainCrossAxis, 64),
      QuiltedGridTile(mainCrossAxis, 64),
      QuiltedGridTile(mainCrossAxis, 64),
      QuiltedGridTile(mainCrossAxis, 64),
      QuiltedGridTile(mainCrossAxis, 64),
      QuiltedGridTile(mainCrossAxis % 2, 64),
    ],
  );
}
