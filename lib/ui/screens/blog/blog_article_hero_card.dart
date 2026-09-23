import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:thomas_popham_portfolio/ui/common/header_text.dart';
import 'package:thomas_popham_portfolio/ui/common/stateless_rounded_card.dart';

import '../../common/subtitle_text.dart';

class BlogArticleHeroCard extends StatefulWidget {
  final String blogArticleHeroTag;
  final String blogArticleHeader;
  final String blogArticleBody;
  final String blogArticleImageCredit;
  final Widget blogArticleImage;
  final IconButton? blogLinkedInButton;
  final IconButton? blogMediumButton;
  final VoidCallback? blogArticleOnTap;

  const BlogArticleHeroCard({
    super.key,
    required this.blogArticleHeroTag,
    required this.blogArticleHeader,
    required this.blogArticleImageCredit,
    required this.blogArticleBody,
    required this.blogArticleImage,
    this.blogLinkedInButton,
    this.blogMediumButton,
    this.blogArticleOnTap,
  });

  @override
  State<BlogArticleHeroCard> createState() => _BlogArticleHeroCardState();
}

class _BlogArticleHeroCardState extends State<BlogArticleHeroCard> {
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colourScheme = Theme.of(context).colorScheme;

    return StatelessRoundedCard(
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
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  widget.blogArticleImage,
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
                    data: widget.blogArticleBody,
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
      ),
    );
  }
}
