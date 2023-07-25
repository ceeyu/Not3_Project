/*
import 'dart:convert';
import 'dart:developer';
// import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class LoginModel {
  final String uuid;
  final String roomToken;
  final String appIdentifier;

  const LoginModel(
      {required this.roomToken,
      required this.appIdentifier,
      required this.uuid});
  factory LoginModel.fromJson(Map<String, dynamic> json) {
    return LoginModel(
      //API return
      //roomData: json['roomData'],
      uuid: json['roomData']['uuid'],
      roomToken: json['roomToken'],
      appIdentifier: json['appIdentifier'],
    );
  }
}

Future<List<dynamic>> createLogin(String region) async {
  final response = await http.post(
    Uri.parse('http://120.126.16.222/fastboards/create-room'),
    headers: <String, String>{'Content-Type': 'application/json'},
    body: jsonEncode(<String, String>{
      //input
      'region': region,
      //'receiver_account': receiver_account,
    }),
  );
  if (response.statusCode >= 200 && response.statusCode < 300) {
    List<dynamic> body = jsonDecode(response.body);
    return body;
  } else {
    log(response.body);
    log('${response.statusCode}');
    throw Exception('${response.reasonPhrase},${response.statusCode}');
  }
}
*/

// /*
import 'dart:convert';
import 'package:http/http.dart' as http;

class LoginModel {
  final String uuid;
  final String roomToken;
  final String appIdentifier;

  const LoginModel({
    required this.roomToken,
    required this.appIdentifier,
    required this.uuid,
  });

  factory LoginModel.fromJson(Map<String, dynamic> json) {
    return LoginModel(
      uuid: json['roomData']['uuid'],
      roomToken: json['roomToken'],
      appIdentifier: json['appIdentifier'],
    );
  }
}

Future<List<LoginModel>> createLogin(String region) async {
  final response = await http.post(
    Uri.parse('http://120.126.16.222/fastboards/create-room'),
    headers: <String, String>{'Content-Type': 'application/json'},
    body: jsonEncode(<String, String>{
      'region': region,
    }),
  );
  if (response.statusCode >= 200 && response.statusCode < 300) {
    List<dynamic> body = jsonDecode(response.body);
    List<LoginModel> loginModels = body
        .map((item) => LoginModel.fromJson(item))
        .toList(); // 轉換為List<LoginModel>
    return loginModels;
  } else {
    throw Exception('${response.reasonPhrase},${response.statusCode}');
  }
}
//*/