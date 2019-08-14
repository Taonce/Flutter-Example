import 'package:flutter/material.dart';

class LearnFulWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => FulWidgetState();
}

class FulWidgetState extends State<LearnFulWidget> {
  int _count = 0;

  @override
  void initState() {
    print('state init');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print('state build');
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _count++;
          });
        },
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        title: Text('学习State的生命周期'),
      ),
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(10),
          child: Text(
            'I am Taonce $_count',
            style: TextStyle(
              fontSize: 16,
              color: Colors.pinkAccent,
            ),
            textAlign: TextAlign.center,
          ),
          decoration: BoxDecoration(
            color: Colors.lightBlueAccent,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: Colors.pinkAccent,
            ),
          ),
        ),
      ),
    );
  }

  @override
  void didChangeDependencies() {
    print('state did change dependencies');
    super.didChangeDependencies();
  }

  @override
  void reassemble() {
    print('state reassemble');
    super.reassemble();
  }

  @override
  void didUpdateWidget(LearnFulWidget oldWidget) {
    print('state did update');
    super.didUpdateWidget(oldWidget);
  }

  @override
  void deactivate() {
    print('state deactivate');
    super.deactivate();
  }

  @override
  void dispose() {
    print('state dispose');
    super.dispose();
  }
}
