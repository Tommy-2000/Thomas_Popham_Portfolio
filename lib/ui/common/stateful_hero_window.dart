import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:thomas_popham_portfolio/ui/common/stateless_rounded_card.dart';

class StatefulHeroWindow extends StatefulWidget {
  const StatefulHeroWindow({
    super.key,
    required this.child,
    required this.childHeroTag,
  });

  final Widget child;
  final String childHeroTag;

  @override
  State<StatefulHeroWindow> createState() => _StatefulHeroWindowState();
}

class _StatefulHeroWindowState extends State<StatefulHeroWindow> {

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
            physics: const BouncingScrollPhysics(),
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
                Hero(tag: widget.childHeroTag, child: widget.child),
                Gap(75),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
