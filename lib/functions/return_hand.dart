void ReturnHand(List<int> hand, List<int> deck){
  deck.addAll(hand);
  hand.clear();
}
void ReturnHands(List<int> playerHand, List<int> houseHand, List<int> deck) {
  ReturnHand(playerHand, deck);
  ReturnHand(houseHand, deck);
}

  void main() {
  List<int> deck = [3, 4, 5, 6];
  List<int> hand = [1, 2];

  ReturnHand(hand, deck);
  print(deck);
  print(hand);
  List<int> playerHand = [7, 8];
  List<int> houseHand = [9, 10];

  ReturnHands(playerHand, houseHand, deck);
  print(deck);
  print(playerHand);
  print(houseHand);
  }