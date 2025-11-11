import 'package:thomas_popham_portfolio/ui/root/not_found_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../ui/common/navigation/nav_screen_model.dart';
import '../../ui/root/root_scaffold.dart';

class NavRouter {
  final goRouter = GoRouter(
      initialLocation: "/home",
      routes: [
        StatefulShellRoute.indexedStack(
          builder: (context, state, navShell) {
            return RootScaffold(navigationShell: navShell);
          },
          branches: [
            StatefulShellBranch(
              routes: [
                GoRoute(
                  path: "/home",
                  pageBuilder: (context, state) =>
                      MaterialPage(child: navScreens[0].navScreen),
                ),
              ],
            ),
            StatefulShellBranch(
              routes: [
                GoRoute(
                  path: "/projects",
                  pageBuilder: (context, state) =>
                      MaterialPage(child: navScreens[1].navScreen),
                ),
              ],
            ),
            StatefulShellBranch(
              routes: [
                GoRoute(
                  path: "/experience",
                  pageBuilder: (context, state) =>
                      MaterialPage(child: navScreens[2].navScreen),
                ),
              ],
            ),
          ],
        ),
      ],
      redirect: (context, state) {
        final validRoutes = [
          '/home',
          '/projects',
          '/experience',
          '/blog',
        ];
        if (!validRoutes.contains(state.uri.path)) {
          return '/404';
        } else {
          return null;
        }
      },
      errorBuilder: (context, state) => NotFoundScreen(goRouterException: state.error)
  );

  GoRouterDelegate getGoRouterDelegate() {
    return goRouter.routerDelegate;
  }
}
