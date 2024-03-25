import 'dart:io';

import 'package:ecommerce_flutter/core/class/enum_statusrequest.dart';
import 'package:ecommerce_flutter/core/constant/asset_images/routes.dart';
import 'package:ecommerce_flutter/core/functions/handle_response.dart';
import 'package:ecommerce_flutter/data/datasource/remote/auth/signup_data.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class SignupController extends GetxController {
  signup();
  tohome();
  toSignin();
}

class SignupControllerImplements extends SignupController {
  @override
  void onInit() {
    emailControler = TextEditingController();
    passControler = TextEditingController();
    nameControler = TextEditingController();
    phoneController = TextEditingController();

    super.onInit();
  }

  SignupData signupData = SignupData(Get.find());

  late TextEditingController emailControler;
  late TextEditingController passControler;

  late TextEditingController nameControler;
  late TextEditingController phoneController;
  late GlobalKey<FormState> formKeySignup = GlobalKey<FormState>();
  // signup data post
  StatusRequest? statusRequest;

  Map<String, dynamic> userSignupData = {};

  @override
  signup() async {
    if (formKeySignup.currentState!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var response = await signupData.signupPostData(nameControler.text,
          passControler.text, emailControler.text, phoneController.text);

      statusRequest = handle(response);
      if (StatusRequest.success == statusRequest) {
        if (response['status'] == "success") {
          // data.addAll(response['data']); // save list here for using after if want
          userSignupData = response['data'];
          print(response['data']['vercode']);
          Get.offNamed(AppRoutes.verfycode_signup, arguments: {
            "email": userSignupData['email'],
            "vercode": userSignupData['vercode'],
          });
        } else {
          Get.defaultDialog(
            title: 'Error Signup',
            middleText: 'Username Or Phone Or email Exists',
            actions: [
              ElevatedButton(
                  onPressed: () {
                    //  exit(0);
                  },
                  child: Text('Confirm')),
              ElevatedButton(
                  onPressed: () {
                    Get.back();
                  },
                  child: const Text('Cancel'))
            ],
          );
          statusRequest = StatusRequest.failure;
        }
      }
      update();
    } else {}

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
  void dispose() {
    emailControler.dispose();
    passControler.dispose();
    nameControler.dispose();
    phoneController.dispose();
    super.dispose();
  }
}
