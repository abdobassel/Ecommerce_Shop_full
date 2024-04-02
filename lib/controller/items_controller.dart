import 'package:dartz/dartz_unsafe.dart';
import 'package:ecommerce_flutter/core/class/enum_statusrequest.dart';
import 'package:ecommerce_flutter/core/constant/asset_images/routes.dart';
import 'package:ecommerce_flutter/core/functions/handle_response.dart';
import 'package:ecommerce_flutter/core/services/services.dart';
import 'package:ecommerce_flutter/data/datasource/remote/items/items_data.dart';
import 'package:ecommerce_flutter/data/models/items_model/items_model.dart';
import 'package:get/get.dart';

abstract class ItemsController extends GetxController {
  initialData();
  changeCat(int catActive, String categoryID);
  getItemsData(String catId);
  goToProductDetails(ItemsModel item);
}

class ItemsControllerImpl extends ItemsController {
  List categories = [];
  int? selectCategory;
  String? catID, userid;
  @override
  void onInit() {
    initialData();
    super.onInit();
  }

  @override
  initialData() {
    categories = Get.arguments['categories'];
    selectCategory = Get.arguments['category_select'];
    catID = Get.arguments['cat_id'];
    userid = Get.arguments['user_id'];
    getItemsData(catID.toString());
  }

  @override
  changeCat(catActive, String? categoryID) {
    selectCategory = catActive;
    catID = categoryID;
    getItemsData(categoryID!);
    update();
  }

  MyServices myServices = Get.find();
  ItemsData itemsData = ItemsData(Get.find());
  StatusRequest? statusRequest;
  List items = [];

  List<ItemsModel> itemsmodel = [];
  @override
  getItemsData(catId) async {
    items.clear();
    itemsmodel.clear();
    statusRequest = StatusRequest.loading;
    update();
    var response = await itemsData.getData(
      catId,
      myServices.sharedPreferences.getString('user_id')!,
    );
    statusRequest = handle(response);
    if (statusRequest == StatusRequest.success) {
      if (response['status'] == "success") {
        items.addAll(response['data']);
        response['data'].forEach((item) {
          itemsmodel.add(ItemsModel.fromJson(item));
        });
      } else {
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }

  @override
  goToProductDetails(item) {
    Get.toNamed(AppRoutes.productdetails, arguments: {
      "item": item,
    });
  }
}
