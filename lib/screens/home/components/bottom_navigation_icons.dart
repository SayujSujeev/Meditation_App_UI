import 'package:flutter/material.dart';
import 'package:meditation_app_ui/screens/home/components/bottom_icons.dart';

class BottomNavigationIcons extends StatefulWidget {
  @override
  _BottomNavigationIconsState createState() => _BottomNavigationIconsState();
}

class _BottomNavigationIconsState extends State<BottomNavigationIcons> {

  // setting it to 1 so on starting the app it will select center icon
  int bottomNavigationbarItemIndex = 1;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Positioned(
      bottom: 0,
      left: size.width * 0.1,
      right: size.width * 0.1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BottomIcons(
            onPressed: (){
              setState(() {
                bottomNavigationbarItemIndex = 0;
              });
            },
            isSelected: bottomNavigationbarItemIndex == 0 ? true : false,
            icons: Icons.bubble_chart,
            text: "Focus",
          ),
          BottomIcons(
            onPressed: (){
              setState(() {
                bottomNavigationbarItemIndex = 1;
              });
            },
            isSelected: bottomNavigationbarItemIndex == 1 ? true : false,
            icons: Icons.accessibility_new,
            text: "Relax",
          ),
          BottomIcons(
            onPressed: (){
              setState(() {
                bottomNavigationbarItemIndex = 2;
              });
            },
            isSelected: bottomNavigationbarItemIndex == 2 ? true : false,
            icons: Icons.nightlight_round,
            text: "Sleep",
          ),
        ],
      ),
    );
  }
}
