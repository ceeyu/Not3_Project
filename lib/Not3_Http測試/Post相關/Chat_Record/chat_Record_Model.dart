import 'dart:convert';
import 'dart:developer';
// import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class LoginModel  
{
  final String sender_firstname;
  final String receiver_firstname;
  final String send_time;
  final String chat_data;
  const LoginModel({required this.sender_firstname, required this.receiver_firstname,  required this.send_time,  required this.chat_data});
  factory LoginModel.fromJson(Map<String, dynamic> json) {
    return LoginModel(
      //API return
      sender_firstname: json['sender_firstname'],
      receiver_firstname: json['receiver_firstname'],
      send_time: json['send_time'],
      chat_data: json['chat_data'],

    );
  }
}
Future<List<dynamic>> createLogin(String senderID, String recieverID) async {
  final response = await http.post(
    Uri.parse('http://120.126.16.222/chats/record'), 
    headers: <String, String>{'Content-Type': 'application/json'},
    body: jsonEncode(<String, String>{
      //input
      'sender_account': senderID,
      'receiver_account': recieverID,
      

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
