import 'package:flutter/material.dart';

class NiraLayout extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final topLeft = Offset(50, 240);
    final topRight = Offset(350, 240);
    final bottomLeft = Offset(50, 490);
    final botomRight = Offset(350, 490);
    final topMid = Offset(200, 240);
    final bottomMid = Offset(200, 490);
    final leftMid = Offset(50, 365);
    final rightMid = Offset(350, 365);

    final paint = Paint()
      ..color = Colors.black
      ..strokeWidth = 4;

    canvas.drawLine(topLeft, topRight, paint);
    canvas.drawLine(topLeft, bottomLeft, paint);
    canvas.drawLine(botomRight, topRight, paint);
    canvas.drawLine(bottomLeft, botomRight, paint);
    canvas.drawLine(topLeft, botomRight, paint);
    canvas.drawLine(bottomLeft, topRight, paint);
    canvas.drawLine(topMid, bottomMid, paint);
    canvas.drawLine(leftMid, rightMid, paint);
  }

  @override
  bool shouldRepaint(CustomPainter old) {
    return false;
  }
}
