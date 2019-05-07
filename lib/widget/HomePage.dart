import 'package:flutter/material.dart';
import 'package:my_flutter_app/widget/MyDrawer.dart';
import 'package:my_flutter_app/widget/MyTabBarView.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: buildTitle(),
            bottom: buildTabBar(),
          ),
          body: MyTabBarView(),
          drawer: MyDrawer(),
        ));
  }

  Container buildTitle() {
    return Container(
            child: Text(
              "Flutter App",
              textAlign: TextAlign.center,
            ),
            alignment: Alignment.center,
          );
  }

  TabBar buildTabBar() {
    return TabBar(tabs: [
      Tab(icon: Icon(Icons.movie),),
      Tab(icon: Icon(Icons.music_video),),
      Tab(icon: Icon(Icons.picture_in_picture),),
    ]);
  }
}

