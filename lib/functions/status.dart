import 'package:BlackJack/functions/functions.dart';

/*
Create a function that prints the current "Status" of the match,
called ... uh... Status! Yes! That's it!

The function should take in two lists of integers, the playerHand and houseHand.

Using the score function and cardnamer, print info that informs the user
on what hand he has, his score and the hand of the house.

(Check out blackjack rules on what we actually get to know from the house
hand before showdown.)

 */
void Status(List<int> playerHand, List<int> houseHand) {
  if (playerHand.isNotEmpty) {
    print('\nYour hand: ${playerHand.map(CardNamer).join(', ')}');
    print('Your score: ${CalculateScore(playerHand)}');
  }
  
  if (houseHand.isNotEmpty) {
    if (playerHand.isEmpty) {
      print('\nHouse hand: ${houseHand.map(CardNamer).join(', ')}');
      print('House score: ${CalculateScore(houseHand)}');
    } else {
      print('House shows: ${CardNamer(houseHand[0])}');
    }
  }
}
