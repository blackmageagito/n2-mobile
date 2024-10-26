import 'package:flutter/material.dart';
import 'login_screen.dart'; // Importando a tela de login

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Configurações de Usuário'),
        actions: [
          IconButton(
            icon: Icon(Icons.logout), // Ícone de logout
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        LoginScreen()), // Navega para a LoginScreen
              );
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Nome'),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Email'),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Instituição de Ensino'),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Função'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Ação de salvar os dados
                print("Dados salvos!");
              },
              child: Text('SALVAR'),
            ),
          ],
        ),
      ),
    );
  }
}
