import 'dart:io';
import 'package:BlackJack/functions/functions.dart';

/*
This is a complicated function,which accepts three inputs,

the current player hand (list of integers),
house hand (list of integers)
the current deck (list of integers)

It should be a infinite loop that asks the user if he
wants to draw a card or stay. If he chooses to stay,
then the loop should stop.

If he wants to draw a card, add a card to his hand,
tell him what card he drew and print the current information of the game.

If he busts after drawing this card, break the loop as well.
 */

void HitOrStay(List<int> playerHand, List<int> houseHand, List<int> deck) {
  while (true) {
    print('\nDo you want to (H)it or (S)tay?');
    String? input = stdin.readLineSync()?.toLowerCase();
    
    if (input == 'h') {
      DrawCard(playerHand, deck);
      int drawnCard = playerHand.last;
      print('You drew a ${CardNamer(drawnCard)}');
      Status(playerHand, houseHand);
      
      if (CheckIfBusted(playerHand)) {
        print('Busted!');
        break;
      }
    } else if (input == 's') {
      print('You chose to stay.');
      break;
    } else {
      print('Invalid input. Please enter H for Hit or S for Stay.');
    }
  }
}
