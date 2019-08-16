import 'package:flutter/material.dart';
import 'package:my_flutter/image_url.dart';


class HeroAnimationRouteUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('原图'),
      ),
      body: Center(
        child: Hero(
          tag: 'avatar',
          child: Image.asset(ImageUrl.head),
        ),
      ),
    );
  }
}
