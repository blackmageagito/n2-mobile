import 'package:flutter/material.dart';
import 'home_screen.dart'; // Importando a tela Home
import 'password_recovery_screen.dart'; // Importando a tela de recuperação de senha
import 'create_user_screen.dart'; // Importando a tela de criação de usuário

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Email'),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Senha'),
              obscureText: true,
            ),
            ElevatedButton(
              onPressed: () {
                // Navega para a Home
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                );
              },
              child: Text('Entrar'),
            ),
            TextButton(
              onPressed: () {
                // Navegar para a tela de criação de conta
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CreateUserScreen()),
                );
              },
              child: Text('Criar conta'),
            ),
            TextButton(
              onPressed: () {
                // Navegar para a tela de recuperação de senha
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PasswordRecoveryScreen()),
                );
              },
              child: Text('Recuperar senha'),
            ),
          ],
        ),
      ),
    );
  }
}
