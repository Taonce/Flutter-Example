import 'package:flutter/material.dart';

/*
* 学习Flutter中Button控件
* */
class LearnButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('LearnButton Demo')),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // 可点击的RaisedButton：凸起的Button
              RaisedButton(
                child: Text('RaisedButton'),
                onPressed: () => {print('RaisedButton is on pressed!')},
              ),
              // 不可点击
              RaisedButton(
                child: Text('Disable Click RaisedButton'),
                // 设置不可点击
                onPressed: null,
                // 设置不可点击后的效果
                disabledColor: Colors.blueGrey,
                disabledTextColor: Colors.cyan,
              ),
              // 扁平的Button
              FlatButton(
                child: Text('FlatButton'),
                onPressed: () => {print('FlatButton is on pressed!')},
              ),
              // 带icon的button
              IconButton(
                icon: Icon((Icons.android)),
                onPressed: null,
              ),
              // 材料设计样式的Button
              MaterialButton(
                child: Text('MaterialButton'),
                onPressed: null,
              ),
              MaterialButton(
                child: Text('MaterialButton'),
                onPressed: () => {print('MaterialButton is on pressed!')},
              ),
              // 带边框的Button
              OutlineButton(
                child: Text('OutlineButton'),
                onPressed: null,
              ),
              OutlineButton(
                child: Text(
                  'OutlineButton',
                  style: TextStyle(fontSize: 24.0),
                ),
                onPressed: () => {print('OutlineButton is on pressed!')},
                // 设置外边框
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                borderSide: BorderSide(color: Colors.red),
              )
            ],
          ),
        ),
      ),
    );
  }
}
