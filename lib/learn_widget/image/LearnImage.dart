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
        width: 150,
        height: 1000,
        child: Image.network(
          image_url,
          repeat: ImageRepeat.repeatY,
          color: Colors.tealAccent,
          colorBlendMode: BlendMode.color,
          fit: BoxFit.contain,
          width: 150,
        ),
      ),
    );
  }
}
