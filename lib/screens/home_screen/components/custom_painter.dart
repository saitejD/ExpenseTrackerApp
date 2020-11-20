import 'dart:math';

import 'package:flutter/material.dart';

final Color activeColor = Color(0xffFF2E63);
final Color inactiveColor = Color(0xff6C73AE);

class CirclePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Rect drawingRect = Rect.fromCircle(
        center: Offset(size.width / 2, size.height / 2),
        radius: size.width / 2);

    final Paint paint2 = Paint();
    paint2.color = const Color(0xff9F7D43).withOpacity(0.3);
    paint2.style = PaintingStyle.stroke;
    paint2.strokeWidth = 7;

    final Paint higlight = Paint();
    higlight.color = activeColor;
    higlight.style = PaintingStyle.stroke;
    higlight.strokeCap = StrokeCap.round;
    higlight.strokeWidth = 7;

    canvas.drawCircle(
        Offset(size.width / 2, size.height / 2), size.width / 2, paint2);
    canvas.drawArc(drawingRect, -pi / 2 + 0.35, pi - 0.35, false, higlight);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
