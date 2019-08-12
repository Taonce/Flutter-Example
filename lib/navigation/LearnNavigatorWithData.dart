import 'package:flutter/material.dart';

// ignore: must_be_immutable
class LearnNavigatorWithData extends StatelessWidget {
  List<Person> persons = List.generate(20, (position) => Person("姓名为：$position", "地址为：$position"));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("学习携数据跳转"),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: persons.length,
          itemBuilder: (context, index) => ListTile(
                title: Text("${persons[index].name}"),
                subtitle: Text("${persons[index].address}"),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PersonDataUI(key, persons[index])),
                  );
                },
              ),
        ),
      ),
    );
  }
}

class PersonDataUI extends StatelessWidget {
  final Person _person;

  PersonDataUI(Key key, this._person) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("用户信息界面"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            new Text(
              "${_person.name}",
              style: TextStyle(fontSize: 20.0, color: Colors.pinkAccent),
            ),
            new Text(
              "${_person.address}",
              style: TextStyle(fontSize: 20.0, color: Colors.pinkAccent),
            ),
          ],
        ),
      ),
    );
  }
}

class Person {
  final String name;
  final String address;

  Person(this.name, this.address);
}
