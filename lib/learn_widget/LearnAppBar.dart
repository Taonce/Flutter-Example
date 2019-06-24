import 'package:flutter/material.dart';

class LearnAppBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _LearnAppBarState();
  }
}

class _LearnAppBarState extends State<LearnAppBar>
    with SingleTickerProviderStateMixin {
  final String app_bar_bg = 'images/app_bar_bg.png';
  List<String> _more = ['A', 'B', 'C'];
  TabController _tabController;
  PageController _pageController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // 下面的this就是SingleTickerProviderStateMixin
    _tabController = TabController(length: _more.length, vsync: this);
    _pageController = PageController(initialPage: 0);
    _tabController.addListener(() {
      if (_tabController.indexIsChanging) {
        _pageController.animateToPage(_tabController.index,
            duration: Duration(milliseconds: 300), curve: Curves.decelerate);
      }
    });
  }

  @override
  void dispose() {
    // 防止内存泄漏
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        // 标题内容
        title: Text('LearnAppBar Demo'),
        // 标题是否居中
        centerTitle: true,
        // 是否使用默认样式
        automaticallyImplyLeading: true,
        // 标题左边的按钮
        leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () => print('Menu Button on pressed!')),
        // 背景
        flexibleSpace: Image.asset(app_bar_bg, fit: BoxFit.fitWidth),
        // 标题右边的按钮事件
        actions: <Widget>[
          PopupMenuButton(
              onSelected: (val) => print('selectd item is $val'),
              icon: Icon(
                Icons.more_vert,
                color: Colors.blue,
              ),
              itemBuilder: (context) => List.generate(
                  _more.length,
                  (index) => PopupMenuItem(
                        value: _more[index],
                        child: Text(_more[index]),
                      )))
        ],
        bottom: TabBar(
            labelColor: Colors.blue,
            unselectedLabelColor: Colors.white,
            controller: _tabController,
            isScrollable: false,
            indicatorColor: Colors.green,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorWeight: 2.0,
            tabs: List.generate(
                _more.length,
                (index) => Tab(
                      text: _more[index],
                      icon: Icon(Icons.android),
                    ))),
      ),
      body: PageView(
        controller: _pageController,
        children: _more.map((str) => TabChangePage(content: str)).toList(),
        onPageChanged: (position) {
          _tabController.index = position;
        },
      ),
      drawer: Drawer(
        child: SafeArea(
            child: Container(
          child: Text(
            'Drawer',
            style: TextStyle(color: Colors.red, fontSize: 30.0),
          ),
        )),
      ),
    );
  }
}

class TabChangePage extends StatelessWidget {
  final String content;

  TabChangePage({Key key, this.content}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 仅展示传入的内容
    return Container(
        alignment: Alignment.center,
        child: Text(content,
            style: TextStyle(
                color: Theme.of(context).primaryColor, fontSize: 30.0)));
  }
}
