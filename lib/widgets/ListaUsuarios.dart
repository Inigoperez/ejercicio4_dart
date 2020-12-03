import 'package:ejercicio4_dart/models/Datos.dart';
import 'package:flutter/material.dart';
import 'package:ejercicio4_dart/api/Api_controller.dart';


Widget createListUsers() {
  return FutureBuilder<Usuarios>(
    future: getUsers(),
    builder: (context, snapshot) {
      if (snapshot.connectionState == ConnectionState.done) {
        if (snapshot.data == null) {
          print(snapshot.data);
          return Text('no data');  
        }else {
          print(snapshot.data.results);
          return Text('${snapshot.data.results}');
        }
      }else if (snapshot.connectionState == ConnectionState.none) {
        return Text('Error'); // error
      }else {
        return CircularProgressIndicator(); // loading
      }
    }
);
}