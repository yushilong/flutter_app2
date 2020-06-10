import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutterapp2/BNBPage1.dart';
import 'package:flutterapp2/BNBPage2.dart';
import 'package:flutterapp2/BNBPage3.dart';

class BNB extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new BNBState();
  }
}

class BNBState extends State<BNB> with SingleTickerProviderStateMixin {
  int _selectedIndex = 0;
  List<Widget> pages = [BNBPage1(), BNBPage2(), BNBPage3()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromRGBO(26, 172, 255, 1),
        child: IndexedStack(
          index: _selectedIndex,
          children: pages,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("Home")),
          BottomNavigationBarItem(
              icon: Icon(Icons.business), title: Text("Business")),
          BottomNavigationBarItem(
              icon: Icon(Icons.school), title: Text("School"))
        ],
        fixedColor: Colors.blue,
        currentIndex: _selectedIndex,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
