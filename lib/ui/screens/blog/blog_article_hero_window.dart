import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:thomas_popham_portfolio/ui/common/stateless_rounded_card.dart';

import '../../common/header_text.dart';
import '../../common/subtitle_text.dart';

class BlogArticleHeroWindow extends StatefulWidget {
  final String blogArticleHeroTag;
  final String blogArticleTitle;
  final String blogArticleBody;
  final String blogArticleImageCredit;
  final Widget blogArticleHeroImage;
  final Widget? blogButtonTopRow;
  final Widget? blogButtonBottomRow;

  const BlogArticleHeroWindow({
    super.key,
    required this.blogArticleHeroTag,
    required this.blogArticleTitle,
    required this.blogArticleImageCredit,
    required this.blogArticleBody,
    required this.blogArticleHeroImage,
    this.blogButtonTopRow,
    this.blogButtonBottomRow,
  });

  @override
  State<BlogArticleHeroWindow> createState() => _BlogArticleHeroWindowState();
}

class _BlogArticleHeroWindowState extends State<BlogArticleHeroWindow> {
  late ScrollController _windowScrollController;

  @override
  void initState() {
    super.initState();
    _windowScrollController = ScrollController();
  }

  @override
  void dispose() {
    super.dispose();
    _windowScrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colourScheme = Theme.of(context).colorScheme;

    return SelectionArea(
      child: StatelessRoundedCard(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            controller: _windowScrollController,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      mouseCursor: SystemMouseCursors.click,
                      splashColor: colourScheme.surface,
                      icon: HugeIcon(icon: HugeIcons.strokeRoundedCancelSquare),
                    ),
                  ],
                ),
                Hero(
                  tag: widget.blogArticleHeroTag,
                  child: widget.blogArticleHeroImage,
                ),
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
                  data: widget.blogArticleTitle,
                  fontSize: 30,
                  minFontSize: 10,
                  maxLines: 4,
                  softWrap: true,
                  textAlign: TextAlign.end,
                  textOverflow: TextOverflow.fade,
                ),
                Gap(5),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: SubtitleText(
                    data: widget.blogArticleBody,
                    fontSize: 18,
                    minFontSize: 14,
                    maxLines: 75,
                    softWrap: true,
                    textAlign: TextAlign.end,
                    textOverflow: TextOverflow.fade,
                  ),
                ),
                Gap(5),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    // If any buttons associated with a blog article overflow on to the next row render it, otherwise render nothing
                    ?widget.blogButtonTopRow,
                    ?widget.blogButtonBottomRow,
                  ],
                ),
                Gap(75),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
