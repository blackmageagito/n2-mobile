import 'package:flutter/material.dart';
import 'login.dart';
import 'esqueceuSenha.dart';
import 'criarUsuario.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Too-Doo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginScreen(),
      routes: {
        '/forgot-password': (context) => ForgotPasswordScreen(),
        '/create-account': (context) => CreateAccountScreen(),
      },
    );
  }
}
