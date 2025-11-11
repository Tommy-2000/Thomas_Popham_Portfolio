import 'dart:ui';

import 'colours.dart';

abstract class Strings {
  static final TextStyle defaultTextStyle = TextStyle(
    color: Colours.purpleColor,
    fontSize: 20.0,
  );
  static final TextStyle defaultTextStyleBlack = TextStyle(
    color: Colours.blackColor,
    fontSize: 20.0,
  );
  static final TextStyle defaultTextStyleGRey = TextStyle(
    color: Colours.grayColor,
    fontSize: 20.0,
  );
  static final TextStyle smallTextStyleGRey = TextStyle(
    color: Colours.grayColor,
    fontSize: 16.0,
  );
  static final TextStyle smallTextStyle = TextStyle(
    color: Colours.purpleColor,
    fontSize: 16.0,
  );
  static final TextStyle smallTextStyleWhite = TextStyle(
    color: Colours.whiteColor,
    fontSize: 16.0,
  );
  static final TextStyle smallTextStyleBlack = TextStyle(
    color: Colours.blackColor,
    fontSize: 16.0,
  );
  static final TextStyle defaultButtonTextStyle = TextStyle(
    color: Colours.whiteColor,
    fontSize: 20,
  );

  static final TextStyle profileTextStyleBlack = TextStyle(
    color: Colours.blackColor,
    fontSize: 20.0,
  );

  static final TextStyle defaultTextStyleWhite = TextStyle(
    color: Colours.whiteColor,
    fontSize: 20.0,
  );
  static final TextStyle messageRecipientTextStyle = TextStyle(
    color: Colours.blackColor,
    fontSize: 16.0,
    fontWeight: FontWeight.bold,
  );
}
