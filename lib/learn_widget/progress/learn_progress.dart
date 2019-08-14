import 'package:flutter/material.dart';

class LearnProgress extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => LearnProgressState();
}

class LearnProgressState extends State<LearnProgress> {
  double _progressValue = 0.0;

  void _addProgress() {
    setState(() {
      if (_progressValue >= 1.0) {
        _progressValue = 0.0;
      }else{
        _progressValue += 0.1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        foregroundColor: Colors.pinkAccent,
        onPressed: () {
          _addProgress();
        },
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
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
                    value: _progressValue,
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
                    value: _progressValue,
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
