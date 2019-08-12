import 'package:flutter/material.dart';

// ignore: must_be_immutable
class LearnList extends StatelessWidget {
  List<ItemView> item = new List.generate(20, (i) => new ItemView());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LearnList"),
      ),
      body: Container(
        child: new ListView(
          scrollDirection: Axis.vertical,
          children: item,
        ),
      ),
    );
  }
}

class LearnListBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LearnList"),
      ),
      body: Container(
        child: ListView.builder(
          itemBuilder: (context, index) {
            return ItemView();
          },
          itemCount: 100,
        ),
      ),
    );
  }
}

class ItemView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("item"),
      ),
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.tealAccent),
          borderRadius: BorderRadius.all(Radius.circular(10)),
          gradient: LinearGradient(colors: [Colors.lightBlue, Colors.lightBlueAccent])),
    );
  }
}
