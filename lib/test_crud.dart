import 'package:ecommerce_flutter/core/class/crud.dart';
import 'package:ecommerce_flutter/core/class/enum_statusrequest.dart';
import 'package:ecommerce_flutter/core/functions/handle_response.dart';
import 'package:get/get.dart';

class TestData {
  Crud crud;

  TestData(this.crud);

  getdata() async {
    var response = await crud
        .postRequest('http://10.0.2.2/ecommerce_flutter/test.php', {});

    return response.fold((l) {
      print('left $l');
      return l;
    }, (r) {
      //  print('right $r');
      return r;
    });
  }
}

class TestController extends GetxController {
  TestData testData = TestData(Get.find());
  List data = [];
// statusqst or response success
  @override
  void onInit() {
    getDataFromController();
    super.onInit();
  }

  late StatusRequest statusRequest;
  getDataFromController() async {
    statusRequest = StatusRequest.loading;
    var response = await testData.getdata();
    print("form test controller respuns status ==  ${response['status']}");
    statusRequest = handle(response);
    // print(response);
    if (statusRequest == StatusRequest.success) {
      if (response['status'] == "success") {
        data.addAll(response['data']);
      } else {
        statusRequest = StatusRequest.failure;
      }
    }
    print("data : ${data[0]['username']}");
    update();
  }
}
