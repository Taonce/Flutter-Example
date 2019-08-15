import 'package:flutter/material.dart';

import 'event_bus.dart';
import 'observer_ui.dart';

class ObservableUI extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ObservableUIState();
}

class ObservableUIState extends State<ObservableUI> with AutomaticKeepAliveClientMixin {
  var _text = '空白';

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    _on();
    super.initState();
  }

  @override
  // ignore: must_call_super
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('接收数据界面'),
      ),
      body: Center(
        child: Container(
          child: RaisedButton(
            onPressed: () {
              _jump(context);
            },
            child: Text('$_text'),
          ),
        ),
      ),
    );
  }

  void _on() {
    print('注册');
    bus.on("example", (arg) {
      setState(() {
        print('接收到的消息为：$arg');
        _text = arg;
      });
    });
  }

  void _jump(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) {
        return ObserverUI();
      }),
    );
  }
}
