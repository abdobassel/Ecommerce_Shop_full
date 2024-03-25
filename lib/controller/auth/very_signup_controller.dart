import 'package:ecommerce_flutter/core/constant/asset_images/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class VerficodeSignUpController extends GetxController {
  checkCode();
  toSuccessSignup();
}

class VerficodeSignUpControllerImpl extends VerficodeSignUpController {
  String? email;
  late String vercode;
  @override
  void onInit() {
    email = Get.arguments['email'];
    vercode = Get.arguments['vercode'];

    super.onInit();
  }

  @override
  toSuccessSignup() {
    Get.toNamed(AppRoutes.success_signup);
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  checkCode() {}
}
