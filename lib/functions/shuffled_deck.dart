import 'dart:math';
import 'package:BlackJack/functions/functions.dart';

List<int> ShuffledDeck() {
  List<int> deck = deckOfCards();
  Random random = Random();
  
  for (int i = deck.length - 1; i > 0; i--) {
    int j = random.nextInt(i + 1);
    int temp = deck[i];
    deck[i] = deck[j];
    deck[j] = temp;
  }
  
  return deck;
}
