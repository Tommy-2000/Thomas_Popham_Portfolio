

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:thomas_popham_portfolio/logic/state/theme_notifier.dart';

final themeProvider = NotifierProvider<ThemeNotifier, bool>(
  ThemeNotifier.new
);
