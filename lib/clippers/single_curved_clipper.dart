import 'package:flutter/material.dart';

class SingleCurvedClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.lineTo(4 * size.width / 12, 0);
    path.cubicTo(5 * size.width / 12, 0, 5 * size.width / 12,
        2 * size.height / 5, 6 * size.width / 12, 2 * size.height / 5);

    path.cubicTo(7 * size.width / 12, 2 * size.height / 5, 7 * size.width / 12,
        0, 8 * size.width / 12, 0);

    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
