import 'dart:async';

class AsyncImageModel {
  final Completer imageCompleter;

  final Future<void> Function() imageFuture;

  AsyncImageModel({required this.imageCompleter, required this.imageFuture});
}
