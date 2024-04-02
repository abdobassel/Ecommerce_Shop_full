import 'package:ecommerce_flutter/core/class/crud.dart';
import 'package:ecommerce_flutter/core/constant/api_links.dart';

class FavData {
  Crud crud;

  FavData(this.crud);

  addFavorite(String itemId, String userID) async {
    var response = await crud.postRequest(
        AppLinksApi.favAdd, {"item_id": itemId, "user_id": userID});

    return response.fold((l) {
      print('left $l');
      return l;
    }, (r) {
      print('right $r');
      return r;
    });
  }

  deleteFavorite(String itemId, String userID) async {
    var response = await crud.postRequest(
        AppLinksApi.favRemove, {"item_id": itemId, "user_id": userID});

    return response.fold((l) {
      print('left $l');
      return l;
    }, (r) {
      print('right $r');
      return r;
    });
  }
}
