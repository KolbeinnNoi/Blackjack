/*
Create a function called DeckOfCards that returns a brand new deck of cards.

The deck should consists of List of integers, where each card is assigned
a number from 1-13, so essentially you will the number 1 four times,
the number 2 four times etc...

Make this function return the List of integers.
 */

List<int> deckOfCards() {
  List<int> deckOfCards = [];
  for (int i = 0; i < 4; i++) {
    for (int j = 1; j <= 13; j++) {
      deckOfCards.add(j);
    }
  }
  return deckOfCards;
}


