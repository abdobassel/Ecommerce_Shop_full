import 'package:get/get.dart';

abstract class ItemsController extends GetxController {
  initialData();
  changeCat(int catActive);
}

class ItemsControllerImpl extends ItemsController {
  List categories = [];
  int? selectCategory;
  @override
  void onInit() {
    initialData();
    super.onInit();
  }

  @override
  initialData() {
    categories = Get.arguments['categories'];
    selectCategory = Get.arguments['category_select'];
  }

  @override
  changeCat(catActive) {
    selectCategory = catActive;
    update();
  }
}
