
import 'package:flutter/material.dart';

class ResponsiveRender {
  final BuildContext context;
  late double screenWidth;
  late double screenHeight;
  late double blockWidth;
  late double blockHeight;

  ResponsiveRender(this.context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;
    blockWidth = screenWidth / 100;
    blockHeight = screenHeight / 100;
  }

  double wp(double percent) => blockWidth * percent;
  double hp(double percent) => blockHeight * percent;

  late bool screenIsExtraLarge = screenWidth > 900;
  late bool screenIsLarge = screenWidth > 750;
  late bool screenIsMedium = screenWidth > 600;
  late bool screenIsSmall = screenWidth > 450;
  late bool screenIsExtraSmall = screenWidth > 300;
}

