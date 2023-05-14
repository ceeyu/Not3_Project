// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_project/MyPage1.dart';
import 'package:flutter_project/MyPage2.dart';
import 'package:dropdown_search/dropdown_search.dart';

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
  final List<String> dropdownItems = [];
  String PostSeach = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const Center(
            child: Text("身分授予",
                style: TextStyle(
                    color: Colors.black45,
                    fontSize: 20,
                    fontWeight: FontWeight.bold)),
          ),
          Center(
            child: Container(
              alignment: Alignment.center, //橫的
              height: 200.0,
              margin: const EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(30.0),
                    topLeft: Radius.circular(30.0),
                    bottomRight: Radius.circular(30.0),
                    bottomLeft: Radius.circular(30.0),
                  ),
                  color: Colors.green[300],
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        color: Colors.grey,
                        offset: Offset.fromDirection(1, 10)),
                  ]),
              child: Row(
                  //mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          width: 250,
                          height: 100,
                          child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 50, top: 35, right: 10),
                              child: DropdownSearch<String>(
                                popupProps: PopupProps.menu(
                                  showSelectedItems: true,
                                  disabledItemFn: (String s) =>
                                      s.startsWith('I'),
                                ),
                                items: const ["Xian", "Chavon", "Ting", 'Ping'],
                                dropdownDecoratorProps:
                                    const DropDownDecoratorProps(
                                  dropdownSearchDecoration: InputDecoration(
                                    labelText: "選擇演講者",
                                    hintText: "country in menu mode",
                                  ),
                                ),
                                onChanged: print,
                                selectedItem: "Ping",
                              )),
                        ),
                        SizedBox(
                          width: 250,
                          height: 100,
                          child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 50, top: 35, right: 10),
                              child: DropdownSearch<String>(
                                popupProps: PopupProps.menu(
                                  showSelectedItems: true,
                                  disabledItemFn: (String s) =>
                                      s.startsWith('I'),
                                ),
                                items: const ["Xian", "Chavon", "Ting", 'Ping'],
                                dropdownDecoratorProps:
                                    const DropDownDecoratorProps(
                                  dropdownSearchDecoration: InputDecoration(
                                    labelText: "選擇管理者",
                                    hintText: "country in menu mode",
                                  ),
                                ),
                                onChanged: print,
                                selectedItem: "Chavon",
                              )),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: MaterialButton(
                              onPressed: () {
                                setState(() {
                                  PostSeach = _textController.text;
                                });
                              },
                              color: Color.fromARGB(255, 0, 158, 71),
                              child: const Text('Search',
                                  style: TextStyle(color: Colors.white))),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 40),
                          child: MaterialButton(
                              onPressed: () {
                                setState(() {
                                  PostSeach = _textController.text;
                                });
                              },
                              color: Color.fromARGB(255, 0, 158, 71),
                              child: const Text('Search',
                                  style: TextStyle(color: Colors.white))),
                        ),
                      ],
                    ),
                  ]),
            ),
          ),
          const Center(
            child: Text("其他設定",
                style: TextStyle(
                    color: Colors.black45,
                    fontSize: 20,
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
                    topLeft: Radius.circular(30.0),
                    bottomRight: Radius.circular(30.0),
                    bottomLeft: Radius.circular(30.0),
                  ),
                  color: Colors.green[300],
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        color: Colors.grey,
                        offset: Offset.fromDirection(1, 10)),
                  ]),
              child: Row(
                  //mainAxisAlignment: MainAxisAlignment.start,
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 50, top: 35, right: 10),
                          child: Text(
                            '選擇要上傳的檔案',
                            textAlign: TextAlign.justify,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(fontWeight: FontWeight.w100),
                          ),
                          // Text(

                          //   '選擇要上傳的檔案',
                          //   textAlign: TextAlign.justify,
                          //   overflow: TextOverflow.ellipsis,
                          //   style: TextStyle(fontWeight: FontWeight.w100),
                          // ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top: 30, left: 80),
                          child: MaterialButton(
                              onPressed: () {
                                setState(() {
                                  PostSeach = _textController.text;
                                });
                              },
                              color: Color.fromARGB(255, 0, 158, 71),
                              child: const Text('檔案上傳',
                                  style: TextStyle(color: Colors.white))),
                        ),
                      ],
                    ),
                  ]),
            ),
            // ignore: avoid_unnecessary_containers
          ),
        ],
      ),
    );
  }
}
