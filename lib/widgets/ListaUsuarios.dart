import 'package:ejercicio4_dart/models/Datos.dart';
import 'package:flutter/material.dart';
import 'package:ejercicio4_dart/api/Api_controller.dart';


Widget createListUsers() {
  return FutureBuilder<Usuarios>(
    future: getUsers(),
    builder: (context, snapshot) {
      if (snapshot.connectionState == ConnectionState.done) {
        if (snapshot.data == null) {
          return Text('no data');  
        }else {
          final List<Result> resultados = snapshot.data.results;
          for(Result datos in snapshot.data.results){
            return Card(
              child: Row(
                children: [
                  //print(datos.name.title+" "+datos.name.first+" "+datos.name.last);
                  Text(resultados.length.toString()),
                  Image.network(datos.picture.thumbnail),
                  Text(datos.name.title.toString()+" "+datos.name.first.toString()+" "+datos.name.last.toString()),
                  Icon(Icons.favorite,
                    color: Colors.pink,
                    size: 30.0,
                    semanticLabel: 'Text to announce in accessibility modes'
                  ),
                ],
              ),
            );
          }
        }
      }else if (snapshot.connectionState == ConnectionState.none) {
        return Text('Error'); // error
      }else {
        return CircularProgressIndicator(); // loading
      }
    }
);
}