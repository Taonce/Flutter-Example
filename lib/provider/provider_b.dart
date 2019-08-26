import 'package:flutter/material.dart';
import 'package:my_flutter/provider/color_model.dart';
import 'package:my_flutter/provider/counter_model.dart';
import 'package:provider/provider.dart';

class ProviderB extends StatefulWidget {
  ProviderB({Key key}) : super(key: key);

  @override
  _ProviderBState createState() {
    return _ProviderBState();
  }
}

class _ProviderBState extends State<ProviderB> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ProviderB'),
      ),
      body: Consumer2<CounterModel, int>(
          builder: (context, counter, textSize, _) {
        return Center(
            child: Column(
          children: <Widget>[
            Text(
              'Value ${counter.value}',
              style: TextStyle(
                fontSize: textSize.toDouble(),
              ),
            ),
            Consumer(
              builder: (context, ColorModel model, _) {
                return RaisedButton(
                  onPressed: () {
                    model.changColor();
                  },
                  child: Text('修改A的颜色'),
                );
              },
            )
          ],
        ));
      }),
      floatingActionButton:
          Consumer(builder: (context, CounterModel counter, child) {
        return FloatingActionButton(
          onPressed: () {
            counter.increase();
          },
          child: Icon(Icons.add),
        );
      }),
    );
  }
}
