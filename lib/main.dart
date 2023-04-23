import "package:flutter/material.dart";
import "package:flutter_project/HomePage.dart";
//import 'package:flutter_project/MyPage.dart';
//import "package:flutter_project/Login.dart";
//import "package:flutter_project/SignUp.dart";
//import "package:flutter_project/ThirdEntrance.dart";
void main()=>runApp(const MyApp());
class MyApp extends StatelessWidget
{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context)
  {
    // ignore: prefer_const_constructors
    return MaterialApp
    (
      title: "Not3 App",
      debugShowCheckedModeBanner: false,
      home: const Center
      (
        child: Scaffold
        (
          body:HomePage()
        ),
      ),
    );
  }
}