import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:thomas_popham_portfolio/ui/common/navigation/bottom_nav_bar_scaffold.dart';
import 'package:thomas_popham_portfolio/ui/common/navigation/nav_rail_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RootScaffold extends StatefulWidget {
  const RootScaffold({Key? key, required this.navigationShell})
    : super(key: key ?? const ValueKey("NavScaffold"));

  final StatefulNavigationShell navigationShell;

  @override
  State<RootScaffold> createState() => _RootScaffoldState();
}

class _RootScaffoldState extends State<RootScaffold> {
  bool landscapeWindow = false;
  late ScrollController _hideBottomNavigationBar;
  var _isBottomNavBarVisible;

  @override
  void initState() {
    super.initState();
    _isBottomNavBarVisible = true;
    _hideBottomNavigationBar = ScrollController();
    _hideBottomNavigationBar.addListener(() {
      if (_hideBottomNavigationBar.position.userScrollDirection ==
          ScrollDirection.reverse) {
        setState(() {
          _isBottomNavBarVisible = false;
          if (kDebugMode) {
            print("Bottom Nav Bar is invisible");
          }
        });
      }
      if (_hideBottomNavigationBar.position.userScrollDirection ==
          ScrollDirection.forward) {
        setState(() {
          _isBottomNavBarVisible = true;
          if (kDebugMode) {
            print("Bottom Nav Bar is visible");
          }
        });
      }
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // Check the width of the window using MediaQuery if greater than 800 in a state change
    final double windowWidth = MediaQuery.of(context).size.width;
    landscapeWindow = windowWidth > 800;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Row(
        children: [
          if (landscapeWindow) NavRailScaffold(widget.navigationShell),
          Expanded(child: widget.navigationShell),
        ],
      ),
      bottomNavigationBar: landscapeWindow
          ? Container(color: Colors.transparent)
          : BottomNavBarScaffold(widget.navigationShell),
    );
  }
}
