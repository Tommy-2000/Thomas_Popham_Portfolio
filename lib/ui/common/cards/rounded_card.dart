import 'package:flutter/material.dart';

class RoundedCard extends StatelessWidget {
  const RoundedCard({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {

    final colourScheme = Theme.of(context).colorScheme;

    return Card(
      color: colourScheme.surface,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(40))
        ),
        borderOnForeground: true,
        semanticContainer: true,
        elevation: 10,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: child,
        )
    );
  }
}