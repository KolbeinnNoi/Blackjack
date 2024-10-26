import 'package:BlackJack/functions/functions.dart';

/*
Once the player is done with his turn (HitOrStay) the house will play.

Create a function called HousePlays which accepts two inputs,
both are list of integers. One is the current hand of the house,
and the other is the deck.

Implement the normal blackjack rules that a dealer in a real
casino would behave (It depends on the score what if he draws a card or not).

Print the cards and score of the house before he starts,
and inform what card (if any) he draws next, after each draw of card,
show the score of the house.
 */

void HousePlays(List<int> houseHand, List<int> deck) {
  print('\nHouse plays:');
  Status([], houseHand);
  
  while (CalculateScore(houseHand) < 17) {
    DrawCard(houseHand, deck);
    int drawnCard = houseHand.last;
    print('House drew a ${CardNamer(drawnCard)}');
    Status([], houseHand);
  }
}
