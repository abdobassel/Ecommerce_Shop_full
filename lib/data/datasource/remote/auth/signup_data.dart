import 'package:ecommerce_flutter/core/class/crud.dart';
import 'package:ecommerce_flutter/core/constant/api_links.dart';

class SignupData {
  Crud crud;

  SignupData(this.crud);

  signupPostData(
      String username, String password, String email, String phone) async {
    var response = await crud.postRequest(AppLinksApi.signup, {
      'username': username,
      'password': password,
      'email': email,
      'phone': phone,
    });

    return response.fold((l) {
      print('left $l');
      return l;
    }, (r) {
      print('right $r');
      return r;
    });
  }
}
