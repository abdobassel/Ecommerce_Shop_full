import 'package:ecommerce_flutter/core/class/crud.dart';
import 'package:ecommerce_flutter/core/constant/api_links.dart';

class HomeData {
  Crud crud;

  HomeData(this.crud);

  getData() async {
    var response = await crud.postRequest(AppLinksApi.home, {});

    return response.fold((l) {
      print('left $l');
      return l;
    }, (r) {
      print('right $r');
      return r;
    });
  }
}
