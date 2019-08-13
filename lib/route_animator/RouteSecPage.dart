import 'package:flutter/material.dart';

class RouteSecPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pinkAccent,
      appBar: AppBar(
        title: Text("SecPage"),
        elevation: 0.0,
        backgroundColor: Colors.pinkAccent,
      ),
      body: Center(
        child: MaterialButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.navigate_before,
            size: 64,
          ),
        ),
      ),
    );
  }
}
