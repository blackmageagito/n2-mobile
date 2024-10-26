import 'package:flutter/material.dart';

class CreateUserScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Criar Usuário')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(decoration: InputDecoration(labelText: 'Nome')),
            TextField(decoration: InputDecoration(labelText: 'Email')),
            TextField(
              decoration: InputDecoration(labelText: 'Senha'),
              obscureText: true,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Confirmar Senha'),
              obscureText: true,
            ),
            ElevatedButton(
              onPressed: () {
                // Ação de criar usuário simulada
                print("Usuário criado");
              },
              child: Text('Salvar'),
            ),
          ],
        ),
      ),
    );
  }
}
