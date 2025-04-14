import 'package:flutter/material.dart';
import '../models/dice_model.dart'; // Import the Dice model

class DiceWidget extends StatelessWidget {
  final Dice dice;

  DiceWidget({required this.dice});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/dice_${dice.skin}_${dice.value}.png',
      width: 50,
      height: 50,
    );
  }
}