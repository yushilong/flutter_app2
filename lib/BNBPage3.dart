import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BNBPage3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(runtimeType.toString()),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Text("page3"),
      ),
    );
  }
}
