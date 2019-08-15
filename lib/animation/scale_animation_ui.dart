import 'package:flutter/material.dart';

class ScaleAnimationUI extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ScaleAnimationState();
}

class ScaleAnimationState extends State<ScaleAnimationUI> with SingleTickerProviderStateMixin {
  Animation<double> _animation;
  AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 30),
    );
    _animation = CurvedAnimation(parent: _controller, curve: Curves.bounceIn);
    _animation = Tween(
      begin: 0.0,
      end: 300.0,
    ).animate(_animation)
      ..addListener(() {
        setState(() {});
      });
    _controller.forward();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('学习动画第一弹'),
      ),
      body: Center(
        child: Image.asset(
          'images/head.jpg',
          width: _animation.value,
          height: _animation.value,
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
