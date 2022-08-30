import 'package:flutter/material.dart';
import 'package:preferences_app/screens/screens.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MaterialApp',
      initialRoute: 'home',
      routes: {
        'home': (_) => HomeScreen(),
        'settings': (_) => SettingsScreen()
      },
    );
  }
}