import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:ecommerce_flutter/core/class/enum_statusrequest.dart';
import 'package:ecommerce_flutter/core/functions/check_internet.dart';
import 'package:http/http.dart' as http;

class Crud {
  Future<Either<StatusRequest, Map>> postRequest(String url, Map data) async {
    try {
      if (await checkInternet() == true) {
        // internet yes
        var response = await http.post(
            Uri.parse(
              url,
            ),
            body: data);
        if (response.statusCode == 200 || response.statusCode == 201) {
          // success connect server database
          Map responseBody = jsonDecode(response.body);
          print('response body from Crud Class');
          print(responseBody);

          return Right(responseBody);
        } else {
          // no server database not sucess
          print('Srever');
          return Left(StatusRequest.serverFailure);
        }
      } else {
        // internet no
        print('no internet');
        return Left(StatusRequest.offlineFailure);
      }
    } catch (_) {
      print('Problem No connetion yaaaaa');
      return const Left(StatusRequest.failure);
    }
  }
}
