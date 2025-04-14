class ScoreCalculator {
  static int calculateScore(List<int> dice, String combination) {
    switch (combination) {
      case 'Three of a Kind':
        return _calculateThreeOfAKind(dice);
      case 'Full House':
        return _calculateFullHouse(dice);
      default:
        return 0;
    }
  }

  static int _calculateThreeOfAKind(List<int> dice) {
    // Logic to check for three of a kind
    return 0;
  }

  static int _calculateFullHouse(List<int> dice) {
    // Logic to check for full house
    return 0;
  }
}