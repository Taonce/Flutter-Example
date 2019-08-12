import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LearnContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text("LearnFlutter"),
      ),
      body: Center(
        child: Container(
            alignment: Alignment.center,
            child: new Text("Hello Taonce, 热衷于Android开发"),
            width: 300,
            height: 300,
            decoration: new BoxDecoration(
                gradient: new LinearGradient(colors: [Colors.blueAccent, Colors.cyanAccent]),
                border: Border.all(color: Colors.pinkAccent),
                borderRadius: BorderRadius.all(Radius.circular(10)))),
      ),
    );
  }
}
