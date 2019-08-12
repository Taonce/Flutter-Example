import 'package:flutter/material.dart';

class LearnColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text("Learn Column"),
      ),
      body: new Container(
        height: 1920,
        width: 1080,
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new Text(
              "I am Taonce",
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.pinkAccent,
                wordSpacing: 2,
              ),
            ),
            new Text(
              "I Love Android",
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.pinkAccent,
                wordSpacing: 2,
              ),
            ),
            new Text(
              "I Love Flutter",
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.pinkAccent,
                wordSpacing: 2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
