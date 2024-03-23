import 'package:ecommerce_flutter/core/class/enum_statusrequest.dart';
import 'package:ecommerce_flutter/core/constant/asset_images/routes.dart';
import 'package:ecommerce_flutter/core/functions/handle_response.dart';
import 'package:ecommerce_flutter/data/datasource/remote/auth/signup_data.dart';
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
  // signup data post
  SignupData signupData = SignupData(Get.find());
  StatusRequest? statusRequest;

  List data = [];

  @override
  signup() async {
    if (formKeySignup.currentState!.validate()) {
      statusRequest = StatusRequest.loading;
      var response = await signupData.signupPostData(nameControler.text,
          passControler.text, emailControler.text, phoneController.text);
      statusRequest = handle(response);
      if (statusRequest == StatusRequest.success) {
        if (response['status'] == "success") {
          data.addAll(
              response['data']); // save list here for using after if want
          Get.offNamed(AppRoutes.verfycode_signup);
        } else {
          Get.defaultDialog(
            title: 'Error Signup',
            middleText: 'Username Or Phone Or email Exists',
          );
          statusRequest = StatusRequest.failure;
        }
      }
      update();
    }

    //Get.offNamed(AppRoutes.verfycode_signup);
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
