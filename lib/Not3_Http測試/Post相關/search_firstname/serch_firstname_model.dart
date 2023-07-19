import 'dart:convert';
import 'dart:developer';
// import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class LoginModel {
  final String first_name;

  const LoginModel({required this.first_name});
  factory LoginModel.fromJson(Map<String, dynamic> json) {
    return LoginModel(
      //API return
      first_name: json['first_name'],

    );
  }
}

Future<List<dynamic>> createLogin(String enter_firstname) async {
  final response = await http.post(
    Uri.parse('http://120.126.16.222/gardeners/search'),
    headers: <String, String>{'Content-Type': 'application/json'},
    body: jsonEncode(<String, String>{
      //input
      'enter_firstname': enter_firstname,
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
