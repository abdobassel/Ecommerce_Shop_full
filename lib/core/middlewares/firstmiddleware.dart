import 'package:ecommerce_flutter/core/constant/asset_images/routes.dart';
import 'package:ecommerce_flutter/core/services/services.dart';
import 'package:flutter/src/widgets/navigator.dart';
import 'package:get/get.dart';

class FirstMiddleWare extends GetMiddleware {
  MyServices myServices = Get.find();
  @override
  int? get priority => 1;

  @override
  RouteSettings? redirect(String? route) {
    if (myServices.sharedPreferences.getString('step') == '2') {
      return const RouteSettings(name: AppRoutes.homeLayout);
    }
    if (myServices.sharedPreferences.getBool('onboard') == true) {
      return const RouteSettings(name: AppRoutes.login);
    }
  }
}
