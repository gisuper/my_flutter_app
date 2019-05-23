import 'package:flutter/material.dart';
import 'bloc/bloc_demo.dart';
import 'provider/bloc_list.dart';
import 'provider/provider_widget.dart';
import 'widget/flutter_invoke_java.dart';
import 'widget/dio_demo.dart';
import 'widget/button_demo.dart';
import 'model/const.dart';
import 'widget/home_page.dart';
import 'widget/route_sliver.dart';
import 'widget/textfield_demo.dart';
import 'widget/date_picker_demo.dart';
import 'widget/stream_demo.dart';
import 'widget/rxdart_demo.dart';
import 'widget/fluro_demo.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider<Bloc>(
      builder: (_) => Bloc(),
      dispose: (_, value) => value.dispose(),
      child: RootAppWidget(),
    );
  }
}


class RootAppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: Const.FLURO_ROUT ,
      routes: {
        Const.PICTRUE_ROUT : (context) => PictureDemo(),
        Const.SLIVER_ROUT : (context) => SliverDemo(),
        Const.TEXTFIELD_ROUT : (context) => TextFieldDemo(),
        Const.POPUPMENU_ROUT : (context) => PopupMenuDemo(),
        Const.BUTTON_ROUT : (context) => ButtonDemo(),
        Const.DATEPICKER_ROUT : (context) => DatePickerDemo(),
        Const.STREAM_ROUT : (context) => StreamDemo(),
        Const.RXDART_ROUT : (context) => RxdartDemo(),
        Const.BLOC_ROUT : (context) => BlocDemo(),
        Const.PLUGIN_ROUT : (context) => FlutterInvokeJava(),
        Const.DIO_ROUT : (context) => DioDemo(),
        Const.FLURO_ROUT : (context) => FluroDemo(),
      },

      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}


