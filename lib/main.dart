import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan Stack dan AlignWidget"),
        ),
        body: Stack(
          children: <Widget>[
            Column(
              children: [
                Flexible(
                  flex: 1,
                  child: Row(
                    children: [
                      MyFlexible(Colors.white),
                      MyFlexible(Colors.black12),
                    ],
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Row(
                    children: [
                      MyFlexible(Colors.black12),
                      MyFlexible(Colors.white),
                    ],
                  ),
                )
              ],
            ),
            ListView(
              children: [
                Column(
                  children: [
                    MyText(),
                    MyText(),
                    MyText(),
                    MyText(),
                    MyText(),
                    MyText(),
                    MyText(),
                  ],
                ),
              ],
            ),
            Align(
              alignment: Alignment(0.80, 0.95),
              child: RaisedButton(
                child: Text("MyButton"),
                color: Colors.amber,
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyText extends StatelessWidget {
  const MyText({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Text(
        "Ini adalah text yang ada ditengah dari lapisan stack",
        style: TextStyle(fontSize: 30),
      ),
    );
  }
}

class MyFlexible extends StatelessWidget {
  Color color;

  MyFlexible(this.color);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 1,
      child: Container(color: this.color),
    );
  }
}