// ignore: file_names
import 'package:flutter/material.dart';

class LeafPage extends StatefulWidget 
{
  const LeafPage({super.key});
  //const LeafPage({super.key});
  @override
  //ignore: library_private_types_in_public_api
  _LeafPageState createState()=>_LeafPageState();
}
class _LeafPageState extends State<LeafPage>
{
  @override
  Widget build(BuildContext context) 
  {
    return const Scaffold
    (
      body:Center
      (
        child: Text("葉子")
      )
    );
  }

}