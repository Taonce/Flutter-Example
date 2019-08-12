import 'package:flutter/material.dart';

// 学习输入组件
class LearnTextField extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LearnTextField();
  }
}

class _LearnTextField extends State<LearnTextField> {
  TextEditingController _controller = TextEditingController();
  FocusNode _focusNode = FocusNode();
  String _content = '';
  String _changeContent = '';

  @override
  void initState() {
    super.initState();
    // 监听EditField是否获取到焦点
    _focusNode.addListener(() {
      print('edit has foucs? => ${_focusNode.hasFocus}');
    });
  }

  @override
  void dispose() {
    // 防止内存泄漏
    _focusNode.dispose();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Learn TextField'),
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            TextField(
              autofocus: false,
              controller: _controller,
              focusNode: _focusNode,
              decoration: InputDecoration(
                  icon: Icon(Icons.phone_iphone),
                  labelText: '请输入手机号',
                  helperText: '手机号',
                  hintText: '手机号在此输入'),
              keyboardType: TextInputType.phone,
              style: TextStyle(
                color: Colors.red,
                fontSize: 20.0,
              ),
              textDirection: TextDirection.ltr,
              maxLength: 11,
              maxLengthEnforced: true,
              onChanged: (content) {
                setState(() {
                  _changeContent = content;
                });
              },
              onSubmitted: (result) {
                setState(() {
                  _changeContent = _controller.value.text;
                });
              },
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: RaisedButton(
                  child: Text('提交输入框的内容'),
                  onPressed: () {
                    setState(() {
                      _content = _controller.value.text;
                      _controller.clear();
                      setState(() {
                        _changeContent = '';
                      });
                    });
                  }),
            ),
            Text(_content.isNotEmpty ? '输入框最终结果为：$_content' : '输入框的内容为空'),
            Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: Text('监听EditField的内容变化：$_changeContent'),
            )
          ],
        ),
      ),
    );
  }
}
