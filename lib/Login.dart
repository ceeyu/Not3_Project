// ignore: file_names
import 'package:flutter/material.dart';
import "package:flutter_project/ThirdEntrance.dart";
class LoginPage extends StatelessWidget 
{
  const LoginPage({super.key});
  @override
  Widget build(BuildContext context) 
  {
    return Scaffold
    (
      appBar: AppBar
      (
        title:const Center(child: Text("登入")),
        backgroundColor: Colors.green
      ),
      body: SingleChildScrollView
      (
        child: Column
        (
          children: <Widget>
          [
            Container
            (
              padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
              child: TextFormField
              (
                decoration: const InputDecoration
                (
                  prefixIcon: Icon(Icons.person),
                  labelText: "帳號",
                  hintText: "請輸入Email",
                ),
              ),
            ),
            Container
            (
              padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
              child: TextFormField
              (
                obscureText: true,
                decoration: const InputDecoration
                (
                  prefixIcon: Icon(Icons.lock),
                  labelText: "密碼",
                  hintText: "請輸入密碼",
                ),
              ),
            ),
            const SizedBox
            (
              height: 52.0,
            ),
            SizedBox
            (
              //width: MediaQuery.of(context).size.width - 48.0,
              height: 48.0,
              child: TextButton
              (
                child: const Text("登入"),
                onPressed: () {},
              ),
            ),
            const SizedBox
            (
              height: 52.0,
            ),
            SizedBox
            (
              //width: MediaQuery.of(context).size.width - 48.0,
              height: 48.0,
              child: TextButton
              (
                child: const Text("第三方登入?"),
                onPressed: () 
                {                  
                  Navigator.push
                  (
                    context,MaterialPageRoute(builder:(_)=> const ThirdEntrance())
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}