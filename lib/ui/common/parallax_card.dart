import 'dart:io';

import 'package:flutter/material.dart';

@immutable
class ParallaxCard extends StatelessWidget {
  const ParallaxCard({
    super.key,
    required this.imageFile,
    required this.cardTitle,
    required this.cardSubtitle,
  });

  final File imageFile;
  final String cardTitle;
  final String cardSubtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: AspectRatio(
        aspectRatio: 16 / 9,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Stack(
            children: [
              parallaxBackground(context),
              parallaxGradient(),
              parallaxTitleAndSubtitle(),
            ],
          ),
        ),
      ),
    );
  }

  Widget parallaxBackground(BuildContext context) {
    return Positioned.fill(child: Image.file(imageFile, fit: BoxFit.cover));
  }

  Widget parallaxGradient() {
    return Positioned.fill(
      child: DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.transparent, Colors.black.withValues(alpha: 0.7)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: const [0.6, 0.95],
          ),
        ),
      ),
    );
  }

  Widget parallaxTitleAndSubtitle() {
    return Positioned(
      left: 20,
      bottom: 20,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            cardTitle,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            cardSubtitle,
            style: const TextStyle(color: Colors.white, fontSize: 14),
          ),
        ],
      ),
    );
  }
}
