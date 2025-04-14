import 'package:flutter/material.dart';

class AdRewardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Reward')),
      body: Center(
        child: Column(
          children: [
            Text('You earned a reward!'),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Close the screen
              },
              child: Text('Claim'),
            ),
          ],
        ),
      ),
    );
  }
}