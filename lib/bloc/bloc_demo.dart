import 'package:flutter/material.dart';
import 'widget/bloc_widget.dart';
import 'bloc/bloc_provider.dart';
import 'bloc/bloc_entry.dart';

class BlocDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      bloc: CountBloc(),
      child: Scaffold(
        body: Center(
          child:MyCenterText(),
        ),
        floatingActionButton: MyFloatingButton(),
      ),
    );
  }

}