import 'package:flutter_riverpod/flutter_riverpod.dart';

class ThemeNotifier extends Notifier<bool> {

  @override
  bool build() => false;

  void toggleTheme() {
    state = !state;
  }

}
