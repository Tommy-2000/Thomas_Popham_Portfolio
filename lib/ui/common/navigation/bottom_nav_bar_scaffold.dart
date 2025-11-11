import 'dart:ui';
import 'package:hugeicons/hugeicons.dart';
import 'package:hugeicons/styles/stroke_rounded.dart';

import '../../../logic/navigation/nav_branch.dart';
import 'nav_screen_model.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:logging/logging.dart';

class BottomNavBarScaffold extends ConsumerStatefulWidget {
  BottomNavBarScaffold(this.navigationShell, {super.key});

  final StatefulNavigationShell navigationShell;

  final uiDebugLogger = Logger("uiDebugLogger");

  @override
  ConsumerState<BottomNavBarScaffold> createState() =>
      _BottomNavBarScaffoldState();
}

class _BottomNavBarScaffoldState extends ConsumerState<BottomNavBarScaffold> {
  @override
  Widget build(BuildContext context) {
    if (kDebugMode) {
      print("CustomBottomNavigationBar has been built");
    }
    return Padding(
      padding: const EdgeInsets.all(30),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Container(
          color: Colors.green,
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 50, sigmaY: 50),
            child: SizedBox(
              height: 65,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(navScreens.length, (navIndex) {
                  // final riveModel = bottomNavItems[index].riveModel;
                  return Flexible(
                    child: Column(
                      children: [
                        IconButton(
                          mouseCursor: SystemMouseCursors.click,
                          icon: navScreens[navIndex].navScreenIcon,
                          isSelected: true,
                          onPressed: () {
                            if (kDebugMode) {
                              print(
                                "CustomBottomNavigationBar button has been tapped",
                              );
                            }
                            NavBranch().goToBranch(
                              navIndex,
                              widget.navigationShell,
                            );
                          },
                        ),
                        Text(
                          navScreens[navIndex].navScreenName,
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  );
                }),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
