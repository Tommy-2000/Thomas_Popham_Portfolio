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

class NavRailScaffold extends ConsumerStatefulWidget {
  NavRailScaffold(this.navigationShell, {super.key});

  final StatefulNavigationShell navigationShell;

  final uiDebugLogger = Logger("uiDebugLogger");

  @override
  ConsumerState<NavRailScaffold> createState() => _NavRailScaffoldState();
}

class _NavRailScaffoldState extends ConsumerState<NavRailScaffold> {
  bool toggleButtonIsSelected = true;
  @override
  Widget build(BuildContext context) {
    if (kDebugMode) {
      print("CustomNavigationRail has been built");
    }
    return ClipRRect(
      borderRadius: BorderRadius.circular(50),
      child: Container(
        color: Colors.green,
        width: 100,
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 50, sigmaY: 50),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: SizedBox(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List.generate(navScreens.length, (navIndex) {
                      return Column(
                        children: [
                          IconButton(
                            mouseCursor: SystemMouseCursors.click,
                            focusColor: Colors.white,
                            isSelected: true,
                            icon: navScreens[navIndex].navScreenIcon,
                            onPressed: () {
                              if (kDebugMode) {
                                print(
                                  "CustomNavigationRail button has been tapped",
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
                      );
                    }),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: HugeIcon(
                      icon: HugeIcons.strokeRoundedMoon02,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
