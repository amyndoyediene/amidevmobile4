import 'package:amimobile4/pages/acceuil1.dart';
import 'package:amimobile4/pages/acceuil2.dart';
import 'package:amimobile4/pages/listepage.dart';
import 'package:amimobile4/pages/updatepage.dart';
import 'package:amimobile4/pages/contentpage.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        buttonTheme: ButtonThemeData(
          textTheme: ButtonTextTheme.primary,
        ),
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/acceuil2': (context) => Acceuil(),
        '/listepage': (context) => TaskListPage(),
          '/contentpage': (context) => CreateTaskPage(),
          '/updatepage': (context) => updatePage(),
        // '/formulaire': (context) => Home(),
        //  '/contactList': (context) => ContactList(),
      },
    );
  }
}
