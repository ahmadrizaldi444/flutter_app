import 'package:flutter/material.dart';

class Money with ChangeNotifier {
  int _moeny = 10000;

  int get money => _moeny;
  set money(int value) {
    _moeny = value;
    notifyListeners();
  }
}
