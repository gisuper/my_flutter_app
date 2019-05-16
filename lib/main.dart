import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'widget/dio_demo.dart';
import 'widget/button_demo.dart';
import 'model/const.dart';
import 'widget/home_page.dart';
import 'widget/route_sliver.dart';
import 'widget/textfield_demo.dart';
import 'widget/date_picker_demo.dart';
import 'widget/stream_demo.dart';
import 'widget/rxdart_demo.dart';
import 'bloc/bloc_demo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: Const.DIO_ROUT ,
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
      },

      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class FlutterInvokeJava extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _PluginTestState();
  }
}
class _PluginTestState extends State<FlutterInvokeJava> {

  //创建通道名称 必须唯一
  static const platform = const MethodChannel('sample.flutter.io/data');
  String _data;

  Future<Null> _returndata() async{
    String data;
    try{
      //1.invokeMethod('xxxx') xxx可以自己命名
      final int resultData = await platform.invokeMethod('data');
      data = "平台返回数值：$resultData";
    }catch(e){
      data = "错误：${e.message}";
    }

    //状态更新
    setState(() {
      _data = data;
    });

  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      //appBar
      appBar: AppBar(
        title: Text("插件例子"),
        //标题居中
        centerTitle: true,
      ),
      body:new Center(
        child: Text("$_data"),
      ),
      floatingActionButton : FloatingActionButton(
          onPressed: _returndata,
          tooltip: "获取平台返回的值",
          child: new Icon(Icons.audiotrack)
      ),

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