import 'dart:math';

import 'package:flutter/material.dart';

class ColorModel with ChangeNotifier {
  Color color = Color.fromARGB(255, 255, 0, 0);

  void changColor() {
    color = Color.fromARGB(
      255,
      Random().nextInt(255),
      Random().nextInt(255),
      Random().nextInt(255),
    );
    notifyListeners();
  }
}
