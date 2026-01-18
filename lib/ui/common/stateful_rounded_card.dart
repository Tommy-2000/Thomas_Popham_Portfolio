import 'package:flutter/material.dart';

class StatefulRoundedCard extends StatefulWidget {
  const StatefulRoundedCard({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  State<StatefulRoundedCard> createState() => _StatefulRoundedCardState();
}

class _StatefulRoundedCardState extends State<StatefulRoundedCard> {

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
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: widget.child,
      ),
    );
  }
}
