import 'package:ecommerce_flutter/components/components.dart';
import 'package:ecommerce_flutter/controller/auth/success_signup_controller.dart';
import 'package:ecommerce_flutter/core/class/app_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Success_Signup extends StatelessWidget {
  Success_Signup({super.key});

  @override
  Widget build(BuildContext context) {
    SuccessSignupCtrlImpl signupCtrlImpl = Get.put(SuccessSignupCtrlImpl());
    return Scaffold(
      appBar: AppBar(
        title: Text('Succses signup'),
        scrolledUnderElevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Icon(
            Icons.check_circle,
            size: 250,
            color: AppColor.gry,
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            'Register Successfuly',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
          Spacer(),
          DefaultButton(
            text: 'Go To Login Now',
            function: () {
              signupCtrlImpl.gotoLogin();
            },
          ),
        ]),
      ),
    );
  }
}
