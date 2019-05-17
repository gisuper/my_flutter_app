
import 'dart:async';

class Bloc {
  final StreamController<int> _streamControllerAdd = StreamController();
  final StreamController<int> _streamControllerSum = StreamController();
  Stream<int> streamSum;
  StreamSink<int> addStreamSink;

  Bloc() {
    Stream<int> stream = _streamControllerAdd.stream.asBroadcastStream();
    streamSum = _streamControllerSum.stream.asBroadcastStream();
    addStreamSink = _streamControllerAdd.sink;
    stream.listen(onData);
  }


  void dispose() {
    print("dipose");
    _streamControllerAdd.close();
    _streamControllerSum.close();
  }

  int sum = 0;
  void onData(int event) {
    print("event:$event");
    sum = sum + event;
    _streamControllerSum.add(sum);
  }
}