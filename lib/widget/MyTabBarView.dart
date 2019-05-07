import 'package:flutter/material.dart';
import 'package:my_flutter_app/model/Post.dart';
import 'package:my_flutter_app/widget/MusicWidget.dart';



class MyTabBarView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TabBarView(children: [
      ListView.builder(itemCount: posts.length, itemBuilder: _itemBuilder),
      MusicWidget(),
      Container(
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
      )
    ]);
  }

  Widget _itemBuilder(context, index) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: Stack(
        alignment: Alignment.bottomRight,
      children: <Widget>[
        Image.network(posts[index].imageUrl),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Text(posts[index].title,style: TextStyle(color: Colors.blue,fontSize: 18.0),),
            SizedBox(height: 5.0,),
            Text(posts[index].author,style: TextStyle(color: Colors.yellow,fontSize: 14.0),),
            SizedBox(height: 10.0,),
          ],
        )
      ],
      )
    );
  }
}

