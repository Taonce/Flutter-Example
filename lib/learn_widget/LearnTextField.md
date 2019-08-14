## TextField

常见的属性：
1. controller：TextEditingController对象，可通过此对象获取输入框的值
2. focusNode：FocusNode对象，可判断输入框是否获取焦点
3. keyboardType：TextInputType，设置输入的类型
4. style：TextStyle对象，设置输入框内字体的样式
5. textAlign：TextAlign对象，默认为start，还有left、center、right等
6. textDirection：TextDirection对象，设置输入的方向：rtl和ltr两种
7. autoFocus：是否自动获取焦点
8. maxLines：最大行数
9. maxLength：最大字节数
10. maxLengthEnforced：到达最大字节数之后是否限制输入
11. onChanged：监听输入框的内容变化
12. onSubmitted：提交内容的反馈
13. enabled：是否可输入
14. cursorWidth：游标的宽度，默认为2.0
15. cursorRadius：游标的弧度
16. cursorColor：游标的颜色
17. onTap：点击事件
18. obscureText：是否隐藏输入内容，用于密码