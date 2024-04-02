import 'package:ecommerce_flutter/data/models/items_model/items_model.dart';
import 'package:get/get.dart';

abstract class ProductDetailController extends GetxController {
  initData();
}

class ProductDetailControllerImpl extends ProductDetailController {
  late ItemsModel itemsModel;

  @override
  void onInit() {
    initData();
    super.onInit();
  }

  @override
  initData() {
    itemsModel = Get.arguments['item'];
    print(itemsModel.nameEn);
  }
}
