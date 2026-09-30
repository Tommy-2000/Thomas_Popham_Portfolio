import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:thomas_popham_portfolio/ui/common/navigation/bottom_nav_bar_scaffold.dart';
import 'package:thomas_popham_portfolio/ui/common/navigation/nav_rail_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../common/responsive_render.dart';

class RootScaffold extends StatefulWidget {
  const RootScaffold({Key? key, required this.navigationShell})
    : super(key: key ?? const ValueKey("RootScaffold"));

  final StatefulNavigationShell navigationShell;

  @override
  State<RootScaffold> createState() => _RootScaffoldState();
}

class _RootScaffoldState extends State<RootScaffold> {
  late ResponsiveRender _responsiveRender;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // ResponsiveRender notifies this screen if any responsive screen changes are detected
    _responsiveRender = ResponsiveRender(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Row(
        children: [
          // Render the NavRailScaffold if the screen is either extra large, large or medium
          // Otherwise don't render it
          if (_responsiveRender.screenIsExtraLarge &&
              _responsiveRender.screenIsLarge &&
              _responsiveRender.screenIsMedium)
            NavRailScaffold(widget.navigationShell),
          // The navigationShell renders each screen according the StatefulShellRoute in GoRouter
          Expanded(child: widget.navigationShell),
        ],
      ),
      // Render the BottomNavBarScaffold if the screen is either small or extra small
      // Otherwise don't render it
      bottomNavigationBar:
          _responsiveRender.screenIsExtraLarge &&
              _responsiveRender.screenIsLarge &&
              _responsiveRender.screenIsMedium && _responsiveRender.screenIsSmall
          ? null
          : BottomNavBarScaffold(widget.navigationShell),
    );
  }
}
