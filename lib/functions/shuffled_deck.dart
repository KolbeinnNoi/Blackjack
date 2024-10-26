import 'shuffler.dart';
import 'deck_of_cards.dart';

List<int> ShuffledDeck() {
  List<int> deck = deckOfCards();
  return Shuffler(deck);
}

void main() {
  print(ShuffledDeck());
}