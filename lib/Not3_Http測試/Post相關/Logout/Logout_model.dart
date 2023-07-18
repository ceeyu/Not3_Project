import 'dart:convert';
import 'dart:developer';
// import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class LoginModel  
{
  final String accessToken;
  final String ipAddress;
  const LoginModel({required this.accessToken, required this.ipAddress});
  factory LoginModel.fromJson(Map<String, dynamic> json) {
    return LoginModel(
      //API return
      accessToken: json['account'],
      ipAddress: json['access_token'],
    );
  }
}
Future<List<dynamic>> createLogin(String account) async {
  final response = await http.post(
    Uri.parse('http://120.126.16.222/gardeners/logout'), 
    headers: <String, String>{'Content-Type': 'application/json'},
    body: jsonEncode(<String, String>{
      //input
      'account': account,
      //'password': password,
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
