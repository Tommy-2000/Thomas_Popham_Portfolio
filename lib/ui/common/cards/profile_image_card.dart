import 'package:flutter/material.dart';
import 'rounded_card.dart';

class ProfileImageCard extends StatefulWidget {
  const ProfileImageCard({super.key});

  @override
  State<ProfileImageCard> createState() => _ProfileImageCardState();
}

class _ProfileImageCardState extends State<ProfileImageCard> {
  @override
  Widget build(BuildContext context) {
    return RoundedCard(
      child: Padding(
        padding: const EdgeInsets.all(25),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(48),
          child: Placeholder(),
        ),
      ),
    );
  }
}
