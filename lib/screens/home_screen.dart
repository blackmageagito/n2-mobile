import 'package:flutter/material.dart';
import 'profile_screen.dart'; // Certifique-se de que o arquivo existe
import 'activities_screen.dart'; // Certifique-se de que o arquivo existe

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key); // Adicionando o parâmetro Key

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Activity> activities = [];
  final TextEditingController _controller = TextEditingController();

  void _addActivity(String activity) {
    if (activity.isNotEmpty) {
      setState(() {
        activities.add(Activity(name: activity, isDone: false));
      });
      _controller.clear();
    }
  }

  void _toggleActivity(Activity activity) {
    setState(() {
      activity.isDone = !activity.isDone;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('To-Do List'),
        actions: [
          IconButton(
            icon: const Icon(Icons.person),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfileScreen()),
              );
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: activities.length,
                itemBuilder: (context, index) {
                  return CheckboxListTile(
                    title: Text(activities[index].name),
                    value: activities[index].isDone,
                    onChanged: (value) {
                      _toggleActivity(activities[index]);
                    },
                  );
                },
              ),
            ),
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                labelText: 'Adicionar nova atividade',
                suffixIcon: IconButton(
                  icon: const Icon(Icons.add),
                  onPressed: () => _addActivity(_controller.text),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          const BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          const BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Atividades',
          ),
        ],
        onTap: (index) {
          if (index == 0) {
            // Permanece na Home
          } else {
            // Navega para ActivitiesScreen
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ActivitiesScreen()),
            );
          }
        },
      ),
    );
  }
}

class Activity {
  String name;
  bool isDone;

  Activity({required this.name, this.isDone = false});
}
