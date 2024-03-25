import 'package:ecommerce_flutter/components/components.dart';
import 'package:ecommerce_flutter/controller/auth/forget_controller.dart';
import 'package:ecommerce_flutter/controller/auth/very_signup_controller.dart';
import 'package:ecommerce_flutter/controller/auth/veryficode_controller.dart';

import 'package:flutter/material.dart';
import 'package:ecommerce_flutter/core/class/app_color.dart';
import 'package:flutter_conditional_rendering/conditional.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class VerfyCodeSignup extends StatelessWidget {
  VerfyCodeSignup({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(VerficodeSignUpControllerImpl());
    return Scaffold(
      appBar: DefaultAppBar(
        context: context,
        title: 'Verification',
        actions: [
          SizedBox(
            width: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 30),
            child: TextButton(
                onPressed: () {},
                child: const Text(
                  'Skip',
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
                    'Check Email ',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  GetBuilder<VerficodeSignUpControllerImpl>(
                      builder: (controller) {
                    return OtpTextField(
                      fieldWidth: 55,
                      borderRadius: BorderRadius.circular(20),
                      numberOfFields: 5,
                      onCodeChanged: (String code) {
                        code = controller.vercode;
                      },
                      onSubmit: (String vCode) {
                        vCode = controller.vercode;

                        controller.toSuccessSignup();
                      },
                      showFieldAsBox: true,
                    );
                  }),
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
                          VerficodeSignUpControllerImpl().toSuccessSignup();
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
