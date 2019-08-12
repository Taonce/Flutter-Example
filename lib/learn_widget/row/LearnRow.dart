import 'package:flutter/material.dart';

class LearnRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text("Learn Row"),
      ),
      body: new Container(
        height: 1920,
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.start,
          verticalDirection: VerticalDirection.down,
          children: <Widget>[
            new Expanded(
              flex: 1,
              child: new RaisedButton(
                onPressed: () => {},
                color: Colors.lightBlueAccent,
                child: new Text("Home"),
              ),
            ),
            new Expanded(
              flex: 1,
              child: new RaisedButton(
                onPressed: () => {},
                color: Colors.lightBlueAccent,
                child: new Text("Msg"),
              ),
            ),
            new Expanded(
              flex: 1,
              child: new RaisedButton(
                onPressed: () => {},
                color: Colors.lightBlueAccent,
                child: new Text("Person"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
