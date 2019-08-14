import 'package:flutter/material.dart';

class LearnProgress extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => LearnProgressState();
}

class LearnProgressState extends State<LearnProgress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('学习进度条'),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              Container(
                child: SizedBox(
                  height: 3,
                  child: LinearProgressIndicator(
                    backgroundColor: Colors.grey,
                    valueColor: AlwaysStoppedAnimation(Colors.pinkAccent),
                  ),
                ),
                padding: const EdgeInsets.all(5),
              ),
              Container(
                padding: const EdgeInsets.all(5),
                child: SizedBox(
                  width: 100,
                  height: 100,
                  child: CircularProgressIndicator(
                    backgroundColor: Colors.grey,
                    valueColor: AlwaysStoppedAnimation(Colors.pinkAccent),
                    strokeWidth: 1,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
