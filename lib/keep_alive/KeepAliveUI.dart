import 'package:flutter/material.dart';
import 'HomeUI.dart';

class KeepAliveUI extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => KeepAliveState();
}

class KeepAliveState extends State<KeepAliveUI> with SingleTickerProviderStateMixin {
  TabController _controller;

  @override
  void initState() {
    _controller = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TabBar(
          tabs: [
            Tab(text: 'Home'),
            Tab(text: 'Email'),
            Tab(text: 'Person'),
          ],
          controller: _controller,
        ),
      ),
      body: TabBarView(
        children: [
          HomeUI(),
          HomeUI(),
          HomeUI(),
        ],
        controller: _controller,
      ),
    );
  }
}
