import 'package:ejercicio4_dart/models/Datos.dart';
import 'package:http/http.dart' as http;


String url = 'https://randomuser.me/api/?results=10';

Future<Result> getResult() async{
  final response = await http.get('https://randomuser.me/api/?results=10');
  return resultsFromJson(response.body);
}