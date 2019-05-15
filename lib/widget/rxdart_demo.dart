import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

class RxdartDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: RxdartWidget(),
      ),
    );
  }
}

class RxdartWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return RxdartState();
  }
}

class RxdartState extends State<RxdartWidget> {
  PublishSubject<String> _publishSubject;
  String title = "...";

  @override
  void initState() {
    super.initState();
    print("initState");
/*
    _publishSubject = PublishSubject<String>();
    _publishSubject.listen(onData);
    _publishSubject.add("456");

    _publishSubject
        .debounce((_) => TimerStream(true, const Duration(seconds: 3)))
        .listen((data) => print("data:$data"));
    _publishSubject.add("...");
*/

    Observable<String> _observable =
        //Observable(Stream.fromIterable(['hello', '您好']));
    //Observable.fromFuture(Future.value('hello ~'));
    /*  Observable.fromIterable(['hello', '您好']);
    Observable.just('hello ~');*/
    Observable.periodic(Duration(milliseconds: 1), (x) => x.toString());

    _observable.listen(onData);
  }

  @override
  void dispose() {
    super.dispose();
    _publishSubject.close();
  }

  @override
  Widget build(BuildContext context) {
    return Text("title:$title");
  }

  void onData(String event) {
    print(event);
    setState(() {
      title = event;
    });
  }
}
