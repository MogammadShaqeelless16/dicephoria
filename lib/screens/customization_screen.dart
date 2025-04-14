import 'package:flutter/material.dart';

class CustomizationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Customization')),
      body: ListView(
        children: [
          ListTile(
            title: Text('Dice Skins'),
            onTap: () {
              // Navigate to dice skins screen
            },
          ),
          ListTile(
            title: Text('Character Outfits'),
            onTap: () {
              // Navigate to outfits screen
            },
          ),
        ],
      ),
    );
  }
}