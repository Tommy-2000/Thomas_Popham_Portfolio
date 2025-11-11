import 'package:flutter/foundation.dart';
import 'package:go_router/go_router.dart';

class NavBranch {
  // Call goToBranch to navigate to the branch according to the index found within the navigation shell
  void goToBranch(int navIndex, StatefulNavigationShell navigationShell) {
    if (kDebugMode) {
      print("Navigated to branch");
    }
    navigationShell.goBranch(
      navIndex,
      initialLocation: navIndex == navigationShell.currentIndex,
    );
  }
}
