import 'package:flutter/material.dart';

class WaveClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {

    Path path = Path();

    path.lineTo(0, 0);

    // first wave
    path.cubicTo(
         size.width / 12, 0,
         size.width / 12, 2 * size.height / 5,
        2 * size.width / 12, 2 * size.height / 5
    );
    path.cubicTo(
        3 * size.width / 12, 2 * size.height / 5,
        3 * size.width / 12, 0,
        4 * size.width / 12, 0
    );

    //Second wave
    path.cubicTo(
       5 * size.width / 12, 0,
        5 *size.width / 12, 2 * size.height / 5,
        6 * size.width / 12, 2 * size.height / 5
    );
    path.cubicTo(
        7 * size.width / 12, 2 * size.height / 5,
        7 * size.width / 12, 0,
        8 * size.width / 12, 0
    );

    //third wave
    path.cubicTo(
        9 * size.width / 12, 0,
        9 *size.width / 12, 2 * size.height / 5,
        10 * size.width / 12, 2 * size.height / 5
    );
    path.cubicTo(
        11 * size.width / 12, 2 * size.height / 5,
        11 * size.width / 12, 0,
        12 * size.width / 12, 0
    );

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