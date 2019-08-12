import 'package:flutter/material.dart';

// ignore: must_be_immutable
class LearnNavigatorReturn extends StatelessWidget {
  var _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text("界面返回携带数据"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            _navigatorReturnUI(context);
          },
          child: Text("跳转"),
        ),
      ),
    );
  }

  _navigatorReturnUI(BuildContext context) async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ReturnUI()),
    );

    // Unhandled Exception: Scaffold.of() called with a context that does not contain a Scaffold.
    // 使用Scaffold的key来show()
    _scaffoldKey.currentState.showSnackBar(SnackBar(content: Text("$result")));
  }
}

class ReturnUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('返回数据')),
      body: Center(
          child: Column(
        children: <Widget>[
          RaisedButton(
            child: Text('大长腿小姐姐'),
            onPressed: () {
              Navigator.pop(context, '大长腿:1511008888');
            },
          ),
          RaisedButton(
            child: Text('小蛮腰小姐姐'),
            onPressed: () {
              Navigator.pop(context, '小蛮腰:1511009999');
            },
          ),
        ],
      )),
    );
  }
}
