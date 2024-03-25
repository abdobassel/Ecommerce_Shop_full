import 'package:ecommerce_flutter/core/constant/asset_images/routes.dart';
import 'package:get/get.dart';

abstract class SuccessSignupController extends GetxController {
  gotoLogin();
}

class SuccessSignupCtrlImpl extends SuccessSignupController {
  @override
  gotoLogin() {
    // TODO: implement gotoLogin
    Get.toNamed(AppRoutes.login);
  }
}
