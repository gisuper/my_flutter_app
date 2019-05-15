import 'package:flutter/material.dart';

import '../bloc/count_bloc.dart';

class MyFloatingButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CountBloc.getInstance();
    return FlatButton.icon(
        onPressed: () {
          CountBloc.getInstance().streamSink.add(1);
          CountBloc.getInstance().streamSink.add(1);
        },
        icon: Icon(Icons.add),
        label: Text("Add"));
  }
}

class MyCenterText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        initialData: 0,
        stream: CountBloc.getInstance().stream,
        builder: (context, snapshot) {
          return Text("title:${snapshot.data}");
        });
  }
}
