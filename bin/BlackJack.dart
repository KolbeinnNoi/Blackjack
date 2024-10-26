import 'package:BlackJack/lib.dart';
import 'package:BlackJack/functions/functions.dart';

void main() {
  Welcome();
  
  var bankRoll = BuyIn();
  
  var deck = ShuffledDeck();
  var playerHand = <int>[];
  var houseHand = <int>[];
  
  while (bankRoll > 0) {
    print('\nCurrent bankroll: \$${bankRoll}');
    var currentBet = PlaceBet(bankRoll);
    
    if (currentBet == 0) {
      print('Thanks for playing!');
      break;
    }
    
    playerHand.clear();
    houseHand.clear();
    InitialDeal(playerHand, houseHand, deck);
  
    Status(playerHand, houseHand);
    
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
  
  print('Game over! Final bankroll: \$${bankRoll}');
}
