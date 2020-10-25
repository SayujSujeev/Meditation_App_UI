import 'package:flutter/material.dart';
import 'package:meditation_app_ui/clippers/single_curved_clipper.dart';
import 'package:meditation_app_ui/constants/constants.dart';
import 'dart:math' as math;

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Stack(
      children: [
        // rotating the appbar because we can use same clipper in next screen
        Transform(
          alignment: Alignment.center,
          transform: Matrix4.rotationX(math.pi),
          child: ClipPath(
            clipper: SingleCurvedClipper(),
            child: Container(
              height: size.height * 0.1,
              width: size.width,
              color: grey,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
              left: appPadding * 2, right: appPadding * 2, top: appPadding * 2),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.wifi_tethering,color: white,size: 25,),

              Stack(
                children: [
                  Icon(Icons.notifications,color: white,size: 25,),
                  Positioned(
                    right: 0,
                    top: 0,
                    child: Container(
                      width: size.width * 0.035,
                      height: size.width * 0.035,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: black.withOpacity(0.8),
                      ),
                      child: Center(
                        child: Text(
                          '4',style: TextStyle(
                          color: white,
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
