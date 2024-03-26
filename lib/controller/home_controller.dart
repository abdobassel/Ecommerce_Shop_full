import 'package:ecommerce_flutter/core/class/enum_statusrequest.dart';
import 'package:ecommerce_flutter/core/functions/handle_response.dart';
import 'package:ecommerce_flutter/core/services/services.dart';
import 'package:ecommerce_flutter/data/datasource/remote/home/home_data.dart';
import 'package:get/get.dart';

abstract class HomeController extends GetxController {
  initialData();
  getCategories();
}

class HomeControllerImpl extends HomeController {
  MyServices myServices = Get.find(); // for useing sharedpref
  HomeData homeData = HomeData(Get.find());
  StatusRequest? statusRequest;
  String? username, email, phone, userId;
  @override
  initialData() async {
    await getCategories();
    //  username = Get.arguments['username'].toString();
    username = myServices.sharedPreferences.getString('username').toString();
    email = myServices.sharedPreferences.getString('email').toString();
    userId = myServices.sharedPreferences.getString('user_id').toString();
    phone = myServices.sharedPreferences.getString('phone').toString();
  }

  // categories

  @override
  void onInit() {
    initialData();

    super.onInit();
  }

// get data categories
  List categoriesData = [];
  @override
  getCategories() async {
    statusRequest = StatusRequest.loading;
    update();
    var response = await homeData.getData();
    statusRequest = handle(response);
    if (statusRequest == StatusRequest.success) {
      if (response['status'] == "success") {
        categoriesData.addAll(response['categories']);
        print(categoriesData);
        print(response);
      } else {
        statusRequest = StatusRequest.failure;
      }
    }
  }
}
