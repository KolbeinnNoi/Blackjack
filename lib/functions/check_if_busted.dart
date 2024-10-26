
void main (){


bool CheckIfBusted(List<int> hand) {
  int handScore = CalculateScore(hand);
  return handScore > 21;
}

int CalculateScore(List<int> hand) {
  int score = 0;
  bool firstAceAsEleven = true;

  for (int card in hand) {
    if (card == 1) {
      if (firstAceAsEleven) {
        score += 11;
        firstAceAsEleven = false;
      } else {
        score += 1;
      }
    } else if (card >= 11 && card <= 13) {
      score += 10;
    } else {
      score += card;
    }
  }

  return score;
}

}