import 'package:ejercicio4_dart/widgets/ListaUsuarios.dart';
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
        child: ListView(
          children: [ListaUsuarios()],
        ),
      ),
    );
  }
}
