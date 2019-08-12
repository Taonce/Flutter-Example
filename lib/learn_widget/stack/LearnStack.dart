import 'package:flutter/material.dart';

class LearnStack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Learn Stack"),
        ),
        body: Stack(
          alignment: const FractionalOffset(0.5, 0.8),
          overflow: Overflow.clip,
          fit: StackFit.passthrough,
          children: <Widget>[
            new CircleAvatar(
              backgroundImage: AssetImage("images/head.jpg"),
              radius: 100,
            ),
            new Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                border: Border.all(color: Colors.cyanAccent),
              ),
              child: new Text("I am Taonce!"),
              padding: const EdgeInsets.all(10.0),
            ),
          ],
        ));
  }
}

class LearnPositioned extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("多布局叠加"),
      ),
      body: Stack(
        children: <Widget>[
          CircleAvatar(
            backgroundImage: AssetImage("images/head.jpg"),
            radius: 100,
          ),
          Positioned(
            top: 10,
            left: 50,
            child: Text("I am Taonce"),
          ),
          Positioned(
            bottom: 10,
            left: 50,
            child: Text("I am Taonce"),
          ),
        ],
      ),
    );
  }
}
