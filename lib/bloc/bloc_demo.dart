import 'package:flutter/material.dart';
import 'widget/bloc_widget.dart';
import 'bloc/count_bloc.dart';

class BlocDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      countBloc: CountBloc(),
      widget: Scaffold(
        body: Center(
          child:MyCenterText(),
        ),
        floatingActionButton: MyFloatingButton(),
      ),
    );
  }

}