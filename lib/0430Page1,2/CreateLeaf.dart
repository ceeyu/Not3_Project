// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter_project/MyPage1.dart';
import 'package:flutter_project/MyPage2.dart';

class CreateLeafPage extends StatefulWidget {
  const CreateLeafPage({super.key});
  @override
  //ignore: library_private_types_in_public_api
  _CreateLeafPageState createState() => _CreateLeafPageState();
}

class _CreateLeafPageState extends State<CreateLeafPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const Center(
            child: Text("葉子頁",
                style: TextStyle(
                    color: Colors.black45,
                    fontSize: 30,
                    fontWeight: FontWeight.bold)),
          ),
          Center(
            child: Container(
              alignment: Alignment.center,
              height: 100.0,
              margin: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30.0),
                      topLeft: Radius.circular(30.0)),
                  color: Colors.green[300],
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        color: Colors.grey,
                        offset: Offset.fromDirection(1, 20)),
                  ]),
              child: Text(
                '模式: 普通 空白',
                style: TextStyle(fontSize: 20.0),
              ),
            ),
          ),
          Center(
            child: Container(
              alignment: Alignment.center,
              height: 100.0,
              margin: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30.0),
                      topLeft: Radius.circular(30.0)),
                  color: Colors.green[300],
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        color: Colors.grey,
                        offset: Offset.fromDirection(1, 20)),
                  ]),
              child: Text(
                '身分',
                style: TextStyle(fontSize: 20.0),
              ),
            ),
            // ignore: avoid_unnecessary_containers
          ),
          Center(
            child: Container(
              alignment: Alignment.center,
              height: 100.0,
              margin: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30.0),
                      topLeft: Radius.circular(30.0)),
                  color: Colors.green[300],
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        color: Colors.grey,
                        offset: Offset.fromDirection(1, 20)),
                  ]),
              child: Text(
                '其他設定',
                style: TextStyle(fontSize: 20.0),
              ),
            ),
            // ignore: avoid_unnecessary_containers
          ),
        ],
      ),
    );
  }
}
