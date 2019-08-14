import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LearnGestureDetector extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => LearnGestureRecognizerState();
}

class LearnGestureDetectorState extends State<LearnGestureDetector> {
  double _imageWidth = 200.0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('学习手势操作'),
      ),
      body: GestureDetector(
        child: Image.asset(
          'images/app_bar_bg.png',
          width: _imageWidth,
        ),
        onScaleUpdate: (details) {
          setState(() {
            _imageWidth = 200 * details.scale.clamp(0.8, 10.0);
          });
        },
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
        title: Text('GestureRecognizer'),
      ),
      body: Center(
        child: Text.rich(TextSpan(
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
                  }),
          ],
        )),
      ),
    );
  }
}
