import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Settings')),
      body: ListView(
        children: [
          SwitchListTile(
            title: Text('Sound Effects'),
            value: true,
            onChanged: (value) {},
          ),
          SwitchListTile(
            title: Text('Background Music'),
            value: true,
            onChanged: (value) {},
          ),
          ListTile(
            title: Text('Reset Progress'),
            onTap: () {
              // Add reset logic here
            },
          ),
        ],
      ),
    );
  }
}