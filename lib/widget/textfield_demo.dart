import 'package:flutter/material.dart';

class TextFieldDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextFormFieldWidget(),
          ],
        ),
      ),
    );
  }
}


class TextFormFieldWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TextFormFieldState();
  }

}


class TextFormFieldState extends State<TextFormFieldWidget> {

  var key = GlobalKey<FormState>();

  String userName;

  String _validator(String value) {
    if (value.isEmpty) {
      return "UserName is required";
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(
              hintText: 'please intput UserName',
              labelText: 'UserName',
              icon: Icon(Icons.input),
            ),
            onSaved: (value) {
              userName = value;
            },
            validator: _validator,
            autovalidate: true,
          ),
          SizedBox(height: 10.0,),
          TextFormField(
            decoration: InputDecoration(
              hintText: 'please intput PassWord',
              labelText: 'Password',
              icon: Icon(Icons.work),
            ),
            onSaved: (value) {
              userName = value;
            },
            validator: _validator,
            autovalidate: true,
          ),
          SizedBox(height: 120.0,),
          FloatingActionButton(onPressed: (){
            Scaffold.of(context).showSnackBar(SnackBar(content: Text('Login Success')));
          },child: Text("Submit"),)
        ],
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
