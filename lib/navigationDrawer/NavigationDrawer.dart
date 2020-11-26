import 'package:flutter/material.dart';
import 'package:ejercicio4_dart/routes/PageRoutes.dart';
import 'package:ejercicio4_dart/widgets/CreateDrawerHeader.dart';
import 'package:ejercicio4_dart/widgets/CreateDrawerBodyItem.dart';

class NavigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          createDrawerHeader(),
          createDrawerBodyItem(
            icon: Icons.home,
            text: 'Lista de usuarios',
            onTap: () => Navigator.pushReplacementNamed(
                context, PageRoutes.listaUsuarios),
          ),
          /*createDrawerBodyItem(
            icon: Icons.account_circle,
            text: 'Resultado Contador',
            onTap: () =>
                Navigator.pushReplacementNamed(context, PageRoutes.profile),
          ),
          createDrawerBodyItem(
            icon: Icons.event_note,
            text: 'Events',
            onTap: () =>
                Navigator.pushReplacementNamed(context, PageRoutes.event),
          ),
          Divider(),
          createDrawerBodyItem(
            icon: Icons.notifications_active,
            text: 'Notifications',
            onTap: () => Navigator.pushReplacementNamed(
                context, PageRoutes.notification),
          ),
          createDrawerBodyItem(
            icon: Icons.contact_phone,
            text: 'Contact Info',
            onTap: () =>
                Navigator.pushReplacementNamed(context, PageRoutes.contact),
          ),*/

          ListTile(
            title: Text('App version 1.0.0'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
