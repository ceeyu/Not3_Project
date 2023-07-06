// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter_project/Login.dart';
import 'package:flutter_project/SignUp.dart';
import 'package:flutter_project/MyPage1.dart';
//import 'package:flutter_screenutil/flutter_screenutil.dart';
class HomePage extends StatelessWidget 
{
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) 
  {
    // ScreenUtil.init
    // (
    //   BoxConstraints
    //   (
    //     maxWidth: MediaQuery.of(context).size.width,
    //     maxHeight: MediaQuery.of(context).size.height,
    //   ) as BuildContext,
    //   designSize:const Size(360,690),
    // );
    return Scaffold
    (
      appBar: AppBar
      (
        //leading:const Icon(Icons.abc),
        title:const Center(child: Text("Not3首頁")),
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
                children:
                  const 
                  [
                    Text("Welcome!!",style: TextStyle(color: Colors.black45,fontSize: 30,fontWeight: FontWeight.bold))
                  ],
              ),
              Row
              (
                mainAxisAlignment: MainAxisAlignment.center,
                children: 
                [
                  Container
                  (
                    alignment: Alignment.topCenter,
                    child:Image.asset('assets/images/Logo.png',width: 300,height: 300),
                  ),
                ],
              ),
              Row
              (
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: 
                [
                  Container
                  (
                    height: 60,
                    width:150,
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration
                    (
                      color:const Color.fromARGB(222, 37, 191, 10),borderRadius: BorderRadius.circular(10),
                    ),
                    child:TextButton
                    (
                      onPressed: ()
                      {
                        Navigator.push
                        (
                          context,MaterialPageRoute(builder:(context)=> const LoginPage())
                        );
                      },
                      child:const Text
                      (
                        '登錄',
                        style: TextStyle(color: Colors.white, fontSize: 15)
                      ),
                    ),
                  ),
                  Container
                  (
                    height: 60,
                    width:150,
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration
                    (
                      color:const Color.fromARGB(222, 37, 191, 10),borderRadius: BorderRadius.circular(10),
                    ),
                    child:TextButton
                    (
                      onPressed: ()
                      {
                        Navigator.push
                        (
                          context,MaterialPageRoute(builder:(context)=> const SignUpPage())
                        );
                      },
                      child:const Text
                      (
                        '註冊',
                        style: TextStyle(color: Colors.white, fontSize: 15)
                      ),
                    ),
                  ),
                ],
              ),
              Row
              (
                mainAxisAlignment: MainAxisAlignment.center,
                children: 
                [
                  SizedBox
                  (
                    height:48.0,
                    child:TextButton
                    (
                      child: const Text("查看登錄後進去的頁面"),
                      onPressed: ()
                      {
                        Navigator.push
                        (
                          context,MaterialPageRoute(builder:(context)=>const MyPage1())
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