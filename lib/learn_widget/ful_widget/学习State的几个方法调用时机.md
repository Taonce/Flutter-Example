## 学习State的几个方法调用时机
`State` 的几个可以重写的方法：
* initState()：创建界面的时候首先调用的就是这个方法
* didChangeDependencies()：在 `initSate()` 方法之后调用
* reassemble()：开发调试专用，热更新之后调用
* didUpdateWidget()：`Widget` 更新之后调用
* deactivate()：当 `State` 被移除的时候调用
* dispose()：当 `State` 被永久的移除的时候调用，通常在这个方法里面释放资源
* build()：构建 `Widget`,在以下几个方法之后都会调用
    * initState()
    * didChangeDependencies()
    * didUpdateWidget()
    * setState()