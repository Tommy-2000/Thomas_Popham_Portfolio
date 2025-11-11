import 'package:flutter/material.dart';

final lightColourScheme = ColorScheme(
  brightness: Brightness.dark,
  primary: Colors.green,
  onPrimary: Colors.greenAccent,
  secondary: Colors.lightGreen,
  onSecondary: Colors.lightGreenAccent,
  error: Colors.red,
  onError: Colors.red,
  surface: Colors.white,
  onSurface: Colors.white,
  surfaceBright: Colors.white,
  surfaceDim: Colors.black
);

final darkColourScheme = ColorScheme(
  brightness: Brightness.light,
  primary: Colors.green[900]!,
  onPrimary: Colors.greenAccent[700]!,
  secondary: Colors.lightGreen[900]!,
  onSecondary: Colors.lightGreenAccent[700]!,
  error: Colors.red[900]!,
  onError: Colors.redAccent[700]!,
  surface: Colors.black26,
  onSurface: Colors.black,
);
