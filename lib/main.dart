// main.dart
import 'package:flutter/material.dart';
import 'screens/main_menu.dart';

void main() {
  runApp(DiceDuelsApp());
}

class DiceDuelsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dice Duels',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainMenuScreen(),
    );
  }
}