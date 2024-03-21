import 'package:ecommerce_flutter/components/components.dart';
import 'package:ecommerce_flutter/controller/auth/succes_reset_controller.dart';
import 'package:ecommerce_flutter/core/class/app_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SuccessResetPassword extends StatelessWidget {
  const SuccessResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    SuccessResetPassCtrlImpl successResetPassCtrlImpl =
        Get.put(SuccessResetPassCtrlImpl());
    return Scaffold(
      appBar: AppBar(
        title: Text('Succses Reset Password'),
        scrolledUnderElevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(children: [
          const Icon(
            Icons.check_box_rounded,
            size: 200,
            color: AppColor.primary,
          ),
          Text('Password Is Done Reset'),
          Spacer(),
          DefaultButton(
            text: 'Go To Login Now',
            function: () {
              successResetPassCtrlImpl.gotoLogin();
            },
          ),
        ]),
      ),
    );
  }
}
