// ignore: file_names
import 'package:flutter/material.dart';
class ThirdEntrance extends StatelessWidget 
{
  const ThirdEntrance({super.key});
  @override
  Widget build(BuildContext context) 
  {
    return Scaffold
    (
      appBar: AppBar
      (
        title:const Center(child: Text("第三方登入")),
        backgroundColor: Colors.green
      ),
      body: SingleChildScrollView
      (
        child:Row
        (
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>
          [
            Container
            (
              padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
              child: const Image
              (
                image:AssetImage('assets/images/fb.png'),
              ),
            ),
            Container
            (
              padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
              child: const Image
              (
                image:AssetImage('assets/images/google.png'),
              ),
            ),
            Container
            (
              padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
              child: const Image
              (
                image:AssetImage('assets/images/apple.png'),
              ),
            ),

          ],
        ),
      ),
    );
  }
}