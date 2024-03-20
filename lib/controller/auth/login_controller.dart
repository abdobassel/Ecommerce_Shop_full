import 'package:ecommerce_flutter/core/constant/asset_images/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class LoginController extends GetxController {
  login();
  toSignup();
}

class LoginControllerImplements extends LoginController {
  late TextEditingController emailControler;
  late TextEditingController passControler;
  late GlobalKey<FormState> loginFormKey;
  @override
  login() {}

  @override
  toSignup() {
    Get.toNamed(AppRoutes.signup);
  }

  @override
  void onInit() {
    emailControler = TextEditingController();
    passControler = TextEditingController();
    loginFormKey = GlobalKey();
    super.onInit();
  }

  @override
  void dispose() {
    emailControler.dispose();
    passControler.dispose();

    super.dispose();
  }
}
