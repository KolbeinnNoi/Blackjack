/*
Create a function called CardNamer.

When given an integer between 1-13,
it should return the name of the corresponding card (Ignore the suit)
 */



String CardNamer(int number) {
  switch (number) {
    case 1:
      return 'Ace';
    case 11:
      return 'Jack';
    case 12:
      return 'Queen';
    case 13:
      return 'King';
    default:
      return number >= 2 && number <= 10 ? number.toString() : 'Invalid';
  }
}
