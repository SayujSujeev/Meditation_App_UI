import 'package:flutter/material.dart';
import 'package:meditation_app_ui/constants/constants.dart';
import 'package:meditation_app_ui/data/data.dart';
import 'package:meditation_app_ui/screens/music/components/custom_header.dart';

class CustomBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    double listHeight = ((size.height * 0.06) * songs.length).toDouble();

    return Material(
      child: Column(
        children: [
          // contains image and background image with clipper
          CustomHeader(),

          // List of songs
          Expanded(
              child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Container(
              height: listHeight,
              padding: EdgeInsets.symmetric(horizontal: appPadding * 1.5),
              margin: EdgeInsets.only(bottom: size.height * 0.1),
              child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: songs.length,
                  itemExtent: size.height * 0.055,
                  itemBuilder: (context, index) => ListTile(
                        leading: Icon(
                          index == 0 ? Icons.play_arrow : Icons.lock_outline,
                          size: 22,
                        ),
                        title: index == 0
                            ? Text(
                                songs[index].name,
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: black,
                                ),
                              )
                            : Text(
                                songs[index].name,
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: black,
                                ),
                              ),
                    trailing: index == 0
                        ? Text(
                      songs[index].time,
                      style: TextStyle(
                        fontSize: 14,
                        color: black,
                      ),
                    )
                        : Text(
                      songs[index].time,
                      style: TextStyle(
                        fontSize: 14,
                        color: black,
                      ),
                    ),
                      )),
            ),
          ))
        ],
      ),
    );
  }
}
