import 'package:flutter/material.dart';

class PasswordRecoveryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Recuperar Senha')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(decoration: InputDecoration(labelText: 'Email')),
            ElevatedButton(
              onPressed: () {
                // Ação de recuperação de senha simulada
                print("Recuperação de senha");
              },
              child: Text('Recuperar Senha'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Voltar para o login'),
            ),
          ],
        ),
      ),
    );
  }
}
