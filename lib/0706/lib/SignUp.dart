// ignore: file_names
//import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/MyPage1.dart';
import "package:flutter_project/ThirdEntrance.dart";
class SignUpPage extends StatelessWidget
{
  const SignUpPage({super.key});
  @override
  Widget build(BuildContext context) 
  {
    return Scaffold
    (
      backgroundColor: Colors.white,
      appBar: AppBar
      (
        title:const Center(child: Text("註冊")),
        backgroundColor: Colors.green
      ),
      body:SafeArea
      (
        child:Container
        (
          padding:const EdgeInsets.all(16.0),
          child:Column
          (
            mainAxisAlignment: MainAxisAlignment.center,
            children:
            [
              Row
              (
                mainAxisAlignment: MainAxisAlignment.center,
                children:const <Widget>
                [
                  SizedBox
                  (
                    width:300,
                    child:TextField
                    (
                      decoration: InputDecoration
                      (
                        prefixIcon:Icon(Icons.person_2_sharp),
                        labelText:'姓名',
                        hintText: '請輸入姓名',
                      ),
                    ),
                  ),
                ],
              ),
              Row
              (
                mainAxisAlignment: MainAxisAlignment.center,
                children:const <Widget>
                [
                  SizedBox
                  (
                    width:300,
                    child:TextField
                    (
                      decoration: InputDecoration
                      (
                        prefixIcon: Icon(Icons.email),
                        labelText: '帳號',
                        hintText: '請輸入帳號名或有效Email',
                      ),
                    ),
                  ),
                ],
              ),
              Row
              (
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>
                [
                  SizedBox
                  (
                    width:300,
                    child:TextField
                    (
                      obscureText:true,
                      decoration: InputDecoration
                      (
                        prefixIcon: Icon(Icons.vpn_key),
                        labelText:'密碼',
                        hintText: '請輸入密碼',
                      ),
                    ),
                  ),
                ],
              ),
              Row
              (
                mainAxisAlignment: MainAxisAlignment.center,
                children:const <Widget>
                [
                  SizedBox
                  (
                    width:300,
                    child:TextField
                    (
                      obscureText:true,
                      decoration: InputDecoration
                      (
                        prefixIcon: Icon(Icons.key),
                        labelText:'驗證密碼',
                        hintText: '請再一次輸入密碼',
                      ),
                    ),
                  ),
                ],
              ),
              Row
              (
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>
                [
                  SizedBox
                  (
                    height:48.0,
                    width:150,
                    child:TextButton
                    (
                      child:const Text
                      (
                        '註冊',
                        style:TextStyle(color:Colors.green),
                      ),
                      onPressed: ()
                      {
                        Navigator.push
                        (
                          context,MaterialPageRoute(builder: (context)=>const MyPage1())
                        );
                      },
                    ),
                  ),
                ],
              ),
              Row
              (
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>
                [
                  SizedBox
                  (
                    height: 48.0,
                    child:TextButton
                    (
                      child:const Text('第三方註冊?'),
                      onPressed: ()
                      {
                        Navigator.push
                        (
                          context,MaterialPageRoute(builder: (context)=>const ThirdEntrance())
                        );
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
