import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'learn_widget/LearnAppBar.dart';
import 'learn_widget/LearnButton.dart';
import 'learn_widget/LearnImage.dart';
import 'learn_widget/LearnText.dart';
import 'learn_widget/LearnDrawer.dart';
import 'learn_widget/LearnBottomNavigationBar.dart';
import 'learn_widget/LearnCheckSwitch.dart';

void main() {
  runApp(MyApp());

  if (Platform.isAndroid) {
    var style = SystemUiOverlayStyle(statusBarColor: Colors.transparent);
    SystemChrome.setSystemUIOverlayStyle(style);
  }
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // 是否显示右上角的DEBUG字体
//      home: LearnText(),
//      home: LearnImage(),
//    home: LearnButton(),
//      home: LearnAppBar(),
//      home: LearnDrawer(),
//      home: MyBottomNavigationBar(),
      home: LearnCheckSwitch(),
    );
  }
}
