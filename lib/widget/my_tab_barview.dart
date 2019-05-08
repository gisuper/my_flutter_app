import 'package:flutter/material.dart';
import '../model/post.dart';
import '../widget/music_widget.dart';
import '../widget/picture_widget.dart';
import '../widget/layout_widget.dart';



class MyTabBarView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TabBarView(children: [
      ListView.builder(itemCount: posts.length, itemBuilder: _itemBuilder),
      MusicWidget(),
      PictureWidget(),
      LayoutWidget(),
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



