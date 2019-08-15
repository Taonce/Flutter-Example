import 'package:flutter/material.dart';

import 'event_bus.dart';

class ObserverUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('发送消息界面'),
      ),
      body: Center(
        child: Container(
          child: RaisedButton(
            onPressed: () {
              bus.emit('example', '发送了很多消息，请接收！');
            },
            child: Text('发送'),
          ),
        ),
      ),
    );
  }
}
