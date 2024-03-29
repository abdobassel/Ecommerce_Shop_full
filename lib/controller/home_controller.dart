import 'package:ecommerce_flutter/core/class/enum_statusrequest.dart';
import 'package:ecommerce_flutter/core/constant/asset_images/routes.dart';
import 'package:ecommerce_flutter/core/functions/handle_response.dart';
import 'package:ecommerce_flutter/core/services/services.dart';
import 'package:ecommerce_flutter/data/datasource/remote/home/home_data.dart';
import 'package:get/get.dart';

abstract class HomeController extends GetxController {
  initialData();
  getDataHome();
  gettoItems(List categories, int categorySelected, String catid);
}

class HomeControllerImpl extends HomeController {
  MyServices myServices = Get.find(); // for useing sharedpref
  HomeData homeData = HomeData(Get.find());
  StatusRequest? statusRequest;
  String? username, email, phone, userId;
  @override
  initialData() async {
    await getDataHome();
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
  List items = [];
  @override
  getDataHome() async {
    statusRequest = StatusRequest.loading;
    update();
    var response = await homeData.getData();
    statusRequest = handle(response);
    if (statusRequest == StatusRequest.success) {
      if (response['status'] == "success") {
        categoriesData.addAll(response['categories']);
        items.addAll(response['items']);
        //  print(categoriesData);
        // print(response);
        print(items);
      } else {
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }

  @override
  gettoItems(categories, categorySelected, catid) {
    Get.toNamed(AppRoutes.itemsscreen, arguments: {
      "categories": categories,
      "category_select": categorySelected,
      "cat_id": catid,
    });
  }
}
