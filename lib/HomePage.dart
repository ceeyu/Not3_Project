// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter_project/Login.dart';
import 'package:flutter_project/SignUp.dart';
import 'package:flutter_project/MyPage.dart';

class HomePage extends StatelessWidget 
{
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) 
  {
    return Scaffold
    (
      appBar: AppBar
      (
        //leading:const Icon(Icons.abc),
        title:const Center(child: Text("Not3首頁")),
        backgroundColor: Colors.green
      ),
      body: SingleChildScrollView
      (
        child: Column//直的
        (
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>
          [ 
            const Center
            (
              child:Text("Welcome!!",style: TextStyle(color: Colors.black45,fontSize: 30,fontWeight: FontWeight.bold)),
            ),
            Center
            (
              child:Container
              (
                alignment: Alignment.topCenter,
                child:Image.asset('assets/images/Logo.png',width: 150,height: 150),
              ),
            ),
            Center
            (
              child:Container
              (
                height: 60,
                width: 150,
                alignment:Alignment.center,
                decoration: BoxDecoration
                (
                  color: const Color.fromARGB(222, 37, 191, 10), borderRadius: BorderRadius.circular(10),
                ),
                padding: const EdgeInsets.all(8.0),
                child: TextButton
                (
                  onPressed: () 
                  {
                    Navigator.push
                    (
                      context,MaterialPageRoute(builder:(_)=> const LoginPage())
                    );
                  },
                  child: const Text
                  (
                    '登錄',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
              ),
              // ignore: avoid_unnecessary_containers
            ),
            Center
            (
              child:Container
              (
                height: 60,
                width: 150,
                decoration: BoxDecoration
                (
                  color: const Color.fromARGB(222, 37, 191, 10), borderRadius: BorderRadius.circular(10)
                ),

                child:TextButton
                (
                  onPressed: () 
                  {
                    Navigator.push
                    (
                      context,MaterialPageRoute(builder:(_)=> const SignUpPage())
                    );
                  },
                  child: const Text
                  (
                    '註冊',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
              ),
            ),
            Center
            (
              child:SizedBox
              (
                //width: MediaQuery.of(context).size.width - 48.0,
                height: 48.0,
                child: TextButton
                (
                  child: const Text("查看登錄後進去的頁面"),
                  onPressed: () 
                  {                  
                    Navigator.push
                    (
                      context,MaterialPageRoute(builder:(_)=> const MyPage())
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