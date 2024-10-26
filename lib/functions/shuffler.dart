import 'dart:math';


List<int> Shuffler(List<int> deckOfCards) {
  deckOfCards.shuffle(Random());
  return deckOfCards;

}
