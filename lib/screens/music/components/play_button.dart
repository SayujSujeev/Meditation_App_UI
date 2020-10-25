import 'package:flutter/material.dart';
import 'package:meditation_app_ui/constants/constants.dart';

class PlayButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Positioned(
      bottom: size.height * 0.065,
      left: 0,
      right: 0,
      child: Container(
        width: size.width * 0.16,
        height: size.width * 0.16,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              black,
              indigo,
              blue,
              lightBlue,
            ],
          )
        ),
        child: IconButton(
          onPressed: (){},
          icon: Icon(Icons.play_arrow,color: white.withOpacity(0.9),size: 40,),
        ),
      ),
    );
  }
}
