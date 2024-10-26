import "card_namer.dart";
import "score_function.dart";



  void Status(List<int> playerHand, List<int> houseHand) {
    int playerScore = CalculateScore(playerHand);
    int visibleHouseScore = CalculateScore([houseHand[0]]);


    String playerCards = playerHand.map((card) => cardNamer(card)).join(', ');
    print("Your Hand: $playerCards");
    print("Your Score: $playerScore");


    String houseVisibleCard = cardNamer(houseHand[0]);
    print("Dealer shows: $visibleHouseScore");
  }

/*  int score(List<int> hand) {

    return hand.reduce((a, b) => a + b);
  }

  String cardNamer(int card) {
    4
    return "Card $card";
  }*/
