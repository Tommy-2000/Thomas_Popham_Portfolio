import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:thomas_popham_portfolio/ui/common/header_text.dart';
import 'package:thomas_popham_portfolio/ui/common/stateful_rounded_card.dart';

import '../../../logic/utils/uri_utils.dart';
import '../../common/subtitle_text.dart';

class BlogHeroCardArticle extends StatefulWidget {

  final String blogArticleHeroTag;
  final String blogArticleHeader;
  final String blogArticleSubtitle;
  final String blogArticleImageCredit;
  final Widget blogArticleWidget;
  final IconButton? blogLinkedInButton;
  final IconButton? blogMediumButton;
  final VoidCallback? blogArticleOnTap;

  const BlogHeroCardArticle({
    super.key,
    required this.blogArticleHeroTag,
    required this.blogArticleHeader,
    required this.blogArticleImageCredit,
    required this.blogArticleSubtitle,
    required this.blogArticleWidget,
    this.blogLinkedInButton,
    this.blogMediumButton,
    this.blogArticleOnTap,
  });

  @override
  State<BlogHeroCardArticle> createState() => _BlogHeroCardArticleState();
}

class _BlogHeroCardArticleState extends State<BlogHeroCardArticle> {

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
                  maxLines: 4,
                  softWrap: true,
                  textAlign: TextAlign.end,
                  textOverflow: TextOverflow.fade,
                ),
                Gap(5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ?widget.blogLinkedInButton,
                    ?widget.blogMediumButton,
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
