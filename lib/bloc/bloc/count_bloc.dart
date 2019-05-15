import 'dart:async';

import 'package:flutter/material.dart';

class CountBloc {
  int _sumCount = 0;

  final StreamController<int> _streamController = StreamController<int>();
  StreamSink<int> get streamSink => _streamController.sink;

  final StreamController<int> _sumController = StreamController<int>();
  Stream<int> get stream => _sumController.stream;

  CountBloc() {
    _streamController.stream.listen(onData);
  }


  void onData(int event) {
    _sumCount = _sumCount + event;
    _sumController.add(_sumCount);
    print("_sumCount:$_sumCount");
  }
  void dispose(){
    _streamController.close();
    _sumController.close();
  }
}

class BlocProvider extends InheritedWidget {

  final CountBloc countBloc;
  final Widget widget;

  BlocProvider({this.widget, this.countBloc}) :super(child: widget);

  static BlocProvider of(BuildContext context) {
    return context.inheritFromWidgetOfExactType(BlocProvider);
  }

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return true;
  }

}