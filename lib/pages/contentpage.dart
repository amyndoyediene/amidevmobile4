import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CreateTaskPage(),
    );
  }
}

class CreateTaskPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1B1F5C), // Couleur de fond bleu foncé
      appBar: AppBar(
        title: Text('Create a task', style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xFF1B1F5C), // Même couleur que le fond
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 30),
            // Rectangle avec les champs de texte
            Container(
              width: 259,
              height: 325,
              decoration: BoxDecoration(
                color: Color(0xFF3B4270), // Couleur du rectangle
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(5.15),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Title', style: TextStyle(color: Colors.white)),
                        Text('Date', style: TextStyle(color: Colors.white)),
                      ],
                    ),
                    SizedBox(height: 20),
                    Expanded(
                      child: Container(
                        color: Colors.grey[300], // Simule une zone de texte grise
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 50),
            // Bouton "Save"
            ElevatedButton(
              onPressed: () {
                // Action du bouton
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF00CFFF), // Couleur du bouton "Save"
                padding: EdgeInsets.symmetric(horizontal: 100, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: Text(
                'Save',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
