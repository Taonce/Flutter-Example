import 'package:flutter/material.dart';

class LearnContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Learn Container'),
      ),
      body: SafeArea(
          child: Container(
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.all(10.0),
        margin: const EdgeInsets.all(20.0),
        // Container的样式，可设置背景颜色，四个角的弧度等
        decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(20.0),
            backgroundBlendMode: BlendMode.colorDodge,
            image: DecorationImage(
                image: AssetImage('images/app_bar_bg.png'), fit: BoxFit.cover)),
//        child: Text(
//          'Learn Container',
//          style: TextStyle(color: Colors.white, fontSize: 30.0))
        child: Column(
//          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
//            Text('Learn Container',
//                style: TextStyle(
//                    color: Colors.white,
//                    fontSize: 30.0,
//                    backgroundColor: Colors.green)),
//            // 设置padding的控件
//            Padding(
//              padding: const EdgeInsets.only(top: 20.0),
//              child: Text('Learn Container',
//                  style: TextStyle(
//                      color: Colors.white,
//                      fontSize: 30.0,
//                      backgroundColor: Colors.green)),
//            ),
            // 等分控件，使用flex设置比例
            Expanded(
              flex: 1,
              child: Text('Learn Container',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                      backgroundColor: Colors.green)),
            ),
            Expanded(
              flex: 4,
              child: Text('Learn Container',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                      backgroundColor: Colors.green)),
            ),
          ],
        ),
      )),
    );
  }
}
