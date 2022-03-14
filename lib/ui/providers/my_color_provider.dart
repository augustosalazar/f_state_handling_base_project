import 'package:flutter/foundation.dart';

class MyColorProvider extends ChangeNotifier {
  bool _isRed = false;

  bool get isRed => _isRed;

  void changeColor() {
    _isRed = !_isRed;
    notifyListeners();
  }
}
