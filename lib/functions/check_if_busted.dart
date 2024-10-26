import "score_function.dart";



int CalculateScore(List<int> hand) {
  int score = 0;
  bool ace = false;

  for (int card in hand) {
    if (card == 1) {
      if (!ace) {
        score += 11;
        ace = true;
      } else {
        score += 1;
      }
    } else if (card >= 10) {
      score += 10;
    } else {
      score += card;
    }

    // Adjust score if it exceeds 21 and there's an ace counted as 11
    if (ace && score > 21) {
      score -= 10;
      ace = false;
    }
  }

  // Check if busted
  if (score > 21) {
    return -1;  // Indicating busted
  }

  return score;
}

