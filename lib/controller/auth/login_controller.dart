import 'package:ecommerce_flutter/core/constant/asset_images/routes.dart';
import 'package:ecommerce_flutter/core/localization/change_local.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class LoginController extends GetxController {
  login();
  toSignup();
  toForgetPassword();
}

class LoginControllerImplements extends LoginController {
  late TextEditingController emailControler;
  late TextEditingController passControler;
  late GlobalKey<FormState> loginFormKey;
  late LocaleController localeController;

  @override
  login() {}

  @override
  toSignup() {
    Get.offNamed(AppRoutes.signup);
  }

  @override
  void onInit() {
    emailControler = TextEditingController();
    passControler = TextEditingController();
    loginFormKey = GlobalKey();
    localeController = Get.put(LocaleController());
    super.onInit();
  }

  @override
  void dispose() {
    emailControler.dispose();
    passControler.dispose();

    super.dispose();
  }

  @override
  toForgetPassword() {
    Get.toNamed(AppRoutes.forgetPassword);
  }
}
