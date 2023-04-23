// ignore: file_names
import 'package:flutter/material.dart';
import "package:flutter_project/ThirdEntrance.dart";

class SignUpPage extends StatelessWidget 
{
  const SignUpPage({super.key});
  
  @override
  Widget build(BuildContext context) 
  {
    return Scaffold
    (
      appBar: AppBar
      (
        title:const Center(child: Text("註冊")),
        backgroundColor: Colors.green
      ),
      body:SingleChildScrollView
      (
        child:Column
        (
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>
          [
            Container
            (
              padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
              child:TextFormField
              (
                decoration: const InputDecoration
                (
                  prefixIcon: Icon(Icons.person_2_sharp),
                  labelText:'姓名',
                  hintText: '請輸入姓名',
                ),
              ),
            ),
            Container
            (
              padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
              child:TextFormField
              (
                decoration: const InputDecoration
                (
                  prefixIcon: Icon(Icons.email),
                  labelText:'帳號',
                  hintText: '請輸入帳號名或有效Email',
                ),
              ),
            ),
            Container
            (
              padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
              child:TextFormField
              (
                decoration: const InputDecoration
                (
                  prefixIcon: Icon(Icons.vpn_key),
                  labelText:'密碼',
                  hintText: '請輸入密碼',
                ),
                obscureText:true,
              ),
            ),
            Container
            (
              padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
              child:TextFormField
              (
                decoration: const InputDecoration
                (
                  prefixIcon: Icon(Icons.key),
                  labelText:'驗證密碼',
                  hintText: '請再一次輸入密碼',
                ),
                obscureText:true,
              ),
            ),
            const SizedBox
            (
              height: 52.0,
            ),
            Center
            (
              child: SizedBox
              (
                //width: MediaQuery.of(context).size.width - 48.0,
                height: 48.0,
                child: TextButton
                (
                  child: const Text("註冊"),
                  onPressed: () {},
                ),
              ),
            ),
            const SizedBox
            (
              height: 52.0,
            ),
            Center
            (
              child:SizedBox
              (
                //width: MediaQuery.of(context).size.width - 48.0,
                height: 48.0,
                child: TextButton
                (
                  child: const Text("第三方註冊?"),
                  onPressed: () 
                  {                  
                    Navigator.push
                    (
                      context,MaterialPageRoute(builder:(_)=> const ThirdEntrance())
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
