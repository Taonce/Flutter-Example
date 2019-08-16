import 'package:flutter/material.dart';
import 'package:my_flutter/image_url.dart';

import 'hero_animation_route_ui.dart';

class HeroAnimationUI extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HeroAnimationState();
}

class HeroAnimationState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('学习Hero动画'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: InkWell(
          child: Hero(
            tag: 'avatar',
            child: CircleAvatar(
              child: Image.asset(
                ImageUrl.head,
                width: 50,
              ),
            ),
          ),
          onTap: () {
            Navigator.push(
              context,
              PageRouteBuilder(
                pageBuilder: (context, animation, secAnimation) {
                  return FadeTransition(
                    opacity: animation,
                    child: HeroAnimationRouteUI(),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
