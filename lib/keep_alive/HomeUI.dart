import 'package:flutter/material.dart';

class HomeUI extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomeState();
}

class HomeState extends State<HomeUI> with AutomaticKeepAliveClientMixin {
  int _count = 1;

  void _add() {
    setState(() {
      _count++;
    });
  }

  @override
  bool get wantKeepAlive => true;

  @override
  // ignore: must_call_super
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: _add,
        child: Icon(Icons.add),
      ),
      body: Center(
        child: Text(
          "$_count",
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
