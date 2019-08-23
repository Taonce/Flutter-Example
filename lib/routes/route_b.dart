import 'package:flutter/material.dart';

class RouteB extends StatelessWidget {
  final _params;

  RouteB(this._params);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.pop(context, 'B 2 A');
          },
          child: Text(
            'B $_params',
            style: TextStyle(
              color: Colors.pink,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
