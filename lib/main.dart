import 'package:flutter/material.dart';
import 'model/const.dart';
import 'widget/home_page.dart';
import 'widget/route_sliver.dart';
import 'widget/textfield_demo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      routes: {
        Const.PICTRUE_ROUT : (context) => PictureDemo(),
        Const.SLIVER_ROUT : (context) => SliverDemo(),
        Const.TEXTFIELD_ROUT : (context) => TextFieldDemo(),
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class PictureDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AppBarTitle"),
      ),
    );
  }
}