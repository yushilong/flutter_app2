import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scrolling_page_indicator/scrolling_page_indicator.dart';

class BNBPage2 extends StatelessWidget {
  PageController _pageController = PageController();
  List<Widget> pages = [
    Container(
      color: Colors.teal,
      child: Text("page1"),
    ),
    Container(
      color: Colors.amberAccent,
      child: Text("page2"),
    ),
    Container(
      color: Colors.blue,
      child: Text("page3"),
    ),
    Container(
      color: Colors.brown,
      child: Text("page4"),
    ),
    Container(
      color: Colors.deepPurpleAccent,
      child: Text("page5"),
    )
  ];

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
      body: SizedBox(
        height: 300,
        child: Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: <Widget>[
            Expanded(
              child: PageView(
                children: pages,
                controller: _pageController,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
              child: ScrollingPageIndicator(
                dotColor: Colors.grey,
                dotSelectedColor: Colors.blue,
                dotSize: 6,
                dotSelectedSize: 8,
                dotSpacing: 12,
                controller: _pageController,
                itemCount: pages.length,
                orientation: Axis.horizontal,
              ),
            )
          ],
        ),
      ),
    );
  }
}
