import 'package:flutter/material.dart';
import 'widget/button_demo.dart';
import 'model/const.dart';
import 'widget/home_page.dart';
import 'widget/route_sliver.dart';
import 'widget/textfield_demo.dart';
import 'widget/date_picker_demo.dart';
import 'widget/stream_demo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: Const.STREAM_ROUT ,
      routes: {
        Const.PICTRUE_ROUT : (context) => PictureDemo(),
        Const.SLIVER_ROUT : (context) => SliverDemo(),
        Const.TEXTFIELD_ROUT : (context) => TextFieldDemo(),
        Const.POPUPMENU_ROUT : (context) => PopupMenuDemo(),
        Const.BUTTON_ROUT : (context) => ButtonDemo(),
        Const.DATEPICKER_ROUT : (context) => DatePickerDemo(),
        Const.STREAM_ROUT : (context) => StreamDemo(),
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