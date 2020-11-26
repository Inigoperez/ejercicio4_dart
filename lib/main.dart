import 'package:flutter/material.dart';

import 'fragments/ListaUsuarios.dart';
import 'package:ejercicio4_dart/routes/PageRoutes.dart';
import 'package:ejercicio4_dart/fragments/ListaUsuarios.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NavigationDrawer Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ListaUsuarios(),
      routes: {
        PageRoutes.listaUsuarios: (context) => ListaUsuarios(),
        /*PageRoutes.contact: (context) => ContactPage(),
          PageRoutes.event: (context) => EventPage(),
          PageRoutes.profile: (context) => ProfilePage(),
          PageRoutes.notification: (context) => NotificationPage(),*/
      },
    );
  }
}
