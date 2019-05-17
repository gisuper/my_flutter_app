import 'package:flutter/material.dart';
import '../model/const.dart';

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
                style: buildTextStyle(),
              ),
              trailing: Icon(Icons.movie, color: Colors.blue,),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              title: Text(
                "MUSIC",
                textAlign: TextAlign.right,
                style: buildTextStyle(),
              ),
              trailing: Icon(Icons.music_video, color: Colors.blue,),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              title: Text(
                "Provider",
                textAlign: TextAlign.right,
                style: buildTextStyle(),
              ),
              trailing: Icon(Icons.picture_in_picture, color: Colors.blue,),
              onTap: () {
                Navigator.of(context).pushNamed(Const.PICTRUE_ROUT);
              },
            ),
            ListTile(
              title: Text(
                "SLIVER",
                textAlign: TextAlign.right,
                style: buildTextStyle(),
              ),
              trailing: Icon(Icons.signal_wifi_4_bar_lock, color: Colors.blue,),
              onTap: () {
                Navigator.of(context).pushNamed(Const.SLIVER_ROUT);
              },
            ),
            ListTile(
              title: Text(
                "TextField",
                textAlign: TextAlign.right,
                style: buildTextStyle(),
              ),
              trailing: Icon(Icons.textsms, color: Colors.blue,),
              onTap: () {
                Navigator.of(context).pushNamed(Const.TEXTFIELD_ROUT);
              },
            ),
            ListTile(
              title: Text(
                "popupmenu",
                textAlign: TextAlign.right,
                style: buildTextStyle(),
              ),
              trailing: Icon(Icons.textsms, color: Colors.blue,),
              onTap: () {
                Navigator.of(context).pushNamed(Const.POPUPMENU_ROUT);
              },
            ),
            ListTile(
              title: Text(
                "button",
                textAlign: TextAlign.right,
                style: buildTextStyle(),
              ),
              trailing: Icon(Icons.textsms, color: Colors.blue,),
              onTap: () {
                Navigator.of(context).pushNamed(Const.BUTTON_ROUT);
              },
            ),
            ListTile(
              title: Text(
                "DateTime",
                textAlign: TextAlign.right,
                style: buildTextStyle(),
              ),
              trailing: Icon(Icons.textsms, color: Colors.blue,),
              onTap: () {
                Navigator.of(context).pushNamed(Const.DATEPICKER_ROUT);
              },
            ),
            ListTile(
              title: Text(
                "Stream",
                textAlign: TextAlign.right,
                style: buildTextStyle(),
              ),
              trailing: Icon(Icons.textsms, color: Colors.blue,),
              onTap: () {
                Navigator.of(context).pushNamed(Const.STREAM_ROUT);
              },
            ),
            ListTile(
              title: Text(
                "Rxdart",
                textAlign: TextAlign.right,
                style: buildTextStyle(),
              ),
              trailing: Icon(Icons.textsms, color: Colors.blue,),
              onTap: () {
                Navigator.of(context).pushNamed(Const.RXDART_ROUT);
              },
            ),
            ListTile(
              title: Text(
                "Bloc",
                textAlign: TextAlign.right,
                style: buildTextStyle(),
              ),
              trailing: Icon(Icons.textsms, color: Colors.blue,),
              onTap: () {
                Navigator.of(context).pushNamed(Const.BLOC_ROUT);
              },
            ),
            ListTile(
              title: Text(
                "Plugin",
                textAlign: TextAlign.right,
                style: buildTextStyle(),
              ),
              trailing: Icon(Icons.textsms, color: Colors.blue,),
              onTap: () {
                Navigator.of(context).pushNamed(Const.PLUGIN_ROUT);
              },
            ),
            ListTile(
              title: Text(
                "Dio",
                textAlign: TextAlign.right,
                style: buildTextStyle(),
              ),
              trailing: Icon(Icons.textsms, color: Colors.blue,),
              onTap: () {
                Navigator.of(context).pushNamed(Const.DIO_ROUT);
              },
            ),
          ],
        ));
  }

  TextStyle buildTextStyle() {
    return TextStyle(color: Colors.lightBlue,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w200);
  }
}
