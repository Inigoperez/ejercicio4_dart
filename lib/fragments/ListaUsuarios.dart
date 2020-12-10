import 'package:ejercicio4_dart/model/User.dart';
import 'package:ejercicio4_dart/services.dart';
import 'package:flutter/material.dart';
import 'package:ejercicio4_dart/navigationDrawer/NavigationDrawer.dart';

class ListaUsuarios extends StatelessWidget {
  static const String routeName = '/listaUsuarios';

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("Lista de usuarios"),
      ),
      drawer: NavigationDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FutureBuilder<List<dynamic>>(
              future: loadUsers(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  for (int i = 0; i < snapshot.data.length; i++) {
                    return Card(
                      child: Text(snapshot.data[i]['name']['first'].toString()),
                    );
                  }
                  ;
                } else if (snapshot.hasError) {
                  return Text("${snapshot.error}");
                }
                // Por defecto, muestra un loading spinner
                return CircularProgressIndicator();
              },
            ),
          ],
        ),
      ),
    );
  }
}
