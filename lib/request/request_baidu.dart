import 'dart:convert';
import 'dart:io';
import 'package:dio/dio.dart';

import 'package:flutter/material.dart';

class RequestBD extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => RequestBDState();
}

class RequestBDState extends State {
  String _result = "";
  bool _isLoading = false;
  String _url = "https://www.baidu.com";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('网络请求'),
      ),
      body: ConstrainedBox(
        constraints: BoxConstraints.expand(),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              RaisedButton(
                onPressed: _isLoading
                    ? null
                    : () {
//                        _request();
                  _requestWithDio();
                },
                child: Text(
                  '请求百度',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.pinkAccent,
                  ),
                ),
              ),
              Container(
                width: MediaQuery
                    .of(context)
                    .size
                    .width - 50,
                child: Text(_result.replaceAll(new RegExp(r"\s"), "")),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _request() async {
    setState(() {
      _isLoading = true;
      _result = '请求中。。。';
    });
    try {
      HttpClient httpClient = new HttpClient();
      // ignore: close_sinks
      HttpClientRequest request = await httpClient.getUrl(Uri.parse(_url));
      HttpClientResponse response = await request.close();
      _result = await response.transform(utf8.decoder).join();
      httpClient.close();
    } catch (e) {
      setState(() {
        _result = "请求出错";
      });
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  // 使用Dio进行网络请求
  void _requestWithDio() async {
    Dio dio = Dio();
    Response response;
    response = await dio.get(_url);
    setState(() {
      _result = response.data.toString();
    });
  }
}
