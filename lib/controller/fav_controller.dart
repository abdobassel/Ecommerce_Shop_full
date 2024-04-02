import 'package:ecommerce_flutter/core/class/enum_statusrequest.dart';
import 'package:ecommerce_flutter/core/functions/handle_response.dart';
import 'package:ecommerce_flutter/core/services/services.dart';
import 'package:ecommerce_flutter/data/datasource/remote/favorite/fav_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FavController extends GetxController {
  List data = [];
  MyServices myServices = Get.find();
  StatusRequest? statusRequest;
  FavData favData = FavData(Get.find());
  Map isFav = {};

  setFav(id, val) {
    isFav[id] = val;
    update();
  }

  addFav(String itemID) async {
    statusRequest = StatusRequest.loading;
    update();
    var response = await favData.addFavorite(
        itemID, myServices.sharedPreferences.getString('user_id')!);
    statusRequest = handle(response);
    if (statusRequest == StatusRequest.success) {
      if (response['status'] == "success") {
        // data.addAll(response['data']);
        Get.rawSnackbar(
            title: 'Alert',
            animationDuration: Duration(seconds: 1),
            messageText: const Text(
              textAlign: TextAlign.center,
              'added to favorites',
              style: TextStyle(
                color: Colors.blueGrey,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ));
      } else {
        statusRequest = StatusRequest.failure;
      }
    }
  }

  removeFav(String itemID) async {
    data.clear();
    statusRequest = StatusRequest.loading;
    update();
    var response = await favData.deleteFavorite(
        itemID, myServices.sharedPreferences.getString('user_id')!);
    statusRequest = handle(response);
    if (statusRequest == StatusRequest.success) {
      if (response['status'] == "success") {
        Get.rawSnackbar(
            animationDuration: Duration(seconds: 1),
            borderRadius: 10,
            title: 'Alert',
            messageText: const Text(
              textAlign: TextAlign.center,
              'deleted favorite',
              style: TextStyle(
                color: Colors.blueGrey,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ));
      } else {
        statusRequest = StatusRequest.failure;
      }
    }
  }
}
