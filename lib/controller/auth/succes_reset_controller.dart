import 'package:ecommerce_flutter/core/constant/asset_images/routes.dart';
import 'package:get/get.dart';

abstract class SuccessResetPassController extends GetxController {
  gotoLogin();
}

class SuccessResetPassCtrlImpl extends SuccessResetPassController {
  @override
  gotoLogin() {
    // TODO: implement gotoLogin
    Get.offAllNamed(AppRoutes.login);
  }
}
