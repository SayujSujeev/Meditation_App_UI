import 'package:flutter/material.dart';
import 'package:meditation_app_ui/constants/constants.dart';

class ProfilePicture extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Positioned(
      top: size.height * 0.075,
      left: size.width * 0.42,
      child: Stack(
        children: [
          Container(
            width: size.width * 0.16,
            height: size.width * 0.16,
            decoration: BoxDecoration(
              color: white,
              shape: BoxShape.circle
            ),
            child: Center(
              child: Container(
                width: size.width * 0.15,
                height: size.width * 0.16,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/propic.jpg'),
                      fit: BoxFit.cover
                    ),
                    shape: BoxShape.circle,
                ),
              )
            ),
          )
        ],
      ),
    );
  }
}
