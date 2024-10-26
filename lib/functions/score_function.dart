import 'card_namer.dart';
import 'deck_of_cards.dart';

int CalculateScore(List<int> hand){
  int score = 0;
  bool ace = false;


  for(int card in hand) {
    if (card == 1) {
      if(!ace) {
        score += 11;
        ace = true;
      } else {
        score += 1;
      }
    }
    else if (card >= 10) {
      score += 10;
    } else {
      score += card;
    }
    if (ace && score > 21) {
      score -= 10;
    }
  }

  return score;
}
