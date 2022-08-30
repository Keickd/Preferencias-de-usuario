import 'package:flutter/material.dart';
import 'package:preferences_app/widgets/widgets.dart';

import '../share_preferences/preferences.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      drawer: SideMenu(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('isDarkmode: ${Preferences.isDarkmode}'),
          Divider(),
          Text('Genero: ${Preferences.gender}'),
          Divider(),
          Text('Nombre de usuario: ${Preferences.name}'),
          Divider()
        ],
      ),
    );
  }
}
