import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ScrollWidget extends StatelessWidget {
  final images = new List();
  final titles = new List();

  ScrollWidget() {
    images.add(
        "http://t9.baidu.com/it/u=583874135,70653437&fm=79&app=86&f=JPEG?w=3607&h=2408");
    images.add(
        "http://t9.baidu.com/it/u=1307125826,3433407105&fm=79&app=86&f=JPEG?w=5760&h=3240");
    images.add(
        "http://t9.baidu.com/it/u=2268908537,2815455140&fm=79&app=86&f=JPEG?w=1280&h=719");
    images.add(
        "http://t9.baidu.com/it/u=4169540006,4220376401&fm=79&app=86&f=JPEG?w=1000&h=1500");
    images.add(
        "http://t9.baidu.com/it/u=86853839,3576305254&fm=79&app=86&f=JPEG?w=750&h=390");
    images.add(
        "http://t9.baidu.com/it/u=583874135,70653437&fm=79&app=86&f=JPEG?w=3607&h=2408");
    images.add(
        "http://t9.baidu.com/it/u=1307125826,3433407105&fm=79&app=86&f=JPEG?w=5760&h=3240");
    images.add(
        "http://t9.baidu.com/it/u=2268908537,2815455140&fm=79&app=86&f=JPEG?w=1280&h=719");
    images.add(
        "http://t9.baidu.com/it/u=4169540006,4220376401&fm=79&app=86&f=JPEG?w=1000&h=1500");
    images.add(
        "http://t9.baidu.com/it/u=86853839,3576305254&fm=79&app=86&f=JPEG?w=750&h=390");
    images.add(
        "http://t9.baidu.com/it/u=583874135,70653437&fm=79&app=86&f=JPEG?w=3607&h=2408");
    images.add(
        "http://t9.baidu.com/it/u=1307125826,3433407105&fm=79&app=86&f=JPEG?w=5760&h=3240");
    images.add(
        "http://t9.baidu.com/it/u=2268908537,2815455140&fm=79&app=86&f=JPEG?w=1280&h=719");
    images.add(
        "http://t9.baidu.com/it/u=4169540006,4220376401&fm=79&app=86&f=JPEG?w=1000&h=1500");
    images.add(
        "http://t9.baidu.com/it/u=86853839,3576305254&fm=79&app=86&f=JPEG?w=750&h=390");
    //
    for (int i = 0; i < images.length; i++) {
      titles.add("title-" + i.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(title: Text("列表")),
      body: ListView.separated(
          itemBuilder: (BuildContext context, int index) {
            return Container(
              color: Colors.grey,
              child: Row(
                children: <Widget>[
                  Container(
                    height: 60,
                    width: 60,
                    child: Image.network(images[index], fit: BoxFit.cover),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    titles[index],
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) => const Divider(
                color: Colors.green,
                height: 5,
              ),
          itemCount: images.length),
    );
  }
}
