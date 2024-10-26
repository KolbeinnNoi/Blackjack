int CalculateScore(List<int> hand) {
  int score = 0;
  int aces = 0;
  
  for (int card in hand) {
    if (card == 1) {
      aces++;
      score += 11;
    } else if (card > 10) {
      score += 10;
    } else {
      score += card;
    }
  }
  
  while (score > 21 && aces > 0) {
    score -= 10;
    aces--;
  }
  
  return score;
}
