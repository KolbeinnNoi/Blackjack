import 'dart:io';
import 'dart:math';

List<int> deckOfCards() {
  List<int> deckOfCards = [];
  for (int i = 0; i < 4; i++) {
    for (int j = 1; j <= 13; j++) {
      deckOfCards.add(j);
    }
  }
  return deckOfCards;
}

