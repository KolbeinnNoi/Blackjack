import 'dart:math';
import 'package:BlackJack/functions/functions.dart';
/*
Create a function called ShuffledDeck that uses the methods from

A new deck of cards
Shuffler
And when run, returns a shuffled deck of cards. No inputs, only output.
 */

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
