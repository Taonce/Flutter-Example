import 'package:flutter/material.dart';

import 'CustomRoute.dart';
import 'RouteSecPage.dart';

class RouteMainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MainPage"),
        elevation: 0.0,
      ),
      body: Center(
        child: MaterialButton(
          onPressed: () {
            Navigator.push(
              context,
              CustomRoute(RouteSecPage()),
            );
          },
          child: Icon(
            Icons.navigate_next,
            size: 64,
          ),
        ),
      ),
    );
  }
}
