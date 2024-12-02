import 'package:flutter/material.dart';

import '../Constants/app_colors.dart';

class CurvedTopPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = primaryColor
      ..style = PaintingStyle.fill;

    final path = Path();
    // Start the curve at the bottom
    path.moveTo(0, size.height * 0.55); // Adjust the height as needed
    path.quadraticBezierTo(
      size.width / 2,
      size.height * 0.8, // Adjust this value to control the curve's peak
      size.width,
      size.height * 0.55, // Mirror the moveTo adjustment here
    );
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}



