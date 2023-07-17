import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  Dio _dio = Dio();
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(
                labelText: 'Username',
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(
                labelText: 'Password',
              ),
              obscureText: true,
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: _isLoading ? null : _login,
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _login() async {
    String username = _usernameController.text.trim();
    String password = _passwordController.text.trim();

    if (username.isEmpty || password.isEmpty) {
      return;
    }

    setState(() {
      _isLoading = true;
    });

    try {
      Response response = await _dio.post(
        'http://120.126.16.222/gardeners/login',
        data: {
          'account': username,
          'password': password,
        },
      );

      print('Response data type: ${response.data.runtimeType}');

      // 登入成功處理
      if (response.statusCode == 200) {
        String accessToken = response.data['access_token'];
        String ip = response.data['ip'];

        print('Login success!');
        print('AccessToken: $accessToken');
        print('IP: $ip');
      } else {
        print('Login failed');
      }
    } catch (error, stackTrace) {
      if (error is DioError) {
        print('Login error: $error');
        print('Error status code: ${error.response?.statusCode}');
        print('Error message: ${error.response?.data}');
      } else {
        print('Unknown error occurred: $error');
      }
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }
}

void main() {
  runApp(MaterialApp(
    title: 'Login Page',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: LoginPage(),
  ));
}
