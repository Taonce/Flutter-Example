import 'package:flutter/material.dart';

class MyAnimationWidget extends AnimatedWidget {
  final Animation<double> animation;

  MyAnimationWidget({
    Key key,
    @required this.animation,
  }) : super(key: key, listenable: animation);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.pinkAccent,
        width: animation.value,
        height: animation.value,
      ),
    );
  }
}

class MyAnimationWidgetUI extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyAnimationWidgetState();
}

class MyAnimationWidgetState extends State with SingleTickerProviderStateMixin {
  Animation<double> _animation;
  AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 30),
    );
    _animation = Tween(begin: 0.0, end: 300.0).animate(_controller);
    _animation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _controller.reverse();
      } else if (status == AnimationStatus.dismissed) {
        _controller.forward();
      }
    });
    _controller.forward();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MyAnimationWidget(animation: _animation);
  }
}
