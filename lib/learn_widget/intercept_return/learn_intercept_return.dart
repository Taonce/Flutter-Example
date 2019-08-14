import 'package:flutter/material.dart';

class LearnInterceptReturn extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => LearnInterceptReturnState();
}

class LearnInterceptReturnState extends State<LearnInterceptReturn> {
  DateTime _lastPressedAt; //上次点击时间

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('学习WillPop'),
      ),
      body: WillPopScope(
        child: Center(
          child: Text('返回两次退出App'),
        ),
        onWillPop: () async {
          if (_lastPressedAt == null || DateTime.now().difference(_lastPressedAt) > Duration(seconds: 1)) {
            //两次点击间隔超过1秒则重新计时
            _lastPressedAt = DateTime.now();
            return false;
          }
          return true;
        },
      ),
    );
  }
}
