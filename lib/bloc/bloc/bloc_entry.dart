import 'dart:async';
import 'bloc_provider.dart';

class CountBloc implements BlocBase {
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

  @override
  void dispose() {
    print("dispose");
    _streamController.close();
    _sumController.close();
  }

  @override
  void init() {
    print("init");
  }

}
