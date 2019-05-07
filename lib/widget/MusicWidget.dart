import 'package:flutter/material.dart';
import 'package:my_flutter_app/model/Post.dart';

class MusicWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment(0.0, 0.0),
        decoration: buildBoxDecoration(),
        child: buildColumn());
  }

  Column buildColumn() {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          buildContainer1(),
          SizedBox(
            height: 20.0,
          ),
          buildContainer2(),
          SizedBox(
            height: 10.0,
          ),
          buildContainer3(),
          SizedBox(
            height: 10.0,
          ),
          buildRichText(),
          SizedBox(
            height: 10.0,
          ),
          AspectRatio(aspectRatio: 5.0 / 1.0,
            child: Container(height:20.0,color:Color.fromRGBO(22, 11, 109, 0.3),child: Image.network(posts[2].imageUrl)),)
        ],
      );
  }

  BoxDecoration buildBoxDecoration() {
    return BoxDecoration(
      image: DecorationImage(
          image: NetworkImage(posts[3].imageUrl), fit: BoxFit.cover),
    );
  }

  RichText buildRichText() {
    return RichText(
            text: TextSpan(
                text: posts[4].title,
                style: TextStyle(
                    fontSize: 11.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w900),
                children: [
              TextSpan(
                  text: "-${posts[3].title}",
                  style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.black,
                      fontWeight: FontWeight.w100)),
              TextSpan(
                  text: "-${posts[2].title}",
                  style: TextStyle(
                      fontSize: 28.0,
                      color: Colors.blue,
                      fontWeight: FontWeight.w800))
            ]));
  }

  Container buildContainer3() {
    return Container(
          height: 45.0,
          width: 80.0,
          child: Icon(Icons.speaker),
          decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.blue,
              borderRadius: BorderRadius.all(Radius.circular(15.0))),
        );
  }

  Container buildContainer2() {
    return Container(
          height: 100.0,
          width: 100.0,
          child: Icon(
            Icons.keyboard_voice,
            color: Colors.white,
          ),
          decoration:
              BoxDecoration(color: Colors.red, shape: BoxShape.circle),
        );
  }

  Container buildContainer1() {
    return Container(
          width: 90.0,
          height: 90.0,
          child:
              Icon(Icons.accessibility, size: 52.0, color: Colors.yellow),
          alignment: Alignment(0.0, 0.0),
          decoration: BoxDecoration(
            color: Colors.blue,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                  color: Colors.blue,
                  blurRadius: 10.0, //模糊程度
                  offset: Offset(0.0, 10.0), //xy移动方向
                  spreadRadius: 5.0 //模糊半径
                  )
            ],
            border: Border.all(
              color: Colors.indigoAccent[100],
              width: 5.0,
              style: BorderStyle.solid,
            ),
            gradient: LinearGradient(
              colors: [
                Colors.white,
                Colors.blueAccent,
                Colors.black,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
        );
  }


}
