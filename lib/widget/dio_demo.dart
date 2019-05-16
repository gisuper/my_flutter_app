import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:my_flutter_app/model/model_list.dart';

class DioDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: DioWidget(),
      ),
    );
  }



}


class DioWidget extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return DioState();
  }
}

class DioState extends State<DioWidget>{

  String title = "tite";

  @override
  void initState() {
    super.initState();
    print("initState");
    getResponse();
  }
  @override
  Widget build(BuildContext context) {
    return Text("$title");
  }
  getResponse() async{
    print("123");
    Dio dio = new Dio();
    dio.options.baseUrl="https://t-api.xyhj.io/v1/m/en/";
    dio.options.headers = {"AHost":"gameCenter"};
    dio.options.connectTimeout=5000;
    dio.options.receiveTimeout=5000;

    Response future = await dio.get("app/list",queryParameters: {"system":"android","andrCurVersion":"1.2.3"});
    GameList gameList = GameList.fromJson(future.data);
    bool success = gameList.success;
    print("success : $success");
    print("size:${gameList.payload.length}");
    for(Payload item in gameList.payload){
      print("gameName:${item.gameName}");
    }
    setState(() {
      title = future.data.toString();
    });
  }

}