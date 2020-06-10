import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BNBPage1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return BNBPageState();
  }
}

class BNBPageState extends State<BNBPage1> with SingleTickerProviderStateMixin {
  static List tabs = ["历史", "新闻", "图片"];
  TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    tabController = TabController(length: tabs.length, vsync: this)
      ..addListener(() {
        switch (tabController.index) {
        }
      });
  }

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
        bottom: TabBar(
          controller: tabController,
          tabs: tabs
              .map((e) => Tab(
                    text: e,
                  ))
              .toList(),
        ),
      ),
      body: Container(
        color: Color.fromRGBO(26, 172, 255, 1),
        child: TabBarView(
          controller: tabController,
          physics: ScrollPhysics(),
          children: <Widget>[
            Center(
                child: Text(DateTime.now().millisecondsSinceEpoch.toString())),
            Center(child: Text("view2")),
            Center(child: Text("view3"))
          ],
        ),
      ),
    );
  }
}
