import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HttpWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HttpState();
  }
}

class HttpState extends State<HttpWidget> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(title: Text("http请求方式")),
      body: Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
              child: Text("get"),
              onPressed: _get,
            ),
            RaisedButton(
              child: Text("post"),
            )
          ],
        ),
      ),
    );
  }

  _get() async {
    Dio dio = new Dio();
    Response response = await dio.get(
        "http://api.avatardata.cn/ActNews/Query?key=ce6aba88b53b402bb6c994cfd24911f0&keyword=习近平");
    AwesomeDialog(
      context: context,
      animType: AnimType.SCALE,
      dialogType: DialogType.INFO,
      body: Center(
        child: Container(
          child: SingleChildScrollView(
            child: Text(
              response.data["result"].toString(),
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
          ),
          height: 150,
        ),
      ),
      tittle: 'This is Ignored',
      desc: 'This is also Ignored',
      btnOkOnPress: () {},
    ).show();
  }
}
