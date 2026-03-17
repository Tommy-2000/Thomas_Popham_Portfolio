import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:thomas_popham_portfolio/ui/common/stateful_rounded_card.dart';

import '../../../logic/utils/uri_utils.dart';
import '../../common/header_text.dart';
import '../../common/subtitle_text.dart';

class BlogPostHeroWindow extends StatefulWidget {
  const BlogPostHeroWindow({
    super.key,
    required this.blogArticleHeroTag,
    required this.blogArticleHeader,
    required this.blogArticleSubtitle,
    required this.blogArticleWidget,
  });

  final String blogArticleHeroTag;
  final String blogArticleHeader;
  final String blogArticleSubtitle;
  final Widget blogArticleWidget;

  @override
  State<BlogPostHeroWindow> createState() => _BlogPostHeroWindowState();
}

class _BlogPostHeroWindowState extends State<BlogPostHeroWindow> {
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
      child: StatefulRoundedCard(
        child: SingleChildScrollView(
          controller: _windowScrollController,
          child: Column(
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
                child: widget.blogArticleWidget,
              ),
              HeaderText(
                data: widget.blogArticleHeader,
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
                  data: widget.blogArticleSubtitle,
                  fontSize: 18,
                  minFontSize: 14,
                  maxLines: 75,
                  softWrap: true,
                  textAlign: TextAlign.end,
                  textOverflow: TextOverflow.fade,
                ),
              ),
              Gap(5),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    highlightColor: colourScheme.primary,
                    onPressed: () => UriUtils().launchLinkedIn(),
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
              Gap(75),
            ],
          ),
        ),
      ),
    );
  }
}
