import 'package:ecommerce_flutter/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LangControler extends GetxController {
  String text = 'لغة الجهاز الافتراضية  ';

  void langen() {
    text = 'Choose Language ...';
    update();
  }

  void langar() {
    text = 'اختر اللغة';
    update();
  }
}
// عبدالرحمن باسل

class Mylocal implements Translations {
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
        "ar": {'1': 'الرئيسية'},
        "en": {'1': "Home"},
      };
}

/*

class LocalController extends GetxController {

  void changeLang(String code) {
    Locale locale = Locale(code);
    MyServices.sharedPreferences.setString('lang', code);

    Get.updateLocale(locale);
  }
}*/
