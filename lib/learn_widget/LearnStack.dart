import 'package:flutter/material.dart';

// 学习堆叠控件
class LearnStack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Learn Stack'),
      ),
      body: SafeArea(
          child: Container(
        // Stack控件就类似于RelativeLayout，一层叠一层
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            CircleAvatar(
              backgroundImage: AssetImage('images/account.png'),
              radius: 50,
            ),
            Text('圆形头像'),
            // Stack虽然可以实现控件的叠加，但是不能选择内部控件的位置
            // 这时候就要Positioned出现了，它可以指定上下左右的距离，以确定内部控件的位置
            Positioned(
              child: Text('Positioned'),
              bottom: 10.0,
            )
          ],
        ),
      )),
    );
  }
}
