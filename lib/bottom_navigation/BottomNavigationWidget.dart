import 'package:flutter/material.dart';
import 'package:my_flutter/bottom_navigation/person_ui.dart';
import 'package:my_flutter/bottom_navigation/setting_ui.dart';

import 'email_ui.dart';
import 'home_ui.dart';

class BottomNavigationWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return BottomNavigationState();
  }
}

class BottomNavigationState extends State<BottomNavigationWidget> {
  final _iconColor = Colors.pinkAccent;
  List<Widget> _pages = List();
  int _currentIndex = 0;

  @override
  void initState() {
    _pages..add(HomeUI())..add(EmailUI())..add(PersonUI())..add(SettingUI());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: _iconColor,
            ),
            title: Text(
              "Home",
              style: TextStyle(color: _iconColor),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.email,
              color: _iconColor,
            ),
            title: Text(
              "Email",
              style: TextStyle(color: _iconColor),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: _iconColor,
            ),
            title: Text(
              "Person",
              style: TextStyle(color: _iconColor),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
              color: _iconColor,
            ),
            title: Text(
              "Setting",
              style: TextStyle(color: _iconColor),
            ),
          ),
        ],
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
