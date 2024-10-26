import 'dart:io';

/*
Create two functions called

PlaceBet(int currentBank)
- Asks the user how much they want to bet this round, return the amount.
- Solve edge cases when the bet is larger than current bank or if
the user chooses to bet 0.

BuyIn
- Ask the user for how much they want to buy in to black jack

These methods should return an integer.

BONUS POINTS:
Can you design the function such that it will ask the user again if
he doesn't input a integer?
 */

int PlaceBet(int bankRoll){
bool input = true;
while (input) {
print("How much would you like to wager for this round?");
String? stringInput = stdin.readLineSync();
int? intInput = stringInput != null ? int.tryParse(stringInput) : null;
if (intInput != null && intInput <= bankRoll) {
  print("Your bet of \$$intInput has been placed.");
  print("You now have a balance of \$${bankRoll - intInput} remaining");
  return intInput;
} else {
  print("Invalid input: please enter an amount within your balance.");
}
}
}


int BuyIn(){
int balance = 0;
bool input = true;
while(input) {
print("You currently have a balance of \$0. Please enter your buy-in amount:");
String? stringInput = stdin.readLineSync();
int? intInput = stringInput != null ? int.tryParse(stringInput) : null;
if(intInput != null) {
  print("You have bought in for \$$intInput ");
  int bankRoll = balance + intInput;
  print("----------------------------------------");
  print("Your balance is now \$$bankRoll");
  return bankRoll; 
} else {
  print("Please enter a valid number in your input was invalid");
}

}
}