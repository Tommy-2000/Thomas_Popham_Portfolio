import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:flutter/material.dart';

import 'ui/root/root_app.dart';

Future<void> main() async {
  try {
    // Ensure that all Flutter widgets are initialized
    WidgetsFlutterBinding.ensureInitialized();
  } catch (e){
    e.toString();
  }
  if (kDebugMode) {
    // Check image caching with network
    CachedNetworkImage.logLevel = CacheManagerLogLevel.debug;
  }

  // Set the Url path strategy if the app is running in Web mode
  if (kIsWeb) {
    usePathUrlStrategy();
  }

  runApp(ProviderScope(child: RootApp()));
}

