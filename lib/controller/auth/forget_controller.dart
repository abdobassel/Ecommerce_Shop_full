import 'package:ecommerce_flutter/core/constant/asset_images/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ForgetPasswordController extends GetxController {
  checkEmail();
  toVerfiyCode();
}

class ForgetPasswordControllerImpl extends ForgetPasswordController {
  late TextEditingController emailControler;

  @override
  toVerfiyCode() {
    Get.toNamed(AppRoutes.verfiyCode);
  }

  @override
  void onInit() {
    emailControler = TextEditingController();

    super.onInit();
  }

  @override
  void dispose() {
    emailControler.dispose();

    super.dispose();
  }

  @override
  checkEmail() {
    // TODO: implement forgetPassword
    throw UnimplementedError();
  }
}
