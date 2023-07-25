 /*
import 'package:fastboard_flutter_example/agora_model.dart';

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  @override
  // ignore: library_private_types_in_public_api
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _enterfirstnamecontroller =
      TextEditingController();

  //final TextEditingController _chatdatacontroller = TextEditingController();
  Future<List<dynamic>>? _futureLogin;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Agora API Information(Post) Post'),
      ),
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(8),
        child: (_futureLogin == null) ? buildColumn() : buildFutureBuilder(),
      ),
    );
  }

  Column buildColumn() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SizedBox(
          width: 300,
          height: 80,
          child: TextField(
            controller: _enterfirstnamecontroller,
            decoration: const InputDecoration(
              hintText: 'Enter Account for region',
              labelText: "地區",
              prefixIcon: Icon(Icons.person),
            ),
          ),
        ),
        
        SizedBox(
          width: 150,
          height: 48,
          child: ElevatedButton(
            onPressed: () {
              setState(() {
                _futureLogin = createLogin(_enterfirstnamecontroller.text
                    );
              });
            },
            child: const Text('Show'),
          ),
        ),
      ],
    );
  }

  FutureBuilder<List<dynamic>> buildFutureBuilder() {
    return FutureBuilder<List<dynamic>>(
      future: _futureLogin,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator();
        } else if (snapshot.hasData) {
          return ListView.builder(
            padding: const EdgeInsets.all(20),
            itemCount: snapshot.data!.length,
            itemBuilder: (context, index) {
              final item = snapshot.data![index];
              return ListTile(
                
                title: Text('roomToken : ${item['roomToken']} AppID : ${item['appIdentifier']} '),
                subtitle: Text(  'UUID : ${item['roomData']['uuid']}'),
              );
            },
          );
        } else if (snapshot.hasError) {
          return Text('${snapshot.error}');
        } else {
          return const Text('No data available');
        }
      },
    );
  }
}

 */


// /*
import 'package:flutter/material.dart';
import 'package:fastboard_flutter_example/agora_model.dart';
import 'package:fastboard_flutter_example/quick_start.dart';
import 'package:fastboard_flutter_example/constants.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _regionController = TextEditingController();
  Future<List<LoginModel>>? _futureLogin;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Agora API Information(Post) Post'),
      ),
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(8),
        child: (_futureLogin == null) ? buildColumn() : buildFutureBuilder(),
      ),
    );
  }

  Column buildColumn() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SizedBox(
          width: 300,
          height: 80,
          child: TextField(
            controller: _regionController,
            decoration: const InputDecoration(
              hintText: 'Enter Account for region',
              labelText: "地區",
              prefixIcon: Icon(Icons.person),
            ),
          ),
        ),
        SizedBox(
          width: 150,
          height: 48,
          child: ElevatedButton(
            onPressed: () async {
              setState(() {
                _futureLogin = createLogin(_regionController.text);
              });
              try {
                var loginModels = await _futureLogin;
                if (loginModels != null && loginModels.isNotEmpty) {
                  // 更新constant.dart中的值
                  APP_ID = loginModels[0].appIdentifier;
                  ROOM_UUID = loginModels[0].uuid;
                  ROOM_TOKEN = loginModels[0].roomToken;
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => QuickStartBody()),
                  );
                } else {
                  // 處理API回傳資料為空的情況
                  print('API response is empty');
                }
              } catch (e) {
                print('Error: $e');
              }
            },
            child: const Text('Show'),
          ),
        ),
      ],
    );
  }

  FutureBuilder<List<LoginModel>> buildFutureBuilder() {
    return FutureBuilder<List<LoginModel>>(
      future: _futureLogin,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator();
        } else if (snapshot.hasData) {
          // 不需要再重複顯示頁面，直接導航到QuickStartBody
          return Container();
        } else if (snapshot.hasError) {
          return Text('${snapshot.error}');
        } else {
          return const Text('No data available');
        }
      },
    );
  }
}
// */