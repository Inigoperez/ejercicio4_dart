import 'package:ejercicio4_dart/models/Datos.dart';
import 'package:flutter/material.dart';
import 'package:ejercicio4_dart/api/Api_controller.dart';
import 'dart:core';

Widget createListUsers() {
  return FutureBuilder<Usuarios>(
      future: getUsers(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.data == null) {
            return Column(
              children: [
                Center(
                  child: Text('NO DATA'),
                ),
              ],
            );
          } else {
            final List<Result> resultados = snapshot.data.results;
            final List<Widget> listaDevolver = new List<Widget>();
            for (int i = 0; i < resultados.length; i++) {
              print(resultados[i].name.title);
              listaDevolver.add(
                new Card(
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(resultados.length.toString()),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.network(resultados[i].picture.medium),
                      ),
                      Center(
                        child: Text(resultados[i].name.title.toString() +
                            " " +
                            resultados[i].name.first.toString() +
                            " " +
                            resultados[i].name.last.toString()),
                      ),
                      Icon(
                        Icons.favorite,
                        color: Colors.grey,
                        size: 30.0,
                        semanticLabel: 'Favoritos',
                      ),
                    ],
                  ),
                ),
              );
              print(listaDevolver[i]);
            }
            return listaDevolver;
            //return ListView(
            //  children: <Widget>[listaDevolver],
            //);
            /*for(Result datos in snapshot.data.results){
            return new Card(
              child: Row(
                mainAxisAlignment : MainAxisAlignment.spaceAround,
                children: [
                  //print(datos.name.title+" "+datos.name.first+" "+datos.name.last);
                  Text(resultados.length.toString()),
                  Image.network(datos.picture.medium),
                  Center(
                    child: Text(datos.name.title.toString()+" "+datos.name.first.toString()+" "+datos.name.last.toString()),
                  ),
                  Icon(Icons.favorite,
                      color: Colors.pink,
                      size: 30.0,
                      semanticLabel: 'Text to announce in accessibility modes'
                  ),  
                ],
              ),
            );
          }*/
          }
        } else if (snapshot.connectionState == ConnectionState.none) {
          return Column(
            children: [
              Center(
                child: Text('ERROR'),
              ),
            ],
          );
        } else {
          return Column(
            children: [
              Center(
                child: CircularProgressIndicator(), //Loadin
              ),
            ],
          );
        }
      });
}
