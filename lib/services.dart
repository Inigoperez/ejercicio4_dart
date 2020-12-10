import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
import 'package:flutter/material.dart';
import 'model/User.dart';

String url = 'https://randomuser.me/api/?results=1';

Future<List<dynamic>> loadUsers() async {
  final response = await http.get(url);
  if (response.statusCode == 200) {
    var jsonResponse = convert.jsonDecode(response.body);
    return jsonResponse;
  }
  return null;
}
