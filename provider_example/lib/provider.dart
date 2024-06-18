import 'package:flutter/material.dart';

class NumberProvider extends ChangeNotifier {
  List<int> number = [1, 2, 3];
  add() {
    int last = number.last;
    number.add(last + 1);
    notifyListeners();
  }
}
