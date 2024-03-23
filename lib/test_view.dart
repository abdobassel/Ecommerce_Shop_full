import 'package:ecommerce_flutter/core/class/enum_statusrequest.dart';
import 'package:ecommerce_flutter/core/constant/asset_images/asset_images.dart';
import 'package:ecommerce_flutter/test_crud.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lottie/lottie.dart';

import 'package:get/get.dart';

class TestV extends StatelessWidget {
  const TestV({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(TestController());
    return Scaffold(
      appBar: AppBar(
        title: Text('test api'),
      ),
      body: GetBuilder<TestController>(builder: (controller) {
        if (controller.statusRequest == StatusRequest.loading) {
          return Center(
            child: Lottie.asset(AssetImages.loading, repeat: true),
          );
        } else if (controller.statusRequest == StatusRequest.offlineFailure) {
          return Center(
            child: Lottie.asset(AssetImages.oops, repeat: true),
          );
        } else if (controller.statusRequest == StatusRequest.serverFailure) {
          return Center(
            child: Lottie.asset(AssetImages.oops, repeat: true),
          );
        } else if (controller.statusRequest == StatusRequest.failure) {
          return Center(
            child: Lottie.asset(AssetImages.oops, repeat: true),
          );
        } else {
          return ListView.builder(
              itemCount: controller.data.length,
              itemBuilder: (context, index) {
                return Text("${controller.data}");
              });
        }
      }),
    );
  }
}
