import 'package:flutter/material.dart';

/*
* 学习Flutter中Image和FadeInImage控件
* */
class LearnImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String image_url =
        'https://timg05.bdimg.com/timg?wapbaike&quality=60&size=b1440_952&cut_x=143&cut_y=0&cut_w=1633&'
        'cut_h=1080&sec=1349839550&di=cbbc175a45ccec5482ce2cff09a3ae34&'
        'src=http://imgsrc.baidu.com/baike/pic/item/4afbfbedab64034f104872baa7c379310b551d80.jpg';
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('LearnImage Demo')),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // 从资源文件中获取图片并展示
              Image.asset('images/account.png'),
              // 使用自带的一些角标
              Icon(Icons.android),
              // 从网络上获取图片并展示
              Image.network(
                image_url,
                width: 100,
                height: 100,
                // BoxFit为图片的缩放方式
                fit: BoxFit.fitHeight,
                repeat: ImageRepeat.repeat,
              ),
              // 从网络上获取图片并展示，placeholder为占位图
              FadeInImage.assetNetwork(
                placeholder: 'images/account.png',
                image: image_url,
                fit: BoxFit.fitWidth,
                width: 100,
              )
            ],
          ),
        ),
      ),
    );
  }
}
