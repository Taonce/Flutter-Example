import 'dart:ui';

import 'package:flutter/material.dart';

class FrostGlassUI extends StatelessWidget {
  final url = 'http://pic32.nipic.com/20130813/3347542_160503703000_2.jpg';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('毛玻璃效果'),
        backgroundColor: Colors.pinkAccent,
      ),
      body: Stack(
        children: <Widget>[
          ConstrainedBox(
            constraints: const BoxConstraints.expand(),
            child: Image.network(
              url,
              width: 500,
              height: 700,
              fit: BoxFit.fill,
            ),
          ),
          Center(
            child: ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 2.0,
                  sigmaY: 2.0,
                ),
                child: Opacity(
                  opacity: 0.5,
                  child: Container(
                    width: 500,
                    height: 700,
                    decoration: BoxDecoration(
                      color: Colors.blueGrey,
                    ),
                    child: Center(
                      child: Text(
                        'Taonce',
                        style: Theme.of(context).textTheme.display3,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
