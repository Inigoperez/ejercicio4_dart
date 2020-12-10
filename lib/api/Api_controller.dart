import 'package:ejercicio4_dart/models/Datos.dart';
import 'package:http/http.dart' as http;

Future<Usuarios> getUsers() async {
  final response = await http.get('http://randomuser.me/api/?results=10');
  return usuariosFromJson(response.body);
}
