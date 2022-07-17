import 'package:flutter/widgets.dart';

class RegisterIdexController extends ChangeNotifier {
  int _index = 0;

  int get index => _index;

  void next() {
    _index++;
    notifyListeners();
  }

  void back() {
    _index--;
    notifyListeners();
  }
}