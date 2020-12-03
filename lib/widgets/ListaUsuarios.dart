import 'package:ejercicio4_dart/models/Datos.dart';
import 'package:flutter/material.dart';
import 'package:ejercicio4_dart/api/Api_controller.dart';


Widget createListUsers() {
  return FutureBuilder<Result>(
    future: getResult(),
    builder: (context, snapshot) {
      if (snapshot.connectionState == ConnectionState.done) {
        if (snapshot.data == null) {
          return Text('no data');
        }else {
          return Text('${snapshot.data.name}');
        }
      }else if (snapshot.connectionState == ConnectionState.none) {
        return Text('Error'); // error
      }else {
        return CircularProgressIndicator(); // loading
      }
    }
);
}