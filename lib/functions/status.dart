import 'score_function.dart';
import 'card_namer.dart';

void main (){

  void Status(List<int> playerHand, List<int> houseHand) {
    int playerScore = score(playerHand);
    int visibleHouseScore = score([houseHand[0]]);


    String playerCards = playerHand.map((card) => cardNamer(card)).join(', ');
    print("Your Hand: $playerCards");
    print("Your Score: $playerScore");


    String houseVisibleCard = cardNamer(houseHand[0]);
    print("House's Hand: $houseVisibleCard, [Hidden]");
    print("House's Visible Score: $visibleHouseScore");
  }

  int score(List<int> hand) {

    return hand.reduce((a, b) => a + b);
  }


  String cardNamer(int card) {
    4
    return "Card $card";
  }
}