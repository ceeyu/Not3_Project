import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class User {
  final int id;
  final String name;
  final String email;

  User({required this.id, required this.name, required this.email});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      name: json['name'],
      email: json['email'],
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Dio ?_dio;
  User? _user;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _dio = Dio();
  }

  Future<void> fetchData() async {
    setState(() {
      _isLoading = true;
    });

    try {
      Response response = await _dio!.get('https://jsonplaceholder.typicode.com/users/3');
      setState(() {
        _user = User.fromJson(response.data);
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
            : _user != null
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'User ID: ${_user!.id}',
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Name: ${_user!.name}',
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Email: ${_user!.email}',
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  )
                : Text('No User'),
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
