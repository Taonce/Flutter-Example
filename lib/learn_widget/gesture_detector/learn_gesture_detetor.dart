import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LearnGestureDetector extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => LearnGestureDetectorState();
}

class LearnListenerState extends State<LearnGestureDetector> {
  PointerEvent _event;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('学习Listener'),
      ),
      body: Center(
        child: Listener(
          child: Container(
            alignment: Alignment.center,
            color: Colors.pinkAccent,
            width: 300,
            height: 300,
            child: Text(_event?.delta?.dx.toString() ?? ""),
          ),
          onPointerDown: (event) {
            setState(() {
              _event = event;
            });
          },
          onPointerMove: (event) {
            setState(() {
              _event = event;
            });
          },
          onPointerUp: (event) {
            setState(() {
              _event = event;
            });
          },
        ),
      ),
    );
  }
}

class LearnGestureDetectorState extends State<LearnGestureDetector> {
  double _imageWidth = 200.0;
  double _top = 0.0;
  double _left = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('学习手势操作'),
      ),
//      body: GestureDetector(
//        child: Image.asset(
//          'images/app_bar_bg.png',
//          width: _imageWidth,
//        ),
//        onScaleUpdate: (details) {
//          setState(() {
//            _imageWidth = 200 * details.scale.clamp(0.8, 10.0);
//          });
//        },
//      ),
      body: Stack(
        children: <Widget>[
          Positioned(
            top: _top,
            left: _left,
            child: GestureDetector(
              child: SizedBox(
                width: 200,
                height: 50,
                child: RaisedButton(
                  onPressed: () {},
                  child: Text(
                    '移动的按钮',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.pinkAccent,
                    ),
                  ),
                ),
              ),
              onPanUpdate: (details) {
                setState(() {
                  _top += details.delta.dy;
                  _left += details.delta.dx;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}

class LearnGestureRecognizerState extends State<LearnGestureDetector> {
  bool _isTap = false;
  TapGestureRecognizer _recognizer = TapGestureRecognizer();

  @override
  void dispose() {
    _recognizer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('学习富文本手势操作'),
      ),
      body: Center(
        child: Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: 'I am Taonce!  ',
                style: TextStyle(fontSize: 20),
              ),
              TextSpan(
                text: '变色',
                style: TextStyle(
                  color: _isTap ? Colors.pinkAccent : Colors.blueAccent,
                  fontSize: 20,
                ),
                recognizer: _recognizer
                  ..onTap = () {
                    setState(() {
                      _isTap = !_isTap;
                    });
                  },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
