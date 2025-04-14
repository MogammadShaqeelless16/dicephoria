import 'package:flutter/material.dart';

class PauseScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Paused')),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context); // Resume game
            },
            child: Text('Resume'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.popUntil(context, (route) => route.isFirst); // Go to main menu
            },
            child: Text('Exit'),
          ),
        ],
      ),
    );
  }
}