import 'package:flutter/material.dart';
import '../../../utils/my_colors.dart';

class LoginScreenPainter extends CustomPainter{
  
  @override
  void paint(Canvas canvas, Size size) {
    
    

  Paint paint0 = Paint()
      ..color = MyColors.c674D3F
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;
     
         
    Path path0 = Path();
    path0.moveTo(0,0);
    path0.quadraticBezierTo(0,size.height*0.5625000,0,size.height*0.7500000);
    path0.cubicTo(size.width*0.0363733,size.height*0.8953667,size.width*0.0813333,size.height*0.9300000,size.width*0.1333333,size.height*0.9433333);
    path0.cubicTo(size.width*0.2133333,size.height*0.9525000,size.width*0.2440000,size.height*0.8808333,size.width*0.3386667,size.height*0.8866667);
    path0.cubicTo(size.width*0.4000000,size.height*0.8825000,size.width*0.4126667,size.height*0.9908333,size.width*0.5600000,size.height*0.9833333);
    path0.cubicTo(size.width*0.6240000,size.height*0.9808333,size.width*0.6806667,size.height*0.8354333,size.width*0.7440000,size.height*0.8350000);
    path0.quadraticBezierTo(size.width*0.7860000,size.height*0.8308333,size.width*0.9546667,size.height*0.8333333);
    path0.lineTo(size.width,size.height*0.8179333);
    path0.lineTo(size.width,0);

    canvas.drawPath(path0, paint0);
  
    
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
  
}
