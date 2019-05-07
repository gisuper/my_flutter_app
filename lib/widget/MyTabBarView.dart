import 'package:flutter/material.dart';


class MyTabBarView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TabBarView(children: [
      Text(
        "MOVIE",
        style: TextStyle(color: Colors.black),
      ),
      Text("MUSIC_VIDEO"),
      Text("PICTURE_IN_PICTURE")
    ]);
  }
}