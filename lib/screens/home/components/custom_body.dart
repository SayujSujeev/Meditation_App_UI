import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meditation_app_ui/clippers/body_image_clipper.dart';
import 'package:meditation_app_ui/constants/constants.dart';
import 'package:meditation_app_ui/screens/music/music_screen.dart';

class CustomBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //will helps to get the size of the screen
    Size size = MediaQuery
        .of(context)
        .size;

    return Padding(
      padding: const EdgeInsets.only(top: appPadding),
      child: Stack(
        alignment: Alignment.topCenter,
        children: [

          //bottom image
          Container(
            margin: EdgeInsets.only(top: size.height * 0.48),
            child: Image(
              height: size.height * 0.55,
              width: size.width,
              fit: BoxFit.cover,
              image: AssetImage('assets/images/sensations.jpg'),
            ),
          ),
          //middle image
          ClipPath(
            clipper: BodyImageClipper(),
            child: Container(
              margin: EdgeInsets.only(top: size.height * 0.28),
              child: Image(
                height: size.height * 0.55,
                width: size.width,
                fit: BoxFit.cover,
                image: AssetImage('assets/images/daydream.jpg'),
              ),
            ),
          ),

          // top image
          ClipPath(
            clipper: BodyImageClipper(),
            child: Container(
              child: Image(
                height: size.height * 0.5,
                width: size.width,
                fit: BoxFit.cover,
                image: AssetImage('assets/images/meditation.jpg'),
              ),
            ),
          ),
          Container(
            height: size.height,
            width: size.width,
            color: black.withOpacity(0.5),
          ),
          Column(
            children: [
              SizedBox(
                height: size.height * 0.18,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context, MaterialPageRoute(builder: (_) => MusicScreen(),),);
                },
                child: Text('Meditation', style: TextStyle(
                  color: white,
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                ),),
              ),
              Text('discover happiness', style: TextStyle(
                color: white,
                fontSize: 18,
              ),),
              SizedBox(
                height: size.height * 0.18,
              ),
              Text('Daydream', style: TextStyle(
                color: white,
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),),
              Text('go beyond the form', style: TextStyle(
                color: white,
                fontSize: 18,
              ),),
              SizedBox(
                height: size.height * 0.18,
              ),
              Text('Sensations', style: TextStyle(
                color: white,
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),),
              Text('feel the moment', style: TextStyle(
                color: white,
                fontSize: 18,
              ),),
            ],
          )
        ],
      ),
    );
  }
}
