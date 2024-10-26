import 'package:BlackJack/lib.dart';
import 'package:BlackJack/functions/functions.dart';

void main() {
  Welcome();
  
  int bankRoll = 1000;
  
  List<int> deck = ShuffledDeck();
  List<int> playerHand = [13, 14];
  List<int> houseHand = [15, 16];
  
  while (bankRoll == 1000) {

    int currentBet = 10;


    InitialDeal(playerHand, houseHand, deck);
  
    Status(playerHand, houseHand);
    print("playerHand: " + playerHand.toString());
      print("houseHand: " + houseHand.toString());
    
    HitOrStay(playerHand, houseHand, deck);
    
    if (!CheckIfBusted(playerHand)) {
      HousePlays(houseHand, deck);
    }
    
    bankRoll = CheckWinner(playerHand, houseHand, bankRoll, currentBet);
    
    ReturnHands(playerHand, houseHand, deck);
    
    if (deck.length < 20) {
      deck = ShuffledDeck();
    }
  }
  
  print("Game over! Thanks for playing!");
}