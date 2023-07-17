import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class Gardeners {
  int gardenerId;
  String firstName;
  String account;
  String passwordHash;
  String gardenerStatus;
  String gardenerAvatarName;
  String gardenerAvatarPath;

  Gardeners({
    required this.gardenerId,
    required this.firstName,
    required this.account,
    required this.passwordHash,
    required this.gardenerStatus,
    required this.gardenerAvatarName,
    required this.gardenerAvatarPath,
  });

  factory Gardeners.fromJson(Map<String, dynamic> json) {
    return Gardeners(
      gardenerId: json['gardener_id'],
      firstName: json['first_name'],
      account: json['account'],
      passwordHash: json['password_hash'],
      gardenerStatus: json['gardener_status'],
      gardenerAvatarName: json['gardener_avatar_name'],
      gardenerAvatarPath: json['gardener_avatar_path'],
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Dio _dio = Dio();
  List<Gardeners> _gardenersList = [];
  bool _isLoading = false;

  Future<void> fetchData() async {
    setState(() {
      _isLoading = true;
    });

    try {
      Response response = await _dio.get('http://120.126.16.222/gardeners');
      List<dynamic> responseData = response.data;

      List<Gardeners> gardenersList = responseData
          .map((gardener) => Gardeners.fromJson(gardener))
          .toList();

      setState(() {
        _gardenersList = gardenersList;
        _isLoading = false;
      });
    } catch (error) {
      setState(() {
        _isLoading = false;
      });
      print('Error: $error');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dio Example'),
      ),
      body: Center(
        child: _isLoading
            ? CircularProgressIndicator()
            : _gardenersList.isNotEmpty
                ? ListView.builder(
                    itemCount: _gardenersList.length,
                    itemBuilder: (context, index) {
                      Gardeners gardener = _gardenersList[index];
                      return ListTile(
                        title: Text('Gardener ID: ${gardener.gardenerId}'),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('First Name: ${gardener.firstName}'),
                            Text('Account: ${gardener.account}'),
                            Text('Password Hash: ${gardener.passwordHash}'),
                            Text('Gardener Status: ${gardener.gardenerStatus}'),
                            Text('Avatar Name: ${gardener.gardenerAvatarName}'),
                            Text('Avatar Path: ${gardener.gardenerAvatarPath}'),
                          ],
                        ),
                      );
                    },
                  )
                : Text('No Gardeners'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: fetchData,
        child: Icon(Icons.refresh),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    title: 'Dio Example',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: MyHomePage(),
  ));
}
