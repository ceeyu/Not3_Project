import 'package:flutter_project2/models/post_test.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  @override
  // ignore: library_private_types_in_public_api
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _accountcontroller = TextEditingController();
  final TextEditingController _passwordcontroller = TextEditingController();
  final TextEditingController _firstnamecontroller = TextEditingController();
  Future<List<dynamic>>? _futureLogin;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gardeners Edit Data(Post) Post'),
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
            controller: _accountcontroller,
            decoration: const InputDecoration(
              hintText: 'Enter Account',
              labelText: "帳號",
              prefixIcon: Icon(Icons.person),
            ),
          ),
        ),
        
        SizedBox(
          width: 300,
          height: 80,
          child: TextField(
            controller: _passwordcontroller,
            obscureText: true,
            decoration: const InputDecoration(
              hintText: 'Enter Password',
              labelText: "密碼",
              prefixIcon: Icon(Icons.lock),
            ),
          ),
        ),
        SizedBox(
          width: 300,
          height: 80,
          child: TextField(
            controller: _firstnamecontroller,
            //obscureText: true,
            decoration: const InputDecoration(
              hintText: 'Enter firstname',
              labelText: "姓名",
              prefixIcon: Icon(Icons.lock),
            ),
          ),
        ),
        SizedBox(
          width: 150,
          height: 48,
          child: ElevatedButton(
            onPressed: () {
              setState(() {
                _futureLogin = createLogin(_accountcontroller.text,_passwordcontroller.text,_firstnamecontroller.text );
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
          return ListView.builder
          (
            padding: const EdgeInsets.all(20),
            itemCount: snapshot.data!.length,
            itemBuilder: (context,index)
            {
              final item=snapshot.data![index];
              return ListTile
              (

                title: Text('account:${item['account']}'),
                subtitle: Text('first name :${item['first_name']}'),
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
