import 'package:flutter/material.dart';

class AnimationSwitcherUI extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => AnimationSwitcherState();
}

class AnimationSwitcherState extends State {
  int _num = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('学习AnimationSwitcher'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AnimatedSwitcher(
              duration: const Duration(
                milliseconds: 1000,
              ),
              transitionBuilder: (child, animation) {
                return FadeTransition(
                  opacity: Tween(
                    begin: 0.0,
                    end: 1.0,
                  ).animate(animation),
                  child: SlideTransition(
                    position: Tween(
                      begin: Offset(-1.0, 0.0),
                      end: Offset(0.0, 0.0),
                    ).animate(animation),
                    child: child,
                  ),
                );
              },
              child: Text(
                '$_num',
                key: ValueKey(_num),
                style: Theme.of(context).textTheme.display1,
              ),
            ),
            RaisedButton(
              onPressed: () {
                setState(() {
                  ++_num;
                });
              },
              child: const Text('+1'),
            )
          ],
        ),
      ),
    );
  }
}
