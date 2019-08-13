import 'package:flutter/material.dart';
import 'package:my_flutter/bottom_navigation/home_ui.dart';
import 'package:my_flutter/bottom_navigation/person_ui.dart';

class BottomNavigationFloatButton extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => BottomNavigationFloatButtonState();
}

class BottomNavigationFloatButtonState extends State<BottomNavigationFloatButton> {
  int _index = 0;
  List<Widget> _list = List();

  @override
  void initState() {
    _list..add(HomeUI())..add(PersonUI());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _list[_index],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.add,
          color: Colors.pinkAccent,
        ),
        backgroundColor: Colors.cyanAccent,
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        color: Colors.cyanAccent,
        elevation: 5,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.home),
              onPressed: () {
                setState(() {
                  _index = 0;
                });
              },
              color: Colors.pinkAccent,
            ),
            IconButton(
              icon: Icon(Icons.person),
              onPressed: () {
                setState(() {
                  _index = 1;
                });
              },
              color: Colors.pinkAccent,
            ),
          ],
        ),
      ),
    );
  }
}
