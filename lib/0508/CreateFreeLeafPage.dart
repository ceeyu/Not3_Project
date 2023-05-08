import 'package:flutter/material.dart';
import 'package:flutter_project/MyPage2.dart';

//import 'package:flutter_screenutil/flutter_screenutil.dart';
class CreateFreeLeafPage extends StatefulWidget {
  const CreateFreeLeafPage({super.key});
  @override
  // ignore: library_private_types_in_public_api
  _CreateFreeLeafPageState createState() => _CreateFreeLeafPageState();
}

class _CreateFreeLeafPageState extends State<CreateFreeLeafPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('FreeLeaf')),
        backgroundColor: Colors.green,
        elevation: 0.0, //陰影
      ),
      body: const Text(
        "FreeLeaf",
        style: TextStyle(
            fontSize: 50.0, color: Colors.green, fontStyle: FontStyle.italic),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const MyPage2()));
        },
        tooltip: '創建Tree',
        backgroundColor: Colors.greenAccent,
        child: const Icon(Icons.keyboard_backspace),
      ),
    );
  }
}
