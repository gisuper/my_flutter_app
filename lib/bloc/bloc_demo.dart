import 'package:flutter/material.dart';
import 'widget/bloc_widget.dart';

class BlocDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:MyCenterText(),
      ),
      floatingActionButton: MyFloatingButton(),
    );
  }

}