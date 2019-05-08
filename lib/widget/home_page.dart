import 'package:flutter/material.dart';
import '../widget/my_drawer.dart';
import '../widget/my_tab_barview.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
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
      padding: EdgeInsets.only(right: 45.0),
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
      Tab(icon: Icon(Icons.view_comfy),),
    ]);
  }
}

