import 'package:flutter/material.dart';
import 'package:thomas_popham_portfolio/ui/common/stateless_rounded_card.dart';

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

    return StatelessRoundedCard(
      child: Hero(
        tag: widget.childHeroTag,
        child: InkWell(
          onTap: widget.childHeroOnTap,
          mouseCursor: SystemMouseCursors.click,
          splashColor: colourScheme.surface,
          customBorder: RoundedSuperellipseBorder(
            borderRadius: BorderRadius.circular(40),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: widget.child,
          ),
        ),
      ),
    );
  }
}
