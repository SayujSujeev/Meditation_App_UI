import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meditation_app_ui/clippers/body_image_clipper.dart';
import 'package:meditation_app_ui/constants/constants.dart';

class HeaderBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: size.width * 0.3,
          height:  size.height * 0.17,
          margin: EdgeInsets.only(top: size.width * 0.7),
          decoration: BoxDecoration(
            boxShadow: [BoxShadow(
              blurRadius: 40,
              spreadRadius: 30,
              color: blueGrey,
            )]
          ),
        ),
        ClipPath(
          clipper: BodyImageClipper(),
          child: Container(
            margin: EdgeInsets.only(top: 5),
            height: size.height * 0.55,
            color: white,
          ),
        ),
        ClipPath(
          clipper: BodyImageClipper(),
          child: Container(
            height: size.height * 0.55,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/background.jpg'),fit: BoxFit.cover,
              ),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10.0,sigmaY: 10.0),
              child: Container(
                color: black.withOpacity(0.6),
              ),
            ),
          ),
        )
      ],
    );
  }
}
