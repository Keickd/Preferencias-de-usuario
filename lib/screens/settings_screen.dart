import 'package:flutter/material.dart';
import 'package:preferences_app/share_preferences/preferences.dart';
import 'package:preferences_app/widgets/side_menu.dart';

class SettingsScreen extends StatefulWidget {
  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Settings'),
        ),
        drawer: const SideMenu(),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Ajustes',
                  style: TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                const Divider(),
                SwitchListTile.adaptive(
                  value: Preferences.isDarkmode,
                  onChanged: (value) {
                    Preferences.isDarkmode = value;
                    setState(() {});
                  },
                  title: const Text('Darkmode'),
                ),
                const Divider(),
                RadioListTile<int>(
                  value: 1,
                  groupValue: Preferences.gender,
                  onChanged: (value) {
                    Preferences.gender = value ?? 1;
                    setState(() {});
                  },
                  title: const Text('Masculino'),
                ),
                RadioListTile<int>(
                  value: 2,
                  groupValue: Preferences.gender,
                  onChanged: (value) {
                    Preferences.gender = value ?? 2;
                    setState(() {});
                  },
                  title: const Text('Femenino'),
                ),
                const Divider(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextFormField(
                    initialValue: Preferences.name,
                    decoration: const InputDecoration(
                      labelText: 'Nombre',
                      helperText: 'Nombre de usuario',
                    ),
                    onChanged: (value) {
                      Preferences.name = value;
                      setState(() {});
                    },
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
