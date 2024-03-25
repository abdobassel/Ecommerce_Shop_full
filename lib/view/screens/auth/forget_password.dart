import 'package:ecommerce_flutter/components/components.dart';
import 'package:ecommerce_flutter/controller/auth/forget_controller.dart';

import 'package:flutter/material.dart';
import 'package:ecommerce_flutter/core/class/app_color.dart';
import 'package:flutter_conditional_rendering/conditional.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class ForgetPassword extends StatelessWidget {
  ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    ForgetPasswordControllerImpl forgetPasswordControllerImpl =
        Get.put(ForgetPasswordControllerImpl());
    return Scaffold(
      appBar: DefaultAppBar(
        context: context,
        title: 'forgetpass'.tr,
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
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  const Center(
                    child: Text(
                      'Check Email ',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  DefaultTextForm(
                      validate: (value) {
                        if (value != null) {
                          if (value.isEmpty) {
                            return 'Email Is Empty ';
                          }
                          return null;
                        }
                      },
                      onchange: (text) {
                        print(text);
                      },
                      controller: forgetPasswordControllerImpl.emailControler,
                      labeltext: 'email'.tr,
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
                        text: 'check'.tr,
                        isUperCase: false,
                        function: () {
                          forgetPasswordControllerImpl.toVerfiyCode();
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
