import 'package:flutter/material.dart';
import './route.dart';
import 'Application.dart';

class RouteA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            Application.router
                .navigateTo(context, '${Routes.pageB}?msg=A2B')
                .then((result) {
              print('result is $result');
            });
          },
          child: Text(
            'A',
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
