import 'package:flutter/material.dart';

/*
* 学习选择控件
* */
class LearnCheckSwitch extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _LearnCheckSwitchState();
  }
}

class _LearnCheckSwitchState extends State<LearnCheckSwitch> {
  var _isChecked = false;
  var _isTitleChecked = false;
  var _isOn = false;
  var _isTitleOn = false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('CheckSwitch Demo'),
      ),
      body: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              // 复选框
              Checkbox(
                // 三个状态true,false,null
                tristate: true,
                // 状态值
                value: _isChecked,
                onChanged: (checked) {
                  setState(() {
                    _isChecked = checked;
                  });
                },
                // 状态为true的颜色
                activeColor: Colors.pink,
                // 点击区域：padded和shrinkWrap
                // padded为48px * 48px
                // shrinkWrap为控件提供的最小值
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),
              Checkbox(
                value: _isChecked,
                onChanged: null,
                tristate: true,
              )
            ],
          ),
          Row(
            children: <Widget>[
              // 开关
              Switch(
                // 开状态的颜色
                activeTrackColor: Colors.yellow,
                // 关状态的颜色
                inactiveTrackColor: Colors.yellow[200],
                // 设置状态值
                value: _isOn,
                onChanged: (isOn) => {
                      setState(() => {_isOn = isOn})
                    },
              ),
              Switch(
                value: _isOn,
                onChanged: null,
              )
            ],
          ),
          // 带标题和二级标题的复选框
          CheckboxListTile(
              title: Text('CheckboxListTitle'),
              subtitle: Text('This is CheckboxListSubTitle'),
              value: _isTitleChecked,
              // 复选框的位置
              controlAffinity: ListTileControlAffinity.leading,
              onChanged: (checked) {
                setState(() {
                  _isTitleChecked = checked;
                });
              }),
          // 带标题和二级标题的开关
          SwitchListTile(
              title: Text('SwitchListTitle'),
              subtitle: Text('This is SwitchListSubTitle'),
              value: _isTitleOn,
              // 是否平铺三行文本
              isThreeLine: true,
              onChanged: (isOn) {
                setState(() {
                  _isTitleOn = isOn;
                });
              })
        ],
      ),
    );
  }
}
