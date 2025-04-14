import 'package:flutter/material.dart';

class StoreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Store')),
      body: ListView(
        children: [
          ListTile(
            title: Text('Extra Rolls'),
            subtitle: Text('Watch an ad to earn extra rolls'),
            onTap: () {
              // Add ad logic here
            },
          ),
          ListTile(
            title: Text('Score Boosts'),
            subtitle: Text('Watch an ad to earn score boosts'),
            onTap: () {
              // Add ad logic here
            },
          ),
        ],
      ),
    );
  }
}