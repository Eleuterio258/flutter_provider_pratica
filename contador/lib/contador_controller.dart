import 'package:flutter/material.dart';

class ContadorController extends ChangeNotifier {
  int _number = 0;

  get numero => _number;

  void increment() {
    _number++;
    notifyListeners();
  }

  void decrement() {
    if (_number == 0) {
      _number = 0;
    } else {
      _number--;
    }

    notifyListeners();
  }

  void limpar() {
    _number = 0;
    notifyListeners();
  }
}
