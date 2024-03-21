import 'package:ecommerce_flutter/components/components.dart';
import 'package:ecommerce_flutter/controller/auth/forget_controller.dart';
import 'package:ecommerce_flutter/controller/auth/reset_controller.dart';
import 'package:ecommerce_flutter/controller/auth/veryficode_controller.dart';

import 'package:flutter/material.dart';
import 'package:ecommerce_flutter/core/class/app_color.dart';
import 'package:flutter_conditional_rendering/conditional.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class ResetPassword extends StatelessWidget {
  ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    ResetPassControllerImpl resetPassControllerImpl =
        Get.put(ResetPassControllerImpl());
    return Scaffold(
      appBar: DefaultAppBar(
        context: context,
        title: 'ResetPasspage',
        actions: [
          SizedBox(
            width: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 30),
            child: TextButton(
                onPressed: () {},
                child: Text(
                  'logout'.tr,
                  style: TextStyle(color: AppColor.gry, fontSize: 16),
                )),
          )
        ],
        leading: IconButton(
          icon: const FaIcon(
            FontAwesomeIcons.arrowLeft,
            color: AppColor.gry,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Form(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'reset password',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  DefaultTextForm(
                      controller: TextEditingController(),
                      validate: (value) {
                        if (value != null) {
                          if (value.isEmpty) {
                            return 'pass Is Empty ';
                          }
                          return null;
                        }
                      },
                      onchange: (text) {
                        print(text);
                      },
                      labeltext: 'new password'.tr,
                      type: TextInputType.emailAddress),
                  DefaultTextForm(
                      controller: TextEditingController(),
                      validate: (value) {
                        if (value != null) {
                          if (value.isEmpty) {
                            return 'pass Is Empty ';
                          }
                          return null;
                        }
                      },
                      onchange: (text) {
                        print(text);
                      },
                      labeltext: 're enter password'.tr,
                      type: TextInputType.emailAddress),
                  const SizedBox(
                    height: 40,
                  ),
                  Conditional.single(
                    context: context,
                    fallbackBuilder: (context) => const Center(
                      child: CircularProgressIndicator(
                        color: AppColor.gry,
                      ),
                    ),
                    conditionBuilder: (context) => true,
                    widgetBuilder: (context) => DefaultButton(
                        text: 'Check',
                        isUperCase: false,
                        function: () {
                          resetPassControllerImpl.toSuccessReset();
                        },
                        background: AppColor.gry,
                        radius: 30),
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
