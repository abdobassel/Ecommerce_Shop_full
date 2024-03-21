import 'package:ecommerce_flutter/core/constant/asset_images/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class VerficodeSignUpController extends GetxController {
  checkCode();
  toSuccessSignup();
}

class VerficodeSignUpControllerImpl extends VerficodeSignUpController {
  @override
  toSuccessSignup() {
    Get.toNamed(AppRoutes.success_signup);
  }

  late String codeVer;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  checkCode() {}
}
