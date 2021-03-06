import 'package:flutter/material.dart';

import '../bloc/bloc_provider.dart';
import '../bloc/bloc_entry.dart';


class MyFloatingButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlatButton.icon(
        onPressed: () {
           BlocProvider.of<CountBloc>(context).streamSink.add(1);
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
        stream:  BlocProvider.of<CountBloc>(context).stream,
        builder: (context, snapshot) {
          return Text("title:${snapshot.data}");
        });
  }
}
