import 'package:flutter/material.dart';
import 'package:go_router/src/misc/errors.dart';
import 'package:thomas_popham_portfolio/ui/common/cards/rounded_card.dart';

class NotFoundScreen extends StatefulWidget {
  const NotFoundScreen({super.key, required this.goRouterException});

  final GoException? goRouterException;

  @override
  State<NotFoundScreen> createState() => _NotFoundScreenState();
}

class _NotFoundScreenState extends State<NotFoundScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsetsGeometry.all(10),
        child: RoundedCard(
          child: Padding(
            padding: EdgeInsets.all(5),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(24),
              child: Column(
                children: [
                  const Text("404", style: TextStyle(fontSize: 50)),
                  const Text(
                    "This page cannot be found, please try again later",
                    style: TextStyle(fontSize: 25),
                  ),
                  Text("GoRouter Exception: "),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
