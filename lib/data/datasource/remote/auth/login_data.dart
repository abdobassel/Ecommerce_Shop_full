import 'package:ecommerce_flutter/core/class/crud.dart';
import 'package:ecommerce_flutter/core/constant/api_links.dart';

class LoginData {
  Crud crud;

  LoginData(this.crud);

  loginPostData(String email, String password) async {
    var response = await crud.postRequest(AppLinksApi.login, {
      'email': email,
      'password': password,
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
