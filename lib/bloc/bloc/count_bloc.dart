import 'dart:async';

class CountBloc {
  int _sumCount = 0;
 static CountBloc _countBloc;
  final StreamController<int> _streamController = StreamController<int>();
  StreamSink<int> get streamSink => _streamController.sink;

  final StreamController<int> _sumController = StreamController<int>();
  Stream<int> get stream => _sumController.stream;

  CountBloc._() {
    _streamController.stream.listen(onData);
  }

  static CountBloc getInstance() {
    if (_countBloc == null) {
      print("_countBloc == null");
      _countBloc = CountBloc._();
    }
    return _countBloc;
  }

  void onData(int event) {
    _sumCount = _sumCount + event;
    _sumController.add(_sumCount);
    print("_sumCount:$_sumCount");
  }
  void dispose(){
    streamSink.close();
    _streamController.close();
  }
}
