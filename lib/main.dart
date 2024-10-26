import 'package:flutter/material.dart';
import 'screens/login_screen.dart'; // Importando a tela de login

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'To Do List',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: LoginScreen(), // Tela inicial do aplicativo
    );
  }
}
