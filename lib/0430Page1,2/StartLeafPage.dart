// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter_project/MyPage2.dart';

class StartLeafPage extends StatefulWidget {
  const StartLeafPage({super.key});
  @override
  //ignore: library_private_types_in_public_api
  _StartLeafPageState createState() => _StartLeafPageState();
}

class _StartLeafPageState extends State<StartLeafPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const Center(
            child: Text("可以創造葉子",
                style: TextStyle(
                    color: Colors.black45,
                    fontSize: 30,
                    fontWeight: FontWeight.bold)),
          ),
          Center(
            child: Container(
              alignment: Alignment.topCenter,
              child: Image.asset('assets/images/google.png',
                  width: 150, height: 150),
            ),
          ),
          Center(
            child: Container(
              height: 60,
              width: 150,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: const Color.fromARGB(222, 5, 202, 169),
                borderRadius: BorderRadius.circular(0),
              ),
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => const MyPage2()));
                },
                child: const Text(
                  '創建Leaf',
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ),
            ),
            // ignore: avoid_unnecessary_containers
          ),
        ],
      ),
    );
  }
}
