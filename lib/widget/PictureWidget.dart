import 'package:flutter/material.dart';

class PictureWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: 400.0,
                maxWidth: 200.0,
              ),
              child: Container(
                color: Colors.purple,
                child: AspectRatio(aspectRatio: 16.0 / 9.0, child:
                Stack(
                  children: <Widget>[
                    SizedBox(
                      width: 200.0,
                      height: 200.0,
                      child: Container(
                        child: Icon(Icons.brightness_2,color: Colors.white,),
                        decoration: BoxDecoration(color: Color.fromRGBO(3, 54, 255, 1.0),
                          shape: BoxShape.circle,
                          gradient: RadialGradient(colors: [
                            Color.fromRGBO(7, 102, 255, 1.0),
                            Color.fromRGBO(3, 54, 255, 1.0),
                          ]),),
                      ),
                    ),
                    Positioned(child: Icon(Icons.leak_remove,color: Colors.amberAccent,),top: 50.0,left: 20.0,),
                    Positioned(child: Icon(Icons.leak_remove,color: Colors.amberAccent,),top: 70.0,left: 160.0,),
                    Positioned(child: Icon(Icons.leak_remove,color: Colors.amberAccent,),top: 150.0,left: 30.0,),
                    Positioned(child: Icon(Icons.leak_remove,color: Colors.amberAccent,),top: 250.0,left: 120.0,),
                  ],
                ),),
              )
          )
        ],),
    );
  }
}