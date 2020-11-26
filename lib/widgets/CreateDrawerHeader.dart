import 'package:flutter/material.dart';

Widget createDrawerHeader() {
  return DrawerHeader(
      margin: EdgeInsets.zero,
      padding: EdgeInsets.zero,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
            Colors.blue,
            Colors.orange,
            Colors.green
          ],
              stops: [
            0.3,
            0.5,
            0.8,
          ],
              begin: FractionalOffset.topCenter,
              end: FractionalOffset.bottomCenter)),
      child: Stack(children: <Widget>[
        Positioned(
            bottom: 12.0,
            left: 16.0,
            child: Text("Iñigo Perez",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500))),
      ]));
}
