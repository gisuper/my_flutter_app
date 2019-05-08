import 'package:flutter/material.dart';
import 'model/Const.dart';
import 'widget/HomePage.dart';
import 'widget/RouteSliver.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      routes: {
        Const.PICTRUE_ROUT : (context) => RoutePicture(),
        Const.SLIVER_ROUT : (context) => RouteSliver(),
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class RoutePicture extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AppBarTitle"),
      ),
    );
  }
}