import 'dart:ui';
import 'package:hugeicons/hugeicons.dart';

import '../../../logic/navigation/nav_branch.dart';
import '../../../logic/state/providers.dart';
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
    final colourScheme = Theme.of(context).colorScheme;

    if (kDebugMode) {
      print("CustomBottomNavigationBar has been built");
    }
    return Padding(
      padding: const EdgeInsets.all(5),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Container(
          color: colourScheme.primaryContainer,
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 60, sigmaY: 60),
            child: SizedBox(
              height: 65,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List.generate(navScreens.length, (navIndex) {
                      return Material(
                        type: MaterialType.button,
                        color: Colors.transparent,
                        child: InkWell(
                          mouseCursor: SystemMouseCursors.click,
                          splashColor: colourScheme.primary,
                          customBorder: RoundedSuperellipseBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          onTap: () {
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
                          child: SizedBox(
                            width: 75,
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              spacing: 2,
                              children: [
                                HugeIcon(
                                  icon: navScreens[navIndex].navScreenIcon,
                                  color: colourScheme.primary,
                                ),
                                Text(
                                  navScreens[navIndex].navScreenName,
                                  style: TextStyle(color: colourScheme.primary),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
                  ),
                  Material(
                    type: MaterialType.button,
                    color: Colors.transparent,
                    child: InkWell(
                      mouseCursor: SystemMouseCursors.click,
                      splashColor: colourScheme.primary,
                      customBorder: RoundedSuperellipseBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      onTap: () {
                        setState(() {
                          ref.read(themeProvider.notifier).toggleTheme();
                        });
                      },
                      child: SizedBox(
                        height: 75,
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          spacing: 2,
                          children: [
                            HugeIcon(
                              icon: HugeIcons.strokeRoundedMoon02,
                              color: colourScheme.primary,
                            ),
                          ],
                        ),
                      ),
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
