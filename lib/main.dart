import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_flutter/learn_widget/container/LearnContainer.dart';
import 'package:my_flutter/search_bar/search_bar.dart';

import 'animation/animation_builder.dart';
import 'animation/animation_switcher_ui.dart';
import 'animation/hero_animation/hero_animation_ui.dart';
import 'animation/my_animation_widget.dart';
import 'animation/scale_animation_ui.dart';
import 'animation/stagger_animation/stagger_animation_ui.dart';
import 'bottom_float_navigation/BottomNavigationFloatButton.dart';
import 'bottom_navigation/BottomNavigationWidget.dart';
import 'frost_glass/frost_glass_ui.dart';
import 'keep_alive/KeepAliveUI.dart';
import 'learn_widget/LearnAppBar.dart';
import 'learn_widget/LearnButton.dart';
import 'package:my_flutter/learn_widget/image/LearnImage.dart';
import 'learn_widget/LearnText.dart';
import 'learn_widget/LearnDrawer.dart';
import 'learn_widget/LearnBottomNavigationBar.dart';
import 'learn_widget/LearnCheckSwitch.dart';
import 'learn_widget/card/LearnCard.dart';
import 'learn_widget/column/LearnColumn.dart';
import 'learn_widget/event_bus/observable_ui.dart';
import 'learn_widget/gesture_detector/learn_gesture_detetor.dart';
import 'learn_widget/grid/LearnGridView.dart';
import 'package:my_flutter/learn_widget/ful_widget/learn_ful_widget.dart';
import 'learn_widget/intercept_return/learn_intercept_return.dart';
import 'learn_widget/list/LearnList.dart';
import 'learn_widget/progress/learn_progress.dart';
import 'learn_widget/row/LearnRow.dart';
import 'learn_widget/stack/LearnStack.dart';
import 'navigation/LearnNavigator.dart';
import 'navigation/LearnNavigatorReturn.dart';
import 'navigation/LearnNavigatorWithData.dart';
import 'request/request_baidu.dart';
import 'route_animator/RouteMainPage.dart';

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
//      home: BottomNavigationWidget(),
//      home: BottomNavigationFloatButton(),
//      home: RouteMainPage(),
//      home: FrostGlassUI(),
//      home: KeepAliveUI(),
//      home: SearchBarUI(),
//      home: RequestBD(),
//      home: LearnFulWidget(),
//      home: LearnProgress(),
//      home: LearnInterceptReturn(),
//      home: LearnGestureDetector(),
//      home: ObservableUI(),
//      home: ScaleAnimationUI(),
//      home: MyAnimationWidgetUI(),
//      home: MyAnimationBuilderUI(),
//      home: HeroAnimationUI(),
//      home: StaggerAnimationUI(),
      home: AnimationSwitcherUI(),
      theme: ThemeData.light(),
    );
  }
}
