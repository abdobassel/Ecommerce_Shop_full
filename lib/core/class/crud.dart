import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:ecommerce_flutter/core/class/enum_statusrequest.dart';
import 'package:ecommerce_flutter/core/functions/check_internet.dart';
import 'package:http/http.dart' as http;

class Crud {
  Future<Either<StatusRequest, Map>> postRequest(
      String url, Map<String, dynamic> data) async {
    try {
      if (checkInternet()) {
        // internet yes
        var response = await http.post(Uri.parse(url), body: data);
        if (response.statusCode == 200 || response.statusCode == 201) {
          // success connect server database
          Map<String, dynamic> responseBody = jsonDecode(response.body);
          return right(responseBody);
        } else {
          // no server database not sucess
          return left(StatusRequest.serverFailure);
        }
      } else {
        // internet no
        return left(StatusRequest.offlineFailure);
      }
    } on Exception catch (e) {
      print('Problem No connetion yaaaaa ${e}');
      return left(StatusRequest.failure);
    }
  }
}
