import 'package:flutter/material.dart';
import 'game_screen.dart';

class LevelSelectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Select Level')),
      body: ListView(
        children: [
          ListTile(
            title: Text('Level 1 - The Playground'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => GameScreen(opponent: 'Tommy')),
              );
            },
          ),
          ListTile(
            title: Text('Level 2 - The Jungle Gym'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => GameScreen(opponent: 'Emma')),
              );
            },
          ),
        ],
      ),
    );
  }
}