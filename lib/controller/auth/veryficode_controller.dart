import 'package:ecommerce_flutter/core/constant/asset_images/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class VerficodeController extends GetxController {
  checkCode();
  toResetPassword();
}

class VerficodeControllerImpl extends VerficodeController {
  @override
  toResetPassword() {
    Get.toNamed(AppRoutes.resetPassword);
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
