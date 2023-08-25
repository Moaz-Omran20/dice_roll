import 'dart:math';

import 'package:flutter/foundation.dart';

class DiceProvider extends ChangeNotifier {
  int firstDiceValue = 1;
  int secondDiceValue = 1;

  void rollFirstDice() {
    int randomFirstNum = Random().nextInt(6) + 1;
    firstDiceValue = randomFirstNum;
    notifyListeners();
  }

  void rollSecondtDice() {
    int randomFirstNum = Random().nextInt(6) + 1;
    secondDiceValue = randomFirstNum;
    notifyListeners();
  }
}
