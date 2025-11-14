import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:thomas_popham_portfolio/logic/state/providers.dart';
import '../../logic/navigation/nav_router.dart';
import 'package:flutter/material.dart';

class RootApp extends ConsumerStatefulWidget {
  const RootApp({super.key});

  @override
  ConsumerState<RootApp> createState() => _RootAppState();
}

class _RootAppState extends ConsumerState<RootApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Thomas Popham - Graduate Software Developer',
      theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.green, brightness: Brightness.light),
      darkTheme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.green, brightness: Brightness.dark),
      // Listen for changes to the theme through Riverpod
      themeMode: ref.watch(themeProvider) ? ThemeMode.dark : ThemeMode.light,
      routerConfig: NavRouter().goRouter,
    );
  }
}
