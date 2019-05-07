import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
          children: <Widget>[
            Container(
              child: Image.network(
                "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1557222599452&di=71b14038a925349a604a5bdfdd1f3715&imgtype=0&src=http%3A%2F%2Fimgcdn.sdk.cn%2Farticle%2FDbXYIEMTws9Sp-Q6oVCE.png",
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
            ListTile(
              title: Text(
                "MOVIE",
                textAlign: TextAlign.right,
              ),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              title: Text(
                "MUSIC",
                textAlign: TextAlign.right,
              ),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              title: Text(
                "PICTURE",
                textAlign: TextAlign.right,
              ),
              onTap: () => Navigator.pop(context),
            )
          ],
        ));
  }
}
