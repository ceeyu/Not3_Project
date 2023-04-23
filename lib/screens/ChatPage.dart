// ignore: file_names
import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget 
{
  const ChatPage({super.key});
  //const LeafPage({super.key});
  @override
  //ignore: library_private_types_in_public_api
  _ChatPageState createState()=>_ChatPageState();
}
class _ChatPageState extends State<ChatPage>
{
  @override
  Widget build(BuildContext context) 
  {
    return const Scaffold
    (
      body:Center
      (
        child: Text("聊天室")
      )
    );
  }
}