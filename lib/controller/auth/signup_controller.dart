import 'package:ecommerce_flutter/core/constant/asset_images/routes.dart';
import 'package:ecommerce_flutter/view/screens/auth/loginscreen.dart';
import 'package:ecommerce_flutter/view/screens/auth/register_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class SignupController extends GetxController {
  signup();
  tohome();
  toSignin();
}

class SignupControllerImplements extends SignupController {
  late TextEditingController emailControler;
  late TextEditingController passControler;

  late TextEditingController nameControler;
  late TextEditingController phoneController;
  late GlobalKey<FormState> formKeySignup = GlobalKey();

  @override
  signup() {
    // TODO: implement signup
    throw UnimplementedError();
  }

  @override
  tohome() {
    Get.offAllNamed(AppRoutes.home);
  }

  @override
  toSignin() {
    Get.offNamed(AppRoutes.login);
  }

  @override
  void onInit() {
    emailControler = TextEditingController();
    passControler = TextEditingController();
    nameControler = TextEditingController();
    phoneController = TextEditingController();

    super.onInit();
  }

  @override
  void dispose() {
    emailControler.dispose();
    passControler.dispose();
    nameControler.dispose();
    super.dispose();
  }
}
