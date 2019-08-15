import 'package:flutter/material.dart';

class MyAnimationBuilderUI extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyAnimationBuilderState();
}

class MyAnimationBuilderState extends State with SingleTickerProviderStateMixin {
  Animation<double> _animation;
  AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 30),
    );
    _animation = Tween(begin: 0.0, end: 300.0).animate(_controller);
    _controller.forward();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('学习AnimationBuilder'),
      ),
      body: Center(
        child: AnimatedBuilder(
          animation: _animation,
          builder: (context, child) {
            return Container(
              child: child,
              width: _animation.value,
              height: _animation.value,
              color: Colors.white70,
            );
          },
        ),
      ),
    );
  }
}
