import 'package:ejercicio4_dart/models/Datos.dart';
import 'package:http/http.dart' as http;


String url = 'https://randomuser.me/api/?results=10';

Future<Usuarios> getUsuarios() async{
  final response = await http.get('$url');
  return usuariosFromJson(response.body);
}