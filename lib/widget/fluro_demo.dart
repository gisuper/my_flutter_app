import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

class FluroDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final router = new Router();
    Routes.configureRoutes(router);
    return MaterialApp(
      onGenerateRoute: Routes.router.generator,
    );
  }
}

class Routes {
  static Router router;
  static String page1 = '/';
  static String page2 = '/page22';

  static void configureRoutes(Router router) {
    router.define(page1, handler: Handler(handlerFunc: (context, params) => Page1()));
    router.define(page2, handler: Handler(handlerFunc: (context, params) {
      var message = params['message']?.first;
      return Page2(message);
    }));
    Routes.router = router;
  }
}

class Page1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => Page1State();
}

class Page1State extends State<Page1> {
  String message = '-';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Page'),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.chevron_right),
              onPressed: () => intentTo(context))
        ],
      ),
      body: Center(child: Text(message)),
    );
  }

  ///跳转到第二个界面
  intentTo(BuildContext context) {
    ///字符串编码
    var json = "From the first Page";
    Routes.router.navigateTo(context, '${Routes.page2}?message=$json', //跳转路径
            transition: TransitionType.inFromRight)
        .then((result) {
      //回传值
      if (result != null) {
        message = result;
      }
    });
  }
}

///第二个界面
class Page2 extends StatelessWidget {
  final String message;

  const Page2(this.message);

  @override
  Widget build(BuildContext context) {
    var list = List<int>();

    ///字符串解码
    return Scaffold(
        appBar: AppBar(
          title: Text('Second Page'),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(message),
            RaisedButton(
                onPressed: () => Navigator.pop(context, 'From the second page'),
                child: Text('Back to last page'))
          ],
        ),),);
  }
}
