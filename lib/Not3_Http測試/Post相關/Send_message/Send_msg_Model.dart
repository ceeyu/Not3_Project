import 'dart:convert';
import 'dart:developer';
// import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class LoginModel  
{
  final String senderID;
  final String recieverID;
  final String chat_data;
  const LoginModel({required this.senderID, required this.recieverID,  required this.chat_data});
  factory LoginModel.fromJson(Map<String, dynamic> json) {
    return LoginModel(
      //API return
      senderID: json['sender_id'],
      recieverID: json['receiver_id'],
      chat_data: json['chat_data'],

    );
  }
}
Future<List<dynamic>> createLogin(String senderID, String recieverID, String chat_data) async {
  final response = await http.post(
    Uri.parse('http://120.126.16.222/chats/send-message'), 
    headers: <String, String>{'Content-Type': 'application/json'},
    body: jsonEncode(<String, String>{
      //input
      'sender_account': senderID,
      'receiver_account': recieverID,
      'chat_data':chat_data,

    }),
  );
  if (response.statusCode >= 200&& response.statusCode<300) 
  {
    List<dynamic> body = jsonDecode(response.body);
    return body;
  } else {
    log(response.body);
    log('${response.statusCode}');
    throw Exception('${response.reasonPhrase},${response.statusCode}');
  }
}
