## ListView

基本属性：
* scrollDirection: 滚动方向，只有水平和垂直
* children: 是一个列表

也可以通过 `ListView.builder()` 来生成一个列表
通过 `itemCount` 来控制列表的长度
通过 `itemBuilder: (context, index) { return ItemView(); },` 来生成item