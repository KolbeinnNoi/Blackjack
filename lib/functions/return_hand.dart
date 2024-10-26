void ReturnHand(List<int> hand, List<int> deck){
  deck.addAll(hand);
  hand.clear();
}
void ReturnHands(List<int> playerHand, List<int> houseHand, List<int> deck) {
  ReturnHand(playerHand, deck);
  ReturnHand(houseHand, deck);
}
