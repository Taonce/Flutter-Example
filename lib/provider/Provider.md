## 状态管理Provider

1. 创建数据Model类
  * 必须 `with ChangeNotifier`
  * 修改数据后需要 `notifyListeners();`
  
2. 在APP中注册Provider
  * 可以使用 `Provider.value(value: T)` 注册单个静态数据Model，管理的T是一个恒定的数据
  * 也可以使用 `ChangeNotifierProvider.value(value: T)` 注册单个动态数据Model，数据改变的时候通知所有听众刷新
  * 多个Model可以使用 `MultiProvider()` 来注册
  
3. 获取Model
  * 第一种直接获取 `final CounterModel _counter = Provider.of<CounterModel>(context);`,这种获取方式在数据发生改变后会刷新整个widget
  * 使用 `Consume()` 来获取，这样的只会刷新内部的Widget
