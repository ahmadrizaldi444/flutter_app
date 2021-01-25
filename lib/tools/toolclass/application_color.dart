import 'package:flutter/material.dart';

class ApplicationColor with ChangeNotifier {
  bool _isOn = true;

  bool get isLightBlue => _isOn;

  set isLightBlue(bool value) {
    _isOn = value;
    notifyListeners();
  }

  Color get getColor => (_isOn) ? Colors.amber : Colors.blueAccent;
}
