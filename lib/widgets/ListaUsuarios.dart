import 'package:ejercicio4_dart/models/Datos.dart';
import 'package:flutter/material.dart';



Widget createListUsers() {
  return FutureBuilder<Usuarios>(
    future: getUsuarios(),
    builder: (context, snapshot) {
        return Text('${snapshot.data.title}');
    }
);
}