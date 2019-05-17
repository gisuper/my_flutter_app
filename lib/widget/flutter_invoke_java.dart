import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


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
          child: new Icon(Icons.get_app)
      ),

    );
  }

}
