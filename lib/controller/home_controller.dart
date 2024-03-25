import 'package:ecommerce_flutter/core/services/services.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {}

class HomeControllerImpl extends HomeController {
  MyServices myServices = Get.find(); // for useing sharedpref

  String? username, email, phone, userId;

  initialData() {
    //  username = Get.arguments['username'].toString();
    username = myServices.sharedPreferences.getString('username').toString();
    email = myServices.sharedPreferences.getString('email').toString();
    userId = myServices.sharedPreferences.getString('user_id').toString();
    phone = myServices.sharedPreferences.getString('phone').toString();
  }

  @override
  void onInit() {
    initialData();
    super.onInit();
  }
}
