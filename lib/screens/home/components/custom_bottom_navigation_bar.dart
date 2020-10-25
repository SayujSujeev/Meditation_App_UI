import 'package:flutter/material.dart';
import 'package:meditation_app_ui/clippers/wavy_clipper.dart';
import 'package:meditation_app_ui/constants/constants.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Positioned(
      bottom: 0,
      child: ClipPath(
        clipper: WaveClipper(),
        child: Container(
          height: size.height * 0.09,
          width: size.width,
          color: darkGrey,
        ),
      ),
    );
  }
}
