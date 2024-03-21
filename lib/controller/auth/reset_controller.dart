import 'package:ecommerce_flutter/core/constant/asset_images/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ResetPassController extends GetxController {
  resetPassword();
  toSuccessReset();
}

class ResetPassControllerImpl extends ResetPassController {
  late TextEditingController password;
  late TextEditingController repassword;
  @override
  toSuccessReset() {
    Get.toNamed(AppRoutes.success_reset);
  }

  @override
  void onInit() {
    password = TextEditingController();

    repassword = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  resetPassword() {}
}
