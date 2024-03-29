import 'package:ecommerce_flutter/core/services/services.dart';
import 'package:get/get.dart';

translateDynamicWords({required ar, required en}) {
  MyServices myServices = Get.find();
  if (myServices.sharedPreferences.getString('lang') == "ar") {
    return ar;
  } else {
    return en;
  }
}
