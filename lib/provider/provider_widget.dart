import 'package:flutter/material.dart';
import 'bloc_list.dart';
import 'package:provider/provider.dart';


class PictureDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: StreamBuilder<int>(
          stream: Provider.of<Bloc>(context).streamSum,
          builder: (context, snapshot) {
            return Text(snapshot.data?.toString() ?? 'Foo');
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        Provider.of<Bloc>(context).addStreamSink.add(1);
      },child: Text("Add"),),
    );
  }
}

