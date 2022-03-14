import 'package:get/get.dart';

class MyColorController extends GetxController {
  var _isRed = false.obs;

  bool get isRed => _isRed.value;

  void changeColor() {
    _isRed.value = !_isRed.value;
  }
}
