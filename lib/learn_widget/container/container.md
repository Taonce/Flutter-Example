## Container

基本属性：
* child：内部子界面
* alignment：对其方式，有center、centerLeft、TopLeft、BottomLeft等等
* width、height：宽高
* color：背景色
* padding：内边距，使用 `const EdgeInsets.all()` 或者 `const EdgeInsets.fromLTRB()` 设置
* margin：外边距，用法和 `padding` 类似
* decoration：装饰背景和边框，需要使用到 `BoxDecoration`

## BoxDecoration

基本属性：
* color：背景色，和 `Container` 的 `color` 属性冲突，二者选其一
* image：背景图
* border：边框颜色和线条宽度
* borderRadius：角的弧度大小
* gradient：可以设置渐变色，有三个子类：`LinearGradient` 线性渐变、`RadialGradient` 发散渐变、`SweepGradient` 扫描渐变