import 'dart:io';

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

void main() {
  PlaceBet(BuyIn());

}