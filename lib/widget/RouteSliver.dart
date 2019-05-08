import 'package:flutter/material.dart';

import '../model/Post.dart';

class RouteSliver extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(//可滚动的view里面有sliver widget 可以是appbar list gridlist  padding
        slivers: <Widget>[
          SliverAppBar(
            pinned: false,//位置是否固定
            expandedHeight: 200.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("App Bar Title",style: TextStyle(fontWeight: FontWeight.w300,fontSize: 16.0),),
              background: Image.network(posts[8].imageUrl,fit: BoxFit.cover,),
            ),
          ),
          SliverSafeArea(
            sliver: SliverPadding(
              padding: EdgeInsets.all(10.0),
              sliver: SliverList(
                delegate: buildSliverChildBuilderDelegate(),
              ),
            ),
          ),
          SliverAppBar(
            title: Text("Over"),
            pinned: true,//位置是否固定
          ),
        ],
      ),
    );
  }

  SliverChildBuilderDelegate buildSliverChildBuilderDelegate() {
    return SliverChildBuilderDelegate(
        (context, index) {
            return Padding(
              padding: EdgeInsets.only(bottom: 20.0),
              child: Material(
                elevation: 12.0,
                borderRadius: BorderRadius.all(Radius.circular(22.0)),
                shadowColor: Colors.black.withOpacity(0.6),
                child: Container(
                  height: 200.0,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(posts[index].imageUrl),
                          fit: BoxFit.cover),
                      shape: BoxShape.rectangle,
                      color: Colors.blue,
                      borderRadius:
                          BorderRadius.all(Radius.circular(15.0))),
                ),
              ),
            );
        },childCount: posts.length
      );
  }
}

