import 'package:flutter/material.dart';

class StatefulHeroCard extends StatefulWidget {
  const StatefulHeroCard({
    super.key,
    required this.child, required this.childHeroTag, required this.childHeroOnTap,
  });

  final Widget child;
  final String childHeroTag;
  final VoidCallback childHeroOnTap;

  @override
  State<StatefulHeroCard> createState() => _StatefulHeroCardState();
}

class _StatefulHeroCardState extends State<StatefulHeroCard> {

  @override
  void dispose() {
    super.dispose();
    widget.child;
  }

  @override
  Widget build(BuildContext context) {
    final colourScheme = Theme.of(context).colorScheme;

    return Card(
      color: colourScheme.surface,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(40)),
      ),
      borderOnForeground: true,
      semanticContainer: true,
      elevation: 10,
      child: Hero(
        tag: widget.childHeroTag,
        child: InkWell(
          onTap: widget.childHeroOnTap,
          mouseCursor: SystemMouseCursors.click,
          splashColor: colourScheme.surface,
          customBorder: RoundedSuperellipseBorder(
            borderRadius: BorderRadius.circular(40),
          ),
          child: Ink(
            decoration: const BoxDecoration(color: Colors.transparent),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: widget.child,
            ),
          ),
        ),
      ),
    );
  }
}
