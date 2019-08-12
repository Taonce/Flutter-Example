import 'package:flutter/material.dart';

class LearnCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("学习卡片式布局"),
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        margin: const EdgeInsets.all(20.0),
        child: ListView.builder(
          itemBuilder: (context, position) {
            return new CardItem();
          },
          itemCount: 20,
        ),
      ),
    );
  }
}

class CardItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text("I am Taonce"),
        subtitle: Text("I Love Flutter"),
        leading: Icon(Icons.android),
      ),
      elevation: 5.0,
    );
  }
}
