import 'package:flutter/material.dart';

import '../model/post.dart';

class LayoutWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: PageView.builder(
        itemCount: posts.length,
        itemBuilder: _itemBuilder,
        scrollDirection: Axis.vertical,
        controller: PageController(initialPage: 2, viewportFraction: 0.7),
      ),
    );
  }

  Widget _itemBuilder(BuildContext context, int index) {
    return Stack(
      fit: StackFit.expand, //填充父容器
      children: _buildChildren(index),
    );
  }

  List<Widget> _buildChildren(int index) {
    if (index == 3) {
      return <Widget>[
        SizedBox(
          child: GridView.builder(
            itemCount: posts.length,
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
            itemBuilder: (context, index) {
              return
              Image.network(
                posts[index].imageUrl,
                fit: BoxFit.fitWidth,
                width: 150.0,
              );
            },
          ),
        )
      ];
    }
    return <Widget>[
      Container(
        padding: EdgeInsets.only(bottom: 50.0),
        child: SizedBox(
          child: Image.network(
            posts[index].imageUrl,
            fit: BoxFit.cover,
          ),
        ),
      ),
      Positioned(
        child: Text(posts[index].title),
        bottom: 60.0,
        right: 10.0,
      ),
      Positioned(
        child: Text(posts[index].author),
        bottom: 90.0,
        right: 10.0,
      ),
      Positioned.fill(child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () => print("index:$index"),
          splashColor: Colors.yellow.withOpacity(0.5),
          highlightColor: Colors.red.withOpacity(0.5),
          
        ),
      ))
    ];
  }
}
