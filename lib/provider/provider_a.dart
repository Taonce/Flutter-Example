import 'package:flutter/material.dart';
import 'package:my_flutter/provider/color_model.dart';
import 'package:my_flutter/provider/provider_b.dart';
import 'package:provider/provider.dart';

import 'counter_model.dart';

class ProviderA extends StatefulWidget {
  ProviderA({Key key}) : super(key: key);

  @override
  _ProviderAState createState() {
    return _ProviderAState();
  }
}

class _ProviderAState extends State<ProviderA> {
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
    final CounterModel _counter = Provider.of<CounterModel>(context);
    final double _textSize = Provider.of<int>(context).toDouble();
    return Scaffold(
      appBar: AppBar(
        title: Text('ProviderA'),
      ),
      body: Center(
          child: Column(
        children: <Widget>[
          Text(
            'Value ${_counter.value}',
            style: TextStyle(fontSize: _textSize),
          ),
          Consumer(
            builder: (context, ColorModel model, _) {
              return Text(
                'Change Color',
                style: TextStyle(
                  color: model.color,
                ),
              );
            },
          ),
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) {
              return ProviderB();
            }),
          );
        },
        child: Icon(Icons.navigate_next),
      ),
    );
  }
}
