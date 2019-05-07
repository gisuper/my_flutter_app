import 'package:flutter/material.dart';
import 'package:my_flutter_app/model/Post.dart';
import 'package:my_flutter_app/widget/MusicWidget.dart';



class MyTabBarView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TabBarView(children: [
      ListView.builder(itemCount: posts.length, itemBuilder: _itemBuilder),
      MusicWidget(),
      Text("PICTURE_IN_PICTURE")
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

