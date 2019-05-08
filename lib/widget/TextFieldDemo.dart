import 'package:flutter/material.dart';

class TextFieldDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(left: 50.0,right: 50.0),
        alignment: Alignment(0.0, 0.0),
        child: new TextFieldWidget(),
      ),
    );
  }
}

class TextFieldWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TextFieldWidget();
  }
}

class _TextFieldWidget extends State<TextFieldWidget> {
  var _TextFieldController = TextEditingController();

  @override
  void dispose() {
    _TextFieldController.dispose();
    super.dispose();
  }
  @override
  void initState() {
    super.initState();
    _TextFieldController.addListener((){
      debugPrint(_TextFieldController.text);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        TextField(
          onChanged: (value){
            debugPrint(value);
            debugPrint(_TextFieldController.text);
          },
          controller: _TextFieldController,
          onSubmitted: (value) {
            debugPrint('submit: $value');
          },
          decoration: InputDecoration(
              hintText: "Please input username!",
              labelText: "Username",
              icon: Icon(Icons.input)),
        ),
        TextField(
          decoration: InputDecoration(
              hintText: "Please input password!",
              labelText: "Password",
              icon: Icon(Icons.input)),
        )
      ],
    );
  }
}
