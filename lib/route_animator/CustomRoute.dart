import 'package:flutter/material.dart';

class CustomRoute extends PageRouteBuilder {
  final Widget _widget;

  CustomRoute(this._widget)
      : super(
            transitionDuration: const Duration(seconds: 10),
            pageBuilder: (
              BuildContext context,
              Animation<double> animation1,
              Animation<double> animation2,
            ) {
              return _widget;
            },
            transitionsBuilder: (
              BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
              Widget child,
            ) {
              return SlideTransition(
                position: Tween<Offset>(
                  begin: Offset(-1.0, 0.0),
                  end: Offset(0.0, 0.0),
                ).animate(CurvedAnimation(
                  parent: animation,
                  curve: Curves.fastOutSlowIn,
                )),
                child: child,
              );
            });

  // 渐变的跳转效果
  Widget fadeAnimation(Animation<double> animation, Widget child) {
    return FadeTransition(
      opacity: Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
        parent: animation,
        curve: Curves.fastOutSlowIn,
      )),
      child: child,
    );
  }

  // 缩放的跳转效果
  Widget scaleAnimation(Animation<double> animation, Widget child) {
    return ScaleTransition(
      scale: Tween(
        begin: 0.0,
        end: 1.0,
      ).animate(CurvedAnimation(
        parent: animation,
        curve: Curves.fastOutSlowIn,
      )),
      child: child,
    );
  }

  // 旋转+缩放
  Widget rotationScaleAnimation(Animation<double> animation, Widget child) {
    return RotationTransition(
      turns: Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
        parent: animation,
        curve: Curves.fastOutSlowIn,
      )),
      child: ScaleTransition(
        scale: Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
          parent: animation,
          curve: Curves.fastOutSlowIn,
        )),
        child: child,
      ),
    );
  }

  // 水平滑动的跳转效果
  Widget slideAnimation(Animation<double> animation, Widget child) {
    return SlideTransition(
      position: Tween<Offset>(
        begin: Offset(-1.0, 0.0),
        end: Offset(0.0, 0.0),
      ).animate(CurvedAnimation(
        parent: animation,
        curve: Curves.fastOutSlowIn,
      )),
      child: child,
    );
  }
}
