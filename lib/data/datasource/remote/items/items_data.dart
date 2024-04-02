import 'package:ecommerce_flutter/core/class/crud.dart';
import 'package:ecommerce_flutter/core/constant/api_links.dart';

class ItemsData {
  Crud crud;

  ItemsData(this.crud);

  getData(String id, String userID) async {
    var response = await crud
        .postRequest(AppLinksApi.itemspage, {"id": id, "user_id": userID});

    return response.fold((l) {
      print('left $l');
      return l;
    }, (r) {
      print('right $r');
      return r;
    });
  }
}
