// ignore: file_names
//import 'package:flutter/foundation.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import "package:flutter_project/ThirdEntrance.dart";
class LoginPage extends StatefulWidget
{
  const LoginPage({super.key});
  @override
  // ignore: library_private_types_in_public_api
  _LoginPageState createState()=>_LoginPageState();
}
class _LoginPageState extends State<LoginPage> 
{
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
      body: SafeArea
      (
        child:Container
        (
          padding:const EdgeInsets.all(16.0),
          child: Column
          (
            mainAxisAlignment: MainAxisAlignment.center,
            children:
            [
              Row
              (
                mainAxisAlignment: MainAxisAlignment.center,
                children:const<Widget>
                [
                  SizedBox
                  (
                    width:300,
                    height:80,
                    child: TextField
                    (
                      decoration:InputDecoration
                      (
                        prefixIcon: Icon(Icons.person),
                        contentPadding:EdgeInsets.symmetric(vertical: 20),
                        labelText: "帳號",
                        hintText: "請輸入Email",
                      ),
                    ),
                  ),
                ],
              ),
              Row
              (
                mainAxisAlignment: MainAxisAlignment.center,
                children:const<Widget>
                [
                  SizedBox
                  (
                    width:300,
                    height:80,
                    child: TextField
                    (
                      obscureText: true,
                      decoration: InputDecoration
                      (
                        prefixIcon: Icon(Icons.lock),
                        labelText: "密碼",
                        hintText: "請輸入密碼",
                      ),
                    ),
                  ),
                ],
              ),
              Row
              (
                mainAxisAlignment: MainAxisAlignment.center,
                children:<Widget>
                [
                  SizedBox
                  (
                    //width: MediaQuery.of(context).size.width - 48.0,
                    height: 48.0,
                    child: TextButton
                    (
                      child: const Text("登入"),
                      onPressed: () 
                      {
                        _LoginButtonOnPressed();
                      },
                    ),
                  ),
                ],
              ),
              Row
              (
                mainAxisAlignment: MainAxisAlignment.center,
                children:<Widget>
                [
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
                          context,MaterialPageRoute(builder:(context)=> const ThirdEntrance())
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
  // ignore: non_constant_identifier_names
  void _LoginButtonOnPressed()
  {
    if(kDebugMode)
    {
      print("The Login Button has been clicked!");
    }
  }
}