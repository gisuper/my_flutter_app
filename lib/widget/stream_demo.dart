import 'dart:async';

import 'package:flutter/material.dart';

class StreamDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: StreamWidget(),
      ),
    );
  }
}

class StreamWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return StreamWidgetState();
  }
}

class StreamWidgetState extends State<StreamWidget> {
  StreamSubscription _streamSubscription;
  StreamController _streamController;

  @override
  void initState() {
    super.initState();
    print("initSate");
    _streamController = StreamController.broadcast();
    _streamSubscription =
        _streamController.stream.listen(onData); //监听stream数据变化
    _streamController.add("1232121"); //添加数据
    awaitAddData();
  }

  void awaitAddData() async {
    await Future.delayed(Duration(seconds: 5));
    _streamController.add("awaitAddData");
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        StreamBuilder(
            stream: _streamController.stream,
            initialData: "initialData",
            builder: (context, snapshot) {
              return Text(snapshot.data);
            }),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              child: Text('Add'),
              onPressed: awaitAddData,
            ),
            FlatButton(
              child: Text('Pause'),
              onPressed: _pauseStream,
            ),
            FlatButton(
              child: Text('Resume'),
              onPressed: _resumeStream,
            ),
            FlatButton(
              child: Text('Cancel'),
              onPressed: _cancelStream,
            ),
          ],
        ),
      ],
    );
  }

  void onDataTwo(String data) {
    print('onDataTwo: $data');
  }

  void _pauseStream() {
    print('Pause subscription');
    _streamSubscription.pause();
  }

  void _resumeStream() {
    print('Resume subscription');
    _streamSubscription.resume();
  }

  void _cancelStream() {
    print('Cancel subscription');
    _streamSubscription.cancel();
  }

  void onData(event) {
    print(event);
  }
}
