import 'package:flutter/material.dart';

/*
* 学习Flutter中Text控件
* */
class LearnText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('LearnText Demo')),
      body: Container(
        padding: const EdgeInsets.only(top: 10.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Hello Taonce, 热衷于Android开发，喜欢Kotlin和Flutter，并且愿意为此奋斗一生！',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style:
                    TextStyle(fontSize: 24.0, color: Colors.black, backgroundColor: Colors.green, letterSpacing: 2.0),
              ),
              Text(
                '下划线红字',
                style: TextStyle(
                    fontSize: 24.0,
                    color: Colors.red,
                    // 下划线颜色
                    decorationColor: Colors.blue,
                    // 下划线样式
                    // solid：实体线
                    // double：两条线
                    // dotted：星星点点的线
                    // dotted：虚线
                    // wavy：波浪线
                    decorationStyle: TextDecorationStyle.wavy,
                    // 下划线的位置
                    // underline：文字底部
                    // overline：文字头部
                    // lineThrough：文字中间
                    decoration: TextDecoration.underline),
              )
            ],
          ),
        ),
      ),
    );
  }
}
