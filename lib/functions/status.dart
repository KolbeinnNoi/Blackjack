import 'package:BlackJack/functions/functions.dart';

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
