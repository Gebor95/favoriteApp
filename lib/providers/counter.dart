import 'package:flutter/material.dart';

class Couter with ChangeNotifier {
  int num = 0;
  int get number => num;
  increment() {
    num++;
    notifyListeners();
    // print(num);
  }
}