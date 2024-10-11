import 'package:amimobile4/pages/contentpage.dart';
import 'package:amimobile4/pages/updatepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TaskListPage(),
    );
  }
}

class TaskListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1B1F5C), // Couleur d'arrière-plan bleu foncé
      appBar: AppBar(
        title: Text('Task List', style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xFF1B1F5C), // Même couleur que le fond
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(Icons.favorite_border, color: Colors.pink),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.calendar_today, color: Colors.red),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: EdgeInsets.symmetric(vertical: 20),
              children: [
                TaskItem(title: 'Eat lunch at 12pm'),
                TaskItem(title: 'Take a nap at 12:30 pm'),
                TaskItem(title: 'Learn Python at 1:30 pm'),
                TaskItem(title: 'Exercise at 5 pm'),
              ],
            ),
          ),
          // Deux boutons en bas
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    // Action pour le bouton de gauche
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => updatePage()),
                    );
                  },
                  child: Icon(Icons.add),
                  backgroundColor: Color(0xFF00CFFF),
                ),
                FloatingActionButton(
                  onPressed: () {
                    // Action pour le bouton de droite
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CreateTaskPage()),
                    );
                  },
                  child: Icon(Icons.settings),
                  backgroundColor: Color(0xFF00CFFF),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// Widget pour les items de la liste
class TaskItem extends StatelessWidget {
  final String title;

  TaskItem({required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Container(
        width: 219, // Largeur du rectangle
        height: 36, // Hauteur du rectangle
        decoration: BoxDecoration(
          color: Colors.white, // Couleur du fond du rectangle
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10), // Bord supérieur gauche arrondi
          ),
        ),
        child: Row(
          children: [
            Container(
              width: 26, // Largeur 26px
              height: 23, // Hauteur 23px
              decoration: BoxDecoration(
                color: Colors.lightBlue, // Couleur de fond
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(4), // Bord supérieur gauche arrondi
                ),
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: Text(
                title,
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
            ),
            IconButton(
              icon: Icon(Icons.favorite_border, color: Colors.pink),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.delete_outline, color: Colors.red),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
