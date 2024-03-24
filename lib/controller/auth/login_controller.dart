import 'package:ecommerce_flutter/core/class/enum_statusrequest.dart';
import 'package:ecommerce_flutter/core/constant/asset_images/routes.dart';
import 'package:ecommerce_flutter/core/functions/handle_response.dart';
import 'package:ecommerce_flutter/core/localization/change_local.dart';
import 'package:ecommerce_flutter/data/datasource/remote/auth/login_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class LoginController extends GetxController {
  login();
  toSignup();
  toForgetPassword();
}

class LoginControllerImplements extends LoginController {
  LoginData loginData = LoginData(Get.find());
  late TextEditingController emailControler;
  late TextEditingController passControler;

  @override
  void onInit() {
    emailControler = TextEditingController();
    passControler = TextEditingController();

    super.onInit();
  }

  late GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  StatusRequest? statusRequest;
  Map<String, dynamic> userData = {}; // user info

  @override
  login() async {
    if (loginFormKey.currentState!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var response = await loginData.loginPostData(
        emailControler.text,
        passControler.text,
      );

      statusRequest = handle(response);
      if (StatusRequest.success == statusRequest) {
        if (response['status'] == "success") {
          /* Map<String, dynamic> responseData =
              Map<String, dynamic>.from(response['data']);
          // إضافة البيانات المحولة إلى قائمة userData
          userData.addAll(responseData.values);*/
          userData = response['data'];
          print(userData['username'] +
              ' ' +
              userData['created_at']); // سيطبع اسم المستخدم

          Get.offNamed(AppRoutes.home, arguments: userData);
        } else {
          Get.defaultDialog(
            title: 'Error Signup',
            middleText: 'Email Or Password Not Correct',
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
  toSignup() {
    Get.offNamed(AppRoutes.signup);
  }

  @override
  void dispose() {
    emailControler.dispose();
    passControler.dispose();

    super.dispose();
  }

  @override
  toForgetPassword() {
    Get.toNamed(AppRoutes.forgetPassword);
  }
}
