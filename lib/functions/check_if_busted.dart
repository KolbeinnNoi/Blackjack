import 'package:BlackJack/functions/functions.dart';

bool CheckIfBusted(List<int> hand) {
  return CalculateScore(hand) > 21;
}
