import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:thomas_popham_portfolio/ui/common/header_text.dart';
import 'package:thomas_popham_portfolio/ui/common/stateful_rounded_card.dart';

import '../../../logic/utils/uri_utils.dart';
import '../../common/subtitle_text.dart';

class BlogPostHeroCardPost3 extends StatefulWidget {
  BlogPostHeroCardPost3({
    super.key,
    required this.blogArticleHeroTag,
    required this.blogArticleHeader,
    required this.blogArticleImageCredit,
    required this.blogArticleSubtitle,
    required this.blogArticleWidget,
    this.blogArticleOnTap,
  });

  final String blogArticleHeroTag;
  final String blogArticleHeader;
  final String blogArticleSubtitle;
  final String blogArticleImageCredit;
  final Widget blogArticleWidget;
  VoidCallback? blogArticleOnTap;

  @override
  State<BlogPostHeroCardPost3> createState() => _BlogPostHeroCardPost3State();
}

class _BlogPostHeroCardPost3State extends State<BlogPostHeroCardPost3> {
  bool landscapeWindow = false;
  bool foldableWindow = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // Check the width of the window using MediaQuery if greater than 800 in a state change
    final double windowWidth = MediaQuery.of(context).size.width;
    landscapeWindow = windowWidth > 800;
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colourScheme = Theme.of(context).colorScheme;

    return StatefulRoundedCard(
      child: Hero(
        tag: widget.blogArticleHeroTag,
        child: InkWell(
          onTap: widget.blogArticleOnTap,
          mouseCursor: SystemMouseCursors.click,
          splashColor: colourScheme.surface,
          customBorder: RoundedSuperellipseBorder(
            borderRadius: BorderRadius.circular(40),
          ),
          child: Ink(
            decoration: const BoxDecoration(color: Colors.transparent),
            child: Column(
              children: [
                widget.blogArticleWidget,
                SubtitleText(
                  data: widget.blogArticleImageCredit,
                  fontSize: 10,
                  minFontSize: 10,
                  maxLines: 1,
                  softWrap: true,
                  textAlign: TextAlign.end,
                  textOverflow: TextOverflow.fade,
                ),
                HeaderText(
                  data: widget.blogArticleHeader,
                  fontSize: 30,
                  minFontSize: 10,
                  maxLines: 3,
                  softWrap: true,
                  textAlign: TextAlign.end,
                  textOverflow: TextOverflow.fade,
                ),
                Gap(5),
                SubtitleText(
                  data: widget.blogArticleSubtitle,
                  fontSize: 18,
                  minFontSize: 14,
                  maxLines: 7,
                  softWrap: true,
                  textAlign: TextAlign.end,
                  textOverflow: TextOverflow.fade,
                ),
                Gap(5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      highlightColor: colourScheme.primary,
                      onPressed: () => UriUtils().launchBlogPost3LinkedIn(),
                      icon: HugeIcon(
                        icon: HugeIcons.strokeRoundedLinkedin01,
                        color: colourScheme.primary,
                      ),
                    ),
                    IconButton(
                      highlightColor: colourScheme.primary,
                      onPressed: () => UriUtils().launchMedium(),
                      icon: HugeIcon(
                        icon: HugeIcons.strokeRoundedMedium,
                        color: colourScheme.primary,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
