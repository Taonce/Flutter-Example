## Image

加载图片的几种方式：
* Image.asset(): 加载资源图片，就是加载项目资源目录中的图片,加入图片后会增大打包的包体体积，用的是相对路径。
* Image.network(): 网络资源图片，意思就是你需要加入一段http://xxxx.xxx的这样的网络路径地址。
* Image.file(): 加载本地图片，就是加载本地文件中的图片，这个是一个绝对路径，跟包体无关。
* Image.memory(): 加载Uint8List资源图片,没使用过...
* Icon(): 加载系统自带的图标

基本属性：
* fit: 缩放类型，取 `BoxFit` 下的值
    * BoxFit.fill: 全图显示，图片会被拉伸，并充满父容器。
    * BoxFit.contain: 全图显示，显示原比例，可能会有空隙。
    * BoxFit.cover: 显示可能拉伸，可能裁切，充满（图片要充满整个容器，还不变形）。
    * BoxFit.fitWidth: 宽度充满（横向充满），显示可能拉伸，可能裁切。
    * BoxFit.fitHeight: 高度充满（竖向充满）,显示可能拉伸，可能裁切。
    * BoxFit.scaleDown: 效果和contain差不多，但是此属性不允许显示超过源图片大小，可小不可大。
* colorBlendMode: 将图片用 `color` 来上色
* repeat: 重复模式，有noRepeat、repeat、repeatX和repeatY三种模式