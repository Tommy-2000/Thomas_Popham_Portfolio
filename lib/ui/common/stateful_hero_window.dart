import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

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
      child: Card(
        color: colourScheme.surface,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(40)),
        ),
        borderOnForeground: true,
        semanticContainer: true,
        elevation: 10,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
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
                Hero(tag: widget.childHeroTag, child: widget.child),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
