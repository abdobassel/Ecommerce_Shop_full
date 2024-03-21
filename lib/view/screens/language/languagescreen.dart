import 'package:ecommerce_flutter/components/components.dart';
import 'package:ecommerce_flutter/core/constant/asset_images/routes.dart';
import 'package:ecommerce_flutter/core/localization/change_local.dart';
import 'package:ecommerce_flutter/test/test.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LanguageScreen extends StatelessWidget {
  const LanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('chooslang'.tr),
        scrolledUnderElevation: 0.0,
      ),
      backgroundColor: const Color.fromARGB(255, 178, 148, 139),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40.0),
        child: GetBuilder<LocaleController>(
          init: LocaleController(),
          builder: (controller) => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'chooslang'.tr,
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 40,
              ),
              DefaultButton(
                  text: 'العربية',
                  function: () {
                    controller.changeLang('ar');
                    Get.toNamed(AppRoutes.onboarding);
                  }),
              const SizedBox(
                height: 20,
              ),
              DefaultButton(
                  text: 'English',
                  function: () {
                    controller.changeLang("en");
                    Get.toNamed(AppRoutes.onboarding);
                  },
                  background: Color.fromARGB(255, 163, 36, 49)),
            ],
          ),
        ),
      ),
    );
  }
}
