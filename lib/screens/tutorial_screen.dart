import 'package:flutter/material.dart';

class TutorialScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Tutorial')),
      body: Column(
        children: [
          Text('How to Play:'),
          Text('1. Roll the dice.'),
          Text('2. Hold the dice you want to keep.'),
          Text('3. Score points based on combinations.'),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context); // Go back to main menu
            },
            child: Text('Start Game'),
          ),
        ],
      ),
    );
  }
}