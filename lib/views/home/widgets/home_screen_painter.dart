import 'package:coffee_shop/utils/my_colors.dart';
import 'package:flutter/material.dart';

// HomeScreenPainter
class HomeScreenPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = MyColors.c674D3F
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;

    Path path0 = Path();
    path0.moveTo(0, 0);
    path0.quadraticBezierTo(
        0, size.height * 0.4500000, 0, size.height * 0.6000000);
    path0.cubicTo(
        size.width * 0.0178400,
        size.height * 0.8076000,
        size.width * 0.0548533,
        size.height * 0.8793333,
        size.width * 0.0701333,
        size.height * 0.9059333);
    path0.cubicTo(
        size.width * 0.1216000,
        size.height * 1.0047333,
        size.width * 0.1621067,
        size.height * 0.7722000,
        size.width * 0.2693333,
        size.height * 0.7566667);
    path0.cubicTo(
        size.width * 0.3090667,
        size.height * 0.7433333,
        size.width * 0.4032267,
        size.height * 0.8461333,
        size.width * 0.4253067,
        size.height * 0.8722667);
    path0.cubicTo(
        size.width * 0.4689333,
        size.height * 0.9280000,
        size.width * 0.5293067,
        size.height * 0.9583333,
        size.width * 0.5840000,
        size.height * 0.9566667);
    path0.cubicTo(
        size.width * 0.6545067,
        size.height * 0.9340667,
        size.width * 0.7377600,
        size.height * 0.7823333,
        size.width * 0.7573333,
        size.height * 0.7200000);
    path0.cubicTo(
        size.width * 0.7989867,
        size.height * 0.5991333,
        size.width * 0.8226400,
        size.height * 0.5871333,
        size.width * 0.8489600,
        size.height * 0.5826667);
    path0.cubicTo(
        size.width * 0.8719467,
        size.height * 0.5836000,
        size.width * 0.9197067,
        size.height * 0.5934667,
        size.width * 0.9408800,
        size.height * 0.5949333);
    path0.cubicTo(
        size.width * 0.9651467,
        size.height * 0.5931333,
        size.width * 0.9952267,
        size.height * 0.5855333,
        size.width,
        size.height * 0.5333333);
    path0.quadraticBezierTo(size.width, size.height * 0.4000000, size.width, 0);

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
