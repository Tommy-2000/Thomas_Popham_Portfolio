import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SubtitleText extends StatelessWidget {
  const SubtitleText({
    super.key,
    required this.data,
    required this.fontSize,
    required this.minFontSize,
    required this.maxLines,
    required this.softWrap,
    required this.textAlign,
    required this.textOverflow,
  });

  final String data;
  final double fontSize;
  final double minFontSize;
  final int maxLines;
  final bool softWrap;
  final TextAlign textAlign;
  final TextOverflow textOverflow;

  @override
  Widget build(BuildContext context) {
    final colourScheme = Theme.of(context).colorScheme;

    return AutoSizeText(
      data,
      style: TextStyle(
        fontSize: fontSize,
        fontFamily: GoogleFonts.lexend().fontFamily,
        color: colourScheme.primary,
      ),
      minFontSize: minFontSize,
      maxLines: maxLines,
      softWrap: softWrap,
      textAlign: textAlign,
      overflow: textOverflow,
    );
  }
}
