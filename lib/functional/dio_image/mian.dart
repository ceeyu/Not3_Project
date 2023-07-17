import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key?key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late Dio _dio;
  Uint8List ?_imageData;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _dio = Dio();
  }

  Future<void> fetchImage() async {
    setState(() {
      _isLoading = true;
    });

    try {
      Response<Uint8List> response = await _dio.get<Uint8List>(
        'https://img.4gamers.com.tw/ckfinder/images/Katy/aimation%2004/230220-oshi-01.jpg?versionId=nQkE8gLlqRe47B.fukFHJwCn4pErVwWE',
        options: Options(responseType: ResponseType.bytes),
      );

      setState(() {
        _imageData = response.data ;
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
            : _imageData != null
                ? Image.memory(_imageData?? Uint8List(0))
                : Text('No Image'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: fetchImage,
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
