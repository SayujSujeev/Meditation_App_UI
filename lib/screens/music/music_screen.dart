import 'package:flutter/material.dart';
import 'package:meditation_app_ui/screens/music/components/custom_body.dart';
import 'package:meditation_app_ui/screens/music/components/custom_bottom_nav_bar.dart';
import 'package:meditation_app_ui/screens/music/components/play_button.dart';

class MusicScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [

            //it contain image , background and songs,
            CustomBody(),

            CustomBottomNavBar(),

            PlayButton(),
          ],
        ),
      ),
    );
  }
}
