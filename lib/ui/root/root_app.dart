import 'package:flutter_riverpod/flutter_riverpod.dart';
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
      theme: ThemeData(useMaterial3: true, primarySwatch: Colors.lightGreen),
      // darkTheme: ThemeData.light(),
      // themeMode: ThemeMode.light,
      routerConfig: NavRouter().goRouter,
    );
  }
}
