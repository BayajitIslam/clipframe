import 'package:get/get.dart';

class LanguageSwitchController extends GetxController {
  var isEnglish = true.obs;

  //<=========== Toggle language ===========>

  void toggleLanguage() {
    isEnglish.value = !isEnglish.value;
  }
}
