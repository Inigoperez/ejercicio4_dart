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
            Text(
              'You have pushed the button this many times:',
            ),
          ],
        ),
      ),
    );
  }
}