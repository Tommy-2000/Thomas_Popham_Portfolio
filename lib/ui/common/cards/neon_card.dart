import 'dart:ui' as ui;
import 'package:flutter/material.dart';

class NeonCard extends StatefulWidget {
  const NeonCard({
    super.key,
    required this.child,
    this.neonIntensity = 0.3,
    this.neonGlowSpeed = 2.0,
  });

  final Widget child;
  final double neonIntensity;
  final double neonGlowSpeed;

  @override
  State<NeonCard> createState() => _NeonCardState();
}

class _NeonCardState extends State<NeonCard>
    with SingleTickerProviderStateMixin {
  late AnimationController animeController;

  @override
  void initState() {
    super.initState();
    animeController = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat(reverse: true); // Set the animation controller to the ticker
  }

  @override
  void dispose() {
    animeController.dispose(); // Dispose of the animation controller
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animeController,
      builder: (context, child) {
        return CustomPaint(
          painter: NeonRectanglePainter(
            neonProgress: animeController.value,
            neonIntensity: widget.neonIntensity,
            neonGlowSpread: widget.neonGlowSpeed,
          ),
          child: widget.child,
        );
      },
    );
  }
}

class NeonRectanglePainter extends CustomPainter {
  final double neonProgress;
  final double neonIntensity;
  final double neonGlowSpread;

  NeonRectanglePainter({
    required this.neonProgress,
    this.neonIntensity = 0.3,
    this.neonGlowSpread = 2.0,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final rectShape = Rect.fromLTWH(0, 0, size.width, size.height);
    final rRectShape = RRect.fromRectAndRadius(rectShape, Radius.circular(12));

    final firstColor = Color(0xFF1AFF00);
    final secondColor = Color(0xFF00FFF1);
    final blurSigma = 50.0;

    final backgroundPaint = Paint()
      ..shader = ui.Gradient.linear(
        Offset(size.width / 2, size.height / 2),
        Offset(size.width * neonGlowSpread, size.width * neonGlowSpread),
        [
          Color.lerp(
            firstColor,
            secondColor,
            neonProgress,
          )!.withValues(alpha: neonIntensity),
          Color.lerp(
            firstColor,
            secondColor,
            neonProgress,
          )!.withValues(alpha: 0.0),
        ],
      )
      ..maskFilter = MaskFilter.blur(BlurStyle.normal, blurSigma);

    canvas.drawRect(
      rectShape.inflate(size.width * neonGlowSpread),
      backgroundPaint,
    );

    final foregroundPaint = Paint()..color = Colors.black;

    final glowBorder = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2
      ..shader = LinearGradient(
        colors: [
          Color.lerp(firstColor, secondColor, neonProgress)!,
          Color.lerp(secondColor, firstColor, neonProgress)!,
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ).createShader(rectShape);

    canvas.drawRRect(rRectShape, glowBorder);
  }

  @override
  bool shouldRepaint(NeonRectanglePainter oldPainterDelegate) =>
      oldPainterDelegate.neonProgress != neonProgress ||
      oldPainterDelegate.neonIntensity != neonIntensity ||
      oldPainterDelegate.neonGlowSpread != neonGlowSpread;
}
