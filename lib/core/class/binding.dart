import 'package:ecommerce_flutter/controller/auth/login_controller.dart';
import 'package:ecommerce_flutter/controller/auth/signup_controller.dart';
import 'package:get/get.dart';

class MyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignupControllerImplements(), fenix: true);
    Get.lazyPut(() => LoginControllerImplements(), fenix: true);
    //fenix = true => لا يتم  استدعايها الا مرة واحدة لذلك نستخدم فينكس ترو
  }
}
