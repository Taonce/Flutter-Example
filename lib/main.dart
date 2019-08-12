import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_flutter/learn_widget/container/LearnContainer.dart';

import 'bottom_navigation/BottomNavigationWidget.dart';
import 'learn_widget/LearnAppBar.dart';
import 'learn_widget/LearnButton.dart';
import 'package:my_flutter/learn_widget/image/LearnImage.dart';
import 'learn_widget/LearnText.dart';
import 'learn_widget/LearnDrawer.dart';
import 'learn_widget/LearnBottomNavigationBar.dart';
import 'learn_widget/LearnCheckSwitch.dart';
import 'learn_widget/card/LearnCard.dart';
import 'learn_widget/column/LearnColumn.dart';
import 'learn_widget/grid/LearnGridView.dart';
import 'learn_widget/list/LearnList.dart';
import 'learn_widget/row/LearnRow.dart';
import 'learn_widget/stack/LearnStack.dart';
import 'navigation/LearnNavigator.dart';
import 'navigation/LearnNavigatorReturn.dart';
import 'navigation/LearnNavigatorWithData.dart';

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
      title: "LearnFlutter", // 这个title并不是界面的标题，而是应用在任务栏显示的标题
//       home: LearnText(),
//      home: LearnImage(),
//      home: LearnButton(),
//      home: LearnAppBar(),
//      home: LearnDrawer(),
//      home: MyBottomNavigationBar(),
//      home: LearnCheckSwitch(),
//      home: LearnContainer(),
//      home: LearnList(),
//      home: LearnListBuilder(),
//      home: LearnGridView(),
//      home: LearnRow(),
//      home: LearnColumn(),
//      home: LearnStack(),
//      home: LearnPositioned(),
//      home: LearnCard(),
//      home: HomeUI(),
//      home: LearnNavigatorWithData(),
//      home: LearnNavigatorReturn(),
      home: BottomNavigationWidget(),
      theme: ThemeData.light(),
    );
  }
}
