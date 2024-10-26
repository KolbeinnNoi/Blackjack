import "score_function.dart";

/*
Create a function called CheckIfBusted.

This function should accept a List
of integers (hand of cards) calculate the score, and return true if busted
ie. score is above 21, and false if not busted.

NOTE: You can work on this function before "Score function" is completed,
just make sure to merge them once you are done.

Example inputs

[10 11 1] -> False
[13 13 7] -> True
[1 1 2] -> True
...ie use output of score function and check if busted.
 */


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
