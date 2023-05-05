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
  //加Controller
  final TextEditingController _searchController = TextEditingController();
  final _textController = TextEditingController();
  String PostSeach = '';

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
              height: 200.0,
              margin: const EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(30.0),
                      topLeft: Radius.circular(30.0)),
                  color: Colors.green[300],
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        color: Colors.grey,
                        offset: Offset.fromDirection(1, 20)),
                  ]),
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      '身分授予',
                      style: TextStyle(fontSize: 20.0),
                    ),
                  ),
                  Column(
                    children: const <Widget>[
                      Text(
                        '身分授予',
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      SizedBox(
                        width: 400,
                        height: 100,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 50, top: 35, right: 10),
                          child: TextField(
                            controller: _textController,
                            decoration: InputDecoration(
                              hintText: "搜尋名字:演講者",
                              hintStyle: TextStyle(color: Colors.grey.shade600),
                              prefixIcon: Icon(Icons.search,
                                  color: Colors.grey.shade600, size: 20),
                              suffixIcon: IconButton(
                                onPressed: () {
                                  _textController.clear();
                                },
                                icon: const Icon(Icons.clear),
                              ),
                              filled: true,
                              fillColor: Colors.grey.shade100,
                              contentPadding: const EdgeInsets.all(8),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide:
                                      BorderSide(color: Colors.grey.shade100)),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    //mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 25),
                        child: MaterialButton(
                            onPressed: () {
                              setState(() {
                                PostSeach = _textController.text;
                              });
                            },
                            color: Colors.blue,
                            child: const Text('Search',
                                style: TextStyle(color: Colors.white))),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          /* 
               Text(
                '身分',
                style: TextStyle(fontSize: 20.0),
              ),
            ),
            // ignore: avoid_unnecessary_containers
          ),
          */
          Center(
            child: Container(
              alignment: Alignment.center,
              height: 200.0,
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
