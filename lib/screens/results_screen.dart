import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  final int playerScore;
  final int opponentScore;
  final String opponent;

  ResultsScreen({required this.playerScore, required this.opponentScore, required this.opponent});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Results')),
      body: Center(
        child: Column(
          children: [
            Text('You scored: $playerScore'),
            Text('$opponent scored: $opponentScore'),
            Text(playerScore > opponentScore ? 'You Win!' : 'You Lose!'),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Go back to game screen
              },
              child: Text('Play Again'),
            ),
          ],
        ),
      ),
    );
  }
}