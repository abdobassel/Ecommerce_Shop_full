import 'package:ecommerce_flutter/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/cupertino.dart';

class LocaleController extends GetxController {
  MyServices myServices = Get.find();
  Locale? language;
  void changeLang(String code) {
    Locale locale = Locale(code);
    myServices.sharedPreferences.setString('lang', code);

    Get.updateLocale(locale);
  }

  @override
  void onInit() {
    String? langShared = myServices.sharedPreferences.getString('lang');
    if (langShared == 'ar') {
      language = Locale('ar');
    } else if (langShared == 'en') {
      language = Locale('en');
    } else {
      language = Locale(Get.deviceLocale!.languageCode);
    }
    super.onInit();
  }
}
