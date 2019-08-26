import 'package:flutter/material.dart';

class CounterModel with ChangeNotifier {
  int _counter = 0;

  int get value => _counter;

  void increase() {
    _counter++;
    notifyListeners();
  }
}
