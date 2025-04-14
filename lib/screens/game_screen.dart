import 'package:flutter/material.dart';
import 'dart:math';
import '../models/dice_model.dart';
import '../widgets/dice_widget.dart';
import 'results_screen.dart';

class GameScreen extends StatefulWidget {
  final String opponent;

  GameScreen({required this.opponent});

  @override
  _GameScreenState createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  List<Dice> dice = List.generate(5, (_) => Dice());
  int playerScore = 0;
  int opponentScore = 0;
  bool isPlayerTurn = true;

  void rollDice() {
    setState(() {
      dice.forEach((dice) => dice.value = Random().nextInt(6) + 1);
    });
  }

  void endTurn() {
    setState(() {
      isPlayerTurn = !isPlayerTurn;
    });
  }

  void calculateScore() {
    // Implement scoring logic here
  }

  void endGame() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ResultsScreen(
          playerScore: playerScore,
          opponentScore: opponentScore,
          opponent: widget.opponent,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Dice Duels - Game')),
      body: Column(
        children: [
          Text('Your Score: $playerScore'),
          Text('${widget.opponent} Score: $opponentScore'),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: dice.map((dice) => DiceWidget(dice: dice)).toList(),
          ),
          ElevatedButton(
            onPressed: rollDice,
            child: Text('Roll Dice'),
          ),
          ElevatedButton(
            onPressed: endTurn,
            child: Text('End Turn'),
          ),
        ],
      ),
    );
  }
}