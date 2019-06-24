import 'package:flutter/material.dart';

class LearnDrawer extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _LearnDrawerState();
  }
}

class _LearnDrawerState extends State<LearnDrawer> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Drawer'),
        centerTitle: true,
        automaticallyImplyLeading: true,
      ),
      // 使用drawer的时候，不设置leading的话，会默认出现leading，其icon为menu
      // 前提是automaticallyImplyLeading设置为true
      drawer: Drawer(
        child: SafeArea(
            child: Container(
          child: Text(
            'Drawer',
            style: TextStyle(color: Colors.red, fontSize: 30.0),
          ),
        )),
      ),
    );
  }
}
