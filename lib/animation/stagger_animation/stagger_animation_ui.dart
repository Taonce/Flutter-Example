import 'package:flutter/material.dart';

class StaggerAnimationUI extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StaggerAnimationState();
}

class StaggerAnimationState extends State with TickerProviderStateMixin {
  AnimationController _controller;
  Animation<double> _heightAnimation;
  Animation<Color> _colorAnimation;
  Animation<EdgeInsets> _paddingAnimation;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 3000),
    );
    _heightAnimation = Tween<double>(
      begin: 0.0,
      end: 300.0,
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Interval(
          0.0,
          0.6,
          curve: Curves.ease,
        ),
      ),
    );
    _colorAnimation = ColorTween(
      begin: Colors.greenAccent,
      end: Colors.pinkAccent,
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Interval(
          0.0,
          0.6,
          curve: Curves.ease,
        ),
      ),
    );
    _paddingAnimation = Tween<EdgeInsets>(
      begin: const EdgeInsets.only(left: 0),
      end: const EdgeInsets.only(left: 100.0),
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Interval(
          0.6,
          1.0,
          curve: Curves.ease,
        ),
      ),
    );
    _controller.forward();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('学习组合动画'),
      ),
      body: AnimatedBuilder(animation: _controller, builder: _buildAnimation),
    );
  }

  Widget _buildAnimation(BuildContext context, Widget child) {
    return Container(
      alignment: Alignment.bottomCenter,
      padding: _paddingAnimation.value,
      child: Container(
        color: _colorAnimation.value,
        width: 50,
        height: _heightAnimation.value,
      ),
    );
  }
}
