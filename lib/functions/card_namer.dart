String cardNamer(int number) {
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
