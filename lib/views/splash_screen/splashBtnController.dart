import 'package:get/get.dart';

class ButtonController extends GetxController {
  var selectedButton = ''.obs;

  void selectButton(String buttonName) {
    selectedButton.value = buttonName;
  }
}
