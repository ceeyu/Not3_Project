// ignore: file_names
import 'package:flutter/material.dart';

class FruitsPage extends StatefulWidget 
{
  const FruitsPage({super.key});
  //const LeafPage({super.key});
  @override
  //ignore: library_private_types_in_public_api
  _FruitsPageState createState()=>_FruitsPageState();
}
class _FruitsPageState extends State<FruitsPage>
{
  @override
  Widget build(BuildContext context) 
  {
    return const Scaffold
    (
      body:Center
      (
        child: Text("檢視果實")
      )
    );
  }
}
